function M = lmnnDistances(L,xTr,lTr,xTe,lTe,KK,varargin)
pars.train=1;
pars.test=1;
pars.cosigndist=0;
pars.blocksize=700;
pars=extractpars(varargin,pars);

MM=min([lTr lTe]);
if(nargin<6)
KK=1:2:3;
end;

if(length(KK)==1) outputK=ceil(KK/2);KK=1:2:KK;else outputK=1:length(KK);end;

Kn=max(KK);

if(~isempty(L))
 D=length(L);
 xTr=L*xTr(1:D,:);
 if(~isempty(xTe))
   xTe=L*xTe(1:D,:);
 end;
else
 D=size(xTr,1);
end;

[NTr]=size(xTr,2);
[NTe]=size(xTe,2);

Eval=zeros(2,length(KK));
lTr2=zeros(length(KK),NTr);
lTe2=zeros(length(KK),NTe);

iTr=zeros(Kn,NTr);
iTe=zeros(Kn,NTe);


sx1=sum(xTr.^2,1);
sx2=sum(xTe.^2,1);

if(~pars.train) 
    NTr=0;
end;

for i=1:pars.blocksize:max(NTr,NTe)
  if(pars.train && i<=NTr)
   	BTr=min(pars.blocksize-1,NTr-i);  
	% Dtr=distance(xTr,xTr(:,i:i+BTr));
    Dtr = bsxfun(@plus,sx1.',bsxfun(@plus,sx1(i:i+BTr),-2*xTr.'*xTr(:,i:i+BTr)));
%     [~,nn]=mink(Dtr,Kn+1);
%    	nn=nn(2:Kn+1,:);
%    	lTr2(:,i:i+BTr)=LSKnn2(lTr(nn),KK,MM);
%    	iTr(:,i:i+BTr)=nn;
%    	Eval(1,:)=sum((lTr2(:,1:i+BTr)~=repmat(lTr(1:i+BTr),length(KK),1))',1)./(i+BTr);
  end;
  if(pars.test && i<=NTe)
   	BTe=min(pars.blocksize-1,NTe-i);  
  	% Dtr=distance(xTr,xTe(:,i:i+BTe));
    Dtr = bsxfun(@plus,sx1.',bsxfun(@plus,sx2(i:i+BTe),-2*xTr.'*xTe(:,i:i+BTe)));
%    	[~,nn]=mink(Dtr,Kn);
%    	lTe2(:,i:i+BTe)=LSKnn2(reshape(lTr(nn),max(KK),BTe+1),KK,MM);
%    	iTe(:,i:i+BTe)=nn;   
%    	Eval(2,:)=sum((lTe2(:,1:i+BTe)~=repmat(lTe(1:i+BTe),length(KK),1))',1)./(i+BTe);
  end; 
 end;
  M = Dtr;