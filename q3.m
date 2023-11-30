img = imread('ee3tp3picture2023.jpg');

img_red = img(:,:,1); %contains only the red component
img_green = img(:,:,2); %contains only the green component
img_blue = img(:,:,3); %contains only the blue component

reconstructed_img = cat(3, 6*img_red, 5*img_green, img_blue);

imshow(reconstructed_img);
imwrite(reconstructed_img,'my_fixed_image.jpg'); %creates a new .jpg file