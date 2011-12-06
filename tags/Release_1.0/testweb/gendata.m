x = Data; 
f = fopen('datafull.txt', 'w');
r = size(x,1); 
c = size(x,2); 
span = (max(x) - min(x));
scale = (1./span)*1000;
fprintf(f,['rows:' num2str(r) ' cols:' num2str(c) '\n']); 
for j = 1:r
   for k = 1:c
       fwrite(f, [num2str(x(j,k)) ' ']); 
   end
   fprintf(f, '\n'); 
end
fclose(f); 

f = fopen('datafull.bin', 'w');
r = size(x,1);
c = size(x,2) ;
fwrite(f,r,'integer*4');
fwrite(f,c,'integer*4');
fwrite(f,x,'integer*2'); 
fclose(f); 
