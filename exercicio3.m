clear all;
clc;

  #Jogar o dado: D ~ Unif({1,2,3})

  Nexp =10;

  D = randi([1 3], 1, Nexp);
  X = zeros(1,Nexp); %pre alocando um vetor de zeros para deixar o programa mais rapido
  SX = [0, 1, 2, 3]
  
  %evita-se o uso do for em matlab/octave porque deixa mais lento
  for i = 1 : Nexp 
    %lançar uma moeda honesta D(i) vezes
    moedas = randi([0 1], 1, D(i));
    X(i) = sum(moedas);
  end 
  
  histograma_X = hist(X, SX);
  
  pmf_X_simul = histograma_X / Nexp;
  
  bar(SX,pmf_X_simul) %plotando em formas de barra
  