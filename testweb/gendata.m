x = data4; 
f = fopen('data4.txt', 'w'); 
for j = 1:size(x,1)
   for k = 1:size(x,2)
       fwrite(f, [num2str(x(j,k)) ' ']); 
   end
   fprintf(f, '\n'); 
end
fclose(f); 