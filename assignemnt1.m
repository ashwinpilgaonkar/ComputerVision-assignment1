I = imread("img.jpg");
imshow(I);

% Get image coordinates
[x y] = ginput(2)

% Get focal length of camera from DepthAI
f = 1.632478e+03;

% distance between camera and chessboard
z0 = 713.68;

% Calculate real world coordinates from image coordinates
x0 = z0 * (x(1) / f)
x1 = z0 * (x(2)/ f)

y0 = z0 * (y(1) / f)
y1 = z0 * (y(2) / f)

distance = sqrt((x1-x0)^2 + (y1 - y0)^2)