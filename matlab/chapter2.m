clc
clear

[x,y,z]=meshgrid(-1:0.2:1);
[x0,y0,z0]=meshgrid(-1:0.05:1);
V = exp(x.^2.*z+y.^2.*x+z.^2.*y).*cos(x.^2.*y.*z+z.^2.*y.*x);
V0 =exp(x0.^2.*z0+y0.^2.*x0+z0.^2.*y0).*cos(x0.^2.*y0.*z0+z0.^2.*y0.*x0);
V1 =interp3(x,y,z,V,x0,y0,z0, 'spline');
err=V1-V0; max_err= max(err(:))

slice(x0,y0,z0,V1,[-0.5,0.3, 0.9],[0.6,-0.1],[-1,-0.5,0.5,1])