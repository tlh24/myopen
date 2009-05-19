x = data2; 
f = fopen('data2.txt', 'w'); 
for j = 1:5000
   for k = 1:4
       fwrite(f, [num2str(x(j,k)) ' ']); 
   end
   fprintf(f, '\n'); 
end
fclose(f); 