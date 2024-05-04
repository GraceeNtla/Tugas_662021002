% TUGAS 2_662021002

% Fungsi 1
% x = 0:0.2:10;
% y = (sin(x) .* cos(x))./ exp(x) + log(2*x + 1);
% xconf = [x x(end:-1:1)];
% yconf = [y+0.15 y(end:-1:1)-0.15];
% figure
% p = fill(xconf, yconf, 'red');
% p.FaceColor = [1 0.8 0.8];
% p.EdgeColor = 'none';
% hold on
% plot(x, y, 'ro')
% hold off
% xlabel('x');
% ylabel('f(x)');
% title('Plot Fungsi (sin(x) .* cos(x)) ./ exp(x) + log(2*x + 1)');
% legend('Interval Kepercayaan', 'Fungsi');
% grid on

% Fungsi 2
% x = -1:0.1:1;
% y = (sin(x) ./ (x.^2 + 1)) + log(2*x + 1);
% plot(x,y,'--bs',...)
%     'LineWidth',1,...
%     'MarkerSize',5,...
%     'MarkerEdgeColor','r',...
%     'MarkerFaceColor',[0.5,0.5,0.5])
% xlabel('sumbu x')
% ylabel('f(x)')
% title('Grafik Fungsi (sin(x) ./ (x.^2 + 1)) + log(2*x + 1)')
% legend('f(x)')
% grid on

% Fungsi 3
% x = -1:0.01:1;
% f = sin(x) + sin(3*x) + sin(5*x);
% g = exp(-x.^2);
% plot(x,f,'go',x,g,'r--')
% xlabel('sumbu x')
% ylabel('f(x)')
% title('Grafik Fungsi f(x) dan g(x)')
% legend('f(x)','g(x)')
% grid on

% Fungsi 4
% x = linspace(0,2,100);
% y = sin(2*pi*x) + 0.5*sin(4*pi*x) + (1/3)*sin(6*pi*x);
% scatter(x, y, 20, 'r', 'filled'); 
% xlabel('x');
% ylabel('f(x)');
% title('Grafik fungsi f(x) = sin(2*pi*x) + 0.5*sin(4*pi*x) + (1/3)*sin(6*pi*x)');
% grid on;

% Fungsi 5 
% x = -1:0.01:1;
% f = sin(x) + sin(3*x) + sin(5*x);
% g = exp(-x.^2);
% figure (1)
% subplot(2,1,1);
% rose(f, 36); 
% title('Rose Plot dari f(x) = sin(x) + sin(3x) + sin(5x)');
% hold on;
% subplot(2,1,2);
% rose(g, 36);
% title('Rose Plot dari g(x) = exp(-x^2)');

% Fungsi 6
% x = linspace(-2, 2, 1000);
% y = sin(2*pi*x) + 0.5*x.^3 - 2*x.^2 + x;
% plot(x, y, 'b-', 'LineWidth', 2);
% xlabel('x');
% ylabel('f(x)');
% title('Plot Fungsi f(x) = sin(2\pi x) + 0.5x^3 - 2x^2 + x');
% grid on

% Fungsi 7
% load('antennaData.mat')
% figure
% polarplot(theta,rho)
% title('Polat Plot Fungsi 7');

% Fungsi 8
% x = 0:0.1:10;
% y = x+2*sin(2*x);
% plot(x,y,'k*');
% xlabel('sumbu x');
% ylabel('f(x)');
% title('Grafik Fungsi x+2*sin(2*x)');
% legend('f(x)');
% grid on

% Fungsi 9
% t = linspace(-10, 10, 1000); 
% x = t + 2*sin(2*t); 
% y = t + 2*cos(5*t); 
% figure;
% plot(x, y); 
% xlabel('x(t)');
% ylabel('y(t)');
% title('Plot Fungsi x(t) and y(t)');
% grid on;

% Fungsi 10
% x = linspace(-1, 5, 100); 
% eq1 = @(x) (x < 0) .* (0 + (x - 0).^2) + (x >= 0) .* (0 - (x - 0).^2);
% eq2 = @(x) (x < 1) .* (1 + (x - 1).^2) + (x >= 1) .* (1 - (x - 1).^2);
% eq3 = @(x) (x < 2) .* (2 + (x - 2).^2) + (x >= 2) .* (2 - (x - 2).^2);
% hold on;
% fplot(eq1, [-1 5]);
% fplot(eq2, [-1 5]);
% fplot(eq3, [-1 5]);
% plot(x, x, '--k');
% axis([-1 5 -4 6]);
% xlabel('x');
% ylabel('y');
% title('Grafik Fungsi (x,a) dan y=x');
% legend('a = -1', 'a = 0', 'a = 1', 'y = x');
% hold off;

