field1 = 'train';
field2 = 'valid';
field3 = 'test';
train = [1:158 633:790];
valid = [159:316 791:948];
test = [317:632 949:1264];
split = struct(field1,train,field2,valid,field3,test);
clear field1 field2 field3 train valid test