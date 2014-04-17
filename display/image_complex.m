function x_rgb = image_complex( x )	
	x = x/max(abs(x(:)));
	x_hsv(:,:,1) = (pi + angle(x))/(2*pi);
	x_hsv(:,:,2) = abs(x);
	x_hsv(:,:,3) = 1;
	x_rgb = hsv2rgb(x_hsv);
end