% Fungsi 11
% x = -5:0.5:5;
% y = -5:0.5:5;
% [X,Y] = meshgrid(x,y);
% Z = Y.*sin(X)-X.*cos(Y) ;
% figure (1)
% contour3(X,Y,Z)
% xlabel('sumbu x')
% ylabel('sumbu y')
% zlabel ('sumbu z')
% title('Contour Plot 3D Fungsi Y.*sin(X)-X.*cos(Y)')
% figure (2)
% meshc(X,Y,Z)
% xlabel('sumbu x')
% ylabel('sumbu y')
% zlabel ('sumbu z')
% title('Mesh Plot 3D dengan Contour Fungsi Y.*sin(X)-X.*cos(Y)')
% figure (3)
% surfc (X,Y,Z)
% xlabel('sumbu x')
% ylabel('sumbu y')
% zlabel ('sumbu z')
% title('Surface Plot 3D dengan Contour Fungsi Y.*sin(X)-X.*cos(Y)')
% grid on

% Fungsi 12
% x = 0:0.1:10;
% y = 0:0.1:10;
% [X, Y] = meshgrid(x, y);
% Z = 3.^X .* sin(Y);
% [Theta, Phi] = meshgrid(linspace(0, 2*pi, size(X, 2)), linspace(0, pi, size(X, 1)));
% [x_cart, y_cart, z_cart] = sph2cart(Theta, Phi, Z);
% figure (1)
% surf(x_cart, y_cart, z_cart);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Surface Plot 3D dari Fungsi 3^x * sin(y)');
% grid on;
% figure(2)
% meshc(x_cart, y_cart, z_cart);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Mesh Plot 3D dengan Contour dari Fungsi 3^x * sin(y)');
% grid on;
% figure(3)
% contour3(x_cart, y_cart, z_cart);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Contour Plot 3D dari Fungsi 3^x * sin(y)');
% figure(4)
% plot3(x_cart, y_cart, z_cart);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Plot 3D dari Fungsi 3^x * sin(y)');
% grid on

% Fungsi 13
% x = -1:0.1:1;
% y = -1:0.1:1;
% [X, Y] = meshgrid(x, y);
% Z = sin(pi*((X).^2+(Y).^2)).*X/2;
% [x_sphere, y_sphere, z_sphere] = sphere(20); 
% S = surf(x_sphere*0.3, y_sphere*0.3, z_sphere*0.3, 'FaceColor', 'blue');
% hold on;
% surf(X, Y, Z, 'FaceColor', 'yellow', 'EdgeColor', 'red');
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('Plot 3D dan Bola');
% legend('sin(pi*((x)^2 + (y)^2))/2', 'Sphere');
% grid on

% Fungsi 14
% x = -1:0.1:1;
% y = -1:0.1:1;
% Z = sin(sqrt(X.^2 + Y.^2));
% figure 
% contour3(X,Y,Z);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Contour 3D  Fungsi sin(sqrt(X.^2 + Y.^2))');
% grid on

