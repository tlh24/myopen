x = data4; 
f = fopen('data4.txt', 'w');
r = size(x,1); 
c = size(x,2); 
fprintf(f,['rows:' num2str(r) ' cols:' num2str(c)]); 
for j = 1:r
   for k = 1:c
       fwrite(f, [num2str(x(j,k)) ' ']); 
   end
   fprintf(f, '\n'); 
end
fclose(f); 