function data = cmcPercent(v)
   sumacols = sum(v);
   percent = 0;
   for i= 1:length(sumacols)
      percent = percent + sumacols(i);
      dataux(i) = percent/length(v);
   end
   data = dataux;
   
        
