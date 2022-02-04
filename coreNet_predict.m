clearvars -except dlnet;
close all;
clc

if ~exist('dlnet','vars')
    load coreNet.mat
end

%% propagation parameters
lambda = 532e-6;
% z = 300;
z = 2000;
dp = 0.008;
Lx = dp*1920;
Ly = dp*1080;

% ASM kernel
B = 1/dp;
du = 1/Lx;
dv = 1/Ly;
[x,y] = meshgrid(-Lx/2:dp:Lx/2-dp,-Ly/2:dp:Ly/2-dp);
h = exp(1i*2*pi*sqrt(x.^2 + y.^2 + z.^2)/lambda);

[u,v] = meshgrid(-B/2:du:B/2-du,-B/2:dv:B/2-dv);
ulim = 1./(sqrt(1+(2*du*z)^2)*lambda*du);
ulim = ceil(ulim/2)*2;
vlim = 1./(sqrt(1+(2*dv*z)^2)*lambda*du);
vlim = ceil(vlim/2)*2;

Hlim = zeros(1080,1920);
H = exp(-1i*2*pi*z*sqrt(1/lambda^2 - u.^2 - v.^2));
Hlim(541-vlim:540+vlim,961-ulim:960+ulim) = H(541-vlim:540+vlim,961-ulim:960+ulim);
H = fftshift(Hlim);

%% Prediction
X = imread('./images/logo/smile_face_1080.png');
% X = rgb2gray(X);
% X = imresize(X,[1080 1920]);
X = single(X);
U = ifft2(fft2(X).*H);
Ur = single(real(U));
Ui = single(imag(U));
Ur = single(abs(U));
Ui = single(angle(U));
dlUr = dlarray(Ur, 'SSCB');
dlUr = gpuArray(dlUr);
dlUi = dlarray(Ui, 'SSCB');
dlUi = gpuArray(dlUi);

[dlZ,dlY] = forward(dlnet,dlUr,dlUi,'Outputs',{'tanh','I'});
Y = gather(extractdata(dlY));
Z = gather(extractdata(dlZ));
figure,imshow(sqrt(Y),[]);
figure,imshow(Z,[]);