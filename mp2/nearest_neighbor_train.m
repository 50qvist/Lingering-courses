function return_value = nearest_neighbor_train (a)

load uspsDigits.mat;
    ima(trainDigits(:,:,a))
    A(:,:,1) = reshape (trainDigits(:,:,a),256,1);
    
    for i = 1:7291
       B(:,:,i) = norm(A(:,:,1) - reshape(trainDigits(:,:,i),256,1)); 
    end
        %B
    
    
    for i2 = 1:7291
        C(:,:,i2) = norm(A(:,:,1) - reshape(trainDigits(:,:,i2),256,1));
        if(C(:,:,i2) == min(B))
            return_value = trainAns(i2,:)
 %           ima(trainDigits(:,:,i2))
            break;
        end
    end
end