% Fungsi 15
% [x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
% z = sin(sqrt(x.^2 + y.^2))./(sqrt(x.^2 + y.^2));
% figure(1)
% surf(x, y, z);
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('Surf 3D dari fungsi sin(sqrt(x.^2 + y.^2))./(sqrt(x.^2 + y.^2))');
% figure(2)
% meshc(x,y,z);
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('Meshc Plot fungsi sin(sqrt(x.^2 + y.^2))./(sqrt(x.^2 + y.^2))');
% figure(3)
% contour3(x,y,z);
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('Contour 3D Plot fungsi sin(sqrt(x.^2 + y.^2))./(sqrt(x.^2 + y.^2))');
% grid on

% Fungsi 16
% [x, y] = meshgrid(-5:0.1:5, -5:0.1:5);
% z = (sin(x).*cos(y))./(x.^2 + y.^2 + 1);
% figure (1)
% surf(x, y, z);
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('surfc 3D dari fungsi (sin(x).*cos(y))./(x.^2 + y.^2 + 1)');
% figure(2)
% meshc(x,y,z);
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('meshc 3D dari fungsi (sin(x).*cos(y))./(x.^2 + y.^2 + 1)');
% figure (3)
% contour3(x,y,z);
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('contour 3D dari fungsi (sin(x).*cos(y))./(x.^2 + y.^2 + 1)');
% grid on

% Fungsi 17
% x = linspace(-10, 10, 100);
% y = linspace(-10, 10, 100);
% [X, Y] = meshgrid(x, y);
% z = sin(sqrt(X.^2 + Y.^2)); 
% figure
% subplot(2, 1, 1);
% contour3(X, Y, z, 15);
% xlabel('X');
% ylabel('Y');
% zlabel('z');
% title('Plot Contour 3D Fungsi sin(sqrt(x^2 + y^2))');
% xticks(-10:2.5:10);
% yticks(-10:2.5:10);
% zticks(-0.75:0.25:0.75);
% grid on;
% subplot(2, 1, 2);
% surf(X, Y, z);
% xlabel('X');
% ylabel('Y');
% zlabel('z');
% title('Surf Permukaan 3D Fungsi sin(sqrt(x^2 + y^2))');
 
% Fungsi 18
% t = linspace(-pi, pi, 100); 
% x = cos(t); 
% y = sin(t); 
% z = sin(5*t); 
% figure;
% plot3(x, y, z); 
% xlabel('x(t)');
% ylabel('y(t)');
% zlabel('z(t)');
% title('Plot fungsi x(t), y(t), and z(t)');
% grid on;

% Fungsi 19
% x = linspace(-3, 3, 100);
% y = linspace(-3, 3, 100);
% [X, Y] = meshgrid(x, y);
% Z = Y.^2 - X.^2;
% figure;
% surf(X, Y, Z);
% colorbar; 
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('Surf Fungsi y^2 - x^2');

% Fungsi 20
% [x, y] = meshgrid(linspace(-3, 3, 100));
% z = sqrt(max(0, 9 - x.^2 - y.^2));
% surf(x, y, z);
% view(110, 30);
% hold on;
% [x_mesh, y_mesh] = meshgrid(linspace(-3, 3, 50));
% z_mesh = 2.915 - 0.172*(x_mesh - 0.5) - 0.172*(y_mesh - 0.5);
% mesh(x_mesh, y_mesh, z_mesh);
% hidden off;
% plot3(0.5, 0.5, 2.915, 'r.', 'markersize', 20);
% axis([-4 4 -4 4 0 4]);
% xlabel('X');
% ylabel('Y');
% zlabel('Z');
% title('Grafik 3D Fungsi sqrt(max(0, 9 - x.^2 - y.^2))');
% hold off;

% Fungsi 21
% [u,v] = meshgrid(linspace(0, pi/2, 100), linspace(0, 2*pi, 100));
% x1 = sin(u) .* cos(v);
% y1 = sin(u) .* sin(v);
% z1 = cos(u);
% surf(x1, y1, z1);
% hold on;
% [u,v] = meshgrid(linspace(0, pi/2, 100), linspace(0, 7*pi/4, 100));
% x2 = 2 * sin(u) .* cos(v);
% y2 = 2 * sin(u) .* sin(v);
% z2 = 2 * cos(u);
% surf(x2, y2, z2);
% axis([-2.1 2.1 -2.1 2.1 0 2.1]);
% daspect([1 1 1]);
% view(45,25);
% title('Surf 3D Fungsi 21');

% Fungsi 22
% [u, v] = meshgrid(linspace(-1, 1, 100), linspace(0, 2*pi, 100));
% x = sin(pi*u) .* sin(pi*u) .* cos(v);
% y = sin(pi*u) .* sin(pi*u) .* sin(v);
% z = u;
% surf(x, y, z);
% daspect([1 1 1]);
% view(135, 15);
% title('Surf 3D Fungsi 22');

% Fungsi 23
% x = -1 : 1/16 : 1;
% y = -1 : 1/16 : 1;
% [x2, y2] = meshgrid(x, y);
% z = sin(pi * x2) .* sin(pi * y2);
% subplot(1, 2, 1);
% [c, h] = contour(x, y, z, [-1 : 0.125 : 1]);
% clabel(c, h, [-1 : .25 : 1]);
% set(gca, 'DataAspectRatio', [1 1 1]);
% title('Surfc Fungsi sin(\pi x) sin(\pi y)');
% subplot(1, 2, 2);
% surfc(x, y, z);
% view(125, 30);
% xlabel('x');
% ylabel('y');
% zlabel('z');
% set(gca, 'DataAspectRatio', [1 1 1]);
