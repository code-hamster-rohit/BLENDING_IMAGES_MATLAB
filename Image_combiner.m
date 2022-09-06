a=imread(input("ENTER THE NAME OF FILE OF MAIN IMAGE : "));
b=imread(input("ENTER THE NAME OF FILE OF BORDER IMAGE TO BE PUT ON MAIN IMAGE : "));
%getting 1st band of flower and lenna
a1=a(:,:,1);
b1=b(:,:,1);
%getting 2nd band of flower and lenna
a2=a(:,:,2);
b2=b(:,:,2);
%getting 3rd band of flower and lenna
a3=a(:,:,3);
b3=b(:,:,3);
%since the size of both the images are same and are 512 x 512
%therefore there should not be any problem in combining both of them 
%for 1st band
for i = 1:512 %to get the number of row one by one
    for j = 1:512 %to get number of coloumn one by one
        if b1(i,j)>=244 %clearing more unwanted area to obtain sharp image
            b1(i,j)=255;
        end
    end
end
for i = 1:512
    for j = 1:512
        if b1(i,j)==255 %checking for replacement of lenna to flower
            b1(i,j)=a1(i,j); %replacing flower with lenna
        end
    end
end
%for 2nd band
for i = 1:512 %to get the number of row one by one
    for j = 1:512 %to get number of coloumn one by one
        if b2(i,j)>=245 %clearing more unwanted area to obtain sharp image
            b2(i,j)=255;
        end
    end
end
for i = 1:512
    for j = 1:512
        if b2(i,j)==255 %checking for replacement of lenna to flower
            b2(i,j)=a2(i,j); %replacing flower with lenna
        end
    end
end
%for 3rd band
for i = 1:512 %to get the number of row one by one
    for j = 1:512 %to get number of coloumn one by one
        if b3(i,j)>=248 %clearing more unwanted area to obtain sharp image
            b3(i,j)=255;
        end
    end
end
for i = 1:512
    for j = 1:512
        if b3(i,j)==255 %checking for replacement of lenna to flower
            b3(i,j)=a3(i,j); %replacing flower with lenna
        end
    end
end
%concatenating all modified bands in one new image 
a_final=cat(3,b1,b2,b3); 
imshow(a_final) %showing image of flower
