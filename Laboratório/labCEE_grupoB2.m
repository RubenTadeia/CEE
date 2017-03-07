%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Instituto Superior Técnico          % 
%                                              %
%        Controlo Em Espaços de Estados        %
%                                              %
%            Laboratório - Projecto            %
%                                              %
%         Linear State Feedback Control        %
%            of an Inverted Pendulum           %
%                                              %
%                                              %
%                                              %
%                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Pergunta 1
load('fp_lin_matrices_fit3.mat');

valores_proprios_A = eig(A)
% Se os zeros do sistema polinomial (pólos do sistema)
% forem positivos, isto pode significar instabilidade!


%% Pergunta 2

controllability_matrix = ctrb(A,B)

% https://en.wikipedia.org/wiki/Rank_(linear_algebra)
rank_A = rank(controllability_matrix)

dimensao_Matrix_A = size(A)

if (dimensao_Matrix_A(1) == rank_A)
    disp (['O Sistema é controlável! Logo conseguimos projectar ', ...
    'um state feedback controller!'])
else
    disp (['O Sistema não é controlável! Pois a dimensão da ', ...
    'matrix A é diferente do rank da controllability matrix!'])
end

%% Pergunta 3

observability_matrix = obsv(A,C)

rank_observability_matrix = rank(obsv(A,C))

%% Pergunta 4
