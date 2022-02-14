function return_value = nearest_neighbor_test (a)

load uspsDigits.mat;

    A(:,:,1) = reshape (trainDigits(:,:,a),256,1);
    
    for i = 1:2007
       B(:,:,i) = norm(A(:,:,1) - reshape(testDigits(:,:,i),256,1));
    end
        %B
    
    for i2 = 1:2007
        C(:,:,i2) = norm(A(:,:,1) - reshape(testDigits(:,:,i2),256,1));
        if(C(:,:,i2) == min(B))
            return_value = testAns(i2,:);
           % ima(testDigits(:,:,i2))
            break;
        end
    end
end



