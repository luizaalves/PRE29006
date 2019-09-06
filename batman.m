clear all;
clc;

#U~Unif(0, 1)
#descobrir a cara da funçao atraves da simulaçao de monte carlo

Nexp = 1e6; %numero de experimentos, quanto maior o nexp, mais perto da resposta teorica

X = rand(1, Nexp); #variavel aleatoria x uniforme continua

xbins = -0.1 : 0.01: 1.1;

histograma_X = hist(X, xbins);

pdf_X_simul = histograma_X / trapz(xbins, histograma_X);

Y = X.^2;

ybins = -0.1 : 0.01: 1.1;

histograma_Y = hist(Y, ybins);

pdf_Y_simul = histograma_Y / trapz(ybins, histograma_Y);

plot(xbins, pdf_X_simul, 'LineWidth',4)
hold on;
plot(ybins, pdf_Y_simul, 'LineWidth',4,'r')

mean(X)
mean(Y)