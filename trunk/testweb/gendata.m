x = randn(5000,4); 
f = fopen('data.txt', 'w'); 
for j = 1:5000
   for k = 1:4
       fwrite(f, [num2str(x(j,k)) ' ']); 
   end
   fwrite(f, '\n'); 
end
fclose(f); 