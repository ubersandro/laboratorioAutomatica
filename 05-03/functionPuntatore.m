%function con puntatore 
%definite usate il simbolo puntatore (MATLAB) @
%sia NEL FILE che nella COMMAND WINDOW
clear; clc; close all; 
punt=@(x,y)x+y*exp(1)
%non c'è bisogno del handle quando la passo ad un'altra funzione che
%accetta funzioni come fzero (calcola lo zero di una funzione) 
%molto utili con le eq differenziali --> definite come x'=f(x) --> funzione
%generatrice
%risolvi_eq(@funzioneGeneratrice) 

%mi permette di passare la funzione come parametro ad un'altra funzione 