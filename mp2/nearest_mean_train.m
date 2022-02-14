function return_value = nearest_mean_train(a)

load uspsDigits.mat;

counter = 1;

for i = 1:7291
    if(trainAns(i) == a)
        A(counter,:) = reshape(trainDigits(:,:,i),1,256);
        counter = counter+1;
    end
end
   

return_value = mean(A);

end

