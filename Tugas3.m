%% TUGAS 3_662021002

%% SPL GAUSS SEIDEL
% function [x, iter] = gauss(A, b, x0, tol, max_iter)
% n = length(b);  % panjang matriks
% x = x0; % inisialisasi nilai awal
% iter = 0; % inisialisasi iterasi awal
% error = inf; % set error sebagai di awal perhitungan
% 
% % input
% % A = Matriks koefisien
% % b = Matriks Hasil
% % x0 = nilai awal = 0
% % tol = batas toleransi
% % max_iter = maksimum iterasi
% 
% % output
% % nilai x
% % iterasi
% 
%     while error > tol && iter < max_iter
%         x_old = x;  
%         
%         for i = 1:n
%             sigma = 0;
%             for j = 1:i-1
%                 sigma = sigma + A(i, j) * x(j);
%             end
%             for j = i+1:n
%                 sigma = sigma + A(i, j) * x_old(j);
%             end
%             x(i) = (b(i) - sigma) / A(i, i); % Update nilai x(i)
%         end
%         error = norm(x - x_old);
%         iter = iter + 1;
%     end
%     if iter == max_iter && error > tol
%         disp('Iterasi maksimum tercapai.');
%     else
%         disp(['Metode Gauss-Seidel berakhir di iterasi ke-', num2str(iter)]);
%     end
% end


%% SPL SOR
% function [x, iter] = SOR(A, b, x0, tol, max_iter, omega)
% n = length(b);  % panjang matriks
% x = x0; % inisialisasi nilai awal
% iter = 0; % inisialisasi iterasi awal
% error = inf; % set error sebagai di awal perhitungan
% 
% % input
% % A = Matriks koefisien
% % b = Matriks Hasil
% % x0 = nilai awal = 0
% % tol = batas toleransi
% % max_iter = maksimum iterasi
% % omega = faktor skala
% 
% % output
% % nilai x
% % iterasi
% 
%     while error > tol && iter < max_iter
%         x_old = x;  
%     
%         for i = 1:n
%             sigma = 0;
%             for j = 1:i-1
%                 sigma = sigma + A(i, j) * x(j);
%             end
%             for j = i+1:n
%                 sigma = sigma + A(i, j) * x_old(j);
%             end
%            x(i) = (1 - omega) * x_old(i)+(omega / A(i, i))*(b(i) - sigma); 
%         end
%         error = norm(x - x_old);
%         iter = iter + 1;
%     end
%     if iter == max_iter && error > tol
%         disp('Iterasi maksimum tercapai.');
%     else
%         disp(['Metode SOR berakhir di iterasi ke-', num2str(iter)]);
%     end
% end


%% INTEGRAL NUMERIK TRAPESIUM
% function hasil_integral = integral_trapesium(fungsi, batas_bawah, batas_atas, jumlah_trapesium)
%     h = (batas_atas - batas_bawah) / jumlah_trapesium; 
%     x = linspace(batas_bawah, batas_atas, jumlah_trapesium + 1);
%     y = fungsi(x);
%     hasil_integral = (h / 2) * (y(1) + 2 * sum(y(2:end-1)) + y(end));
% end


%% TURUNAN NUMERIK BEDA PUSAT
% function turunan = beda_pusat(f, x, h)
% 
% % input
%     % f = fungsi yang ingin diturunkan
%     % x = titik yang ingin dihitung turunannya
%     % h = besar langkah
%     
%     turunan = (f(x + h) - f(x - h)) / (2 * h);
% end
