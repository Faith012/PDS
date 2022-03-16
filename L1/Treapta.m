function [y,n] = Treapta(li,ls,k)
% Treapta unitate in timp discret
% Parametrii de iesire:
% y = u(n-k) (vector linie) pe suportul li:ls
% n = suportul temporal li:ls
% Parametrii de intrare:
% li = limita inferioara a suportului temporal;
% ls = limita superioara a suportului temporal;
% k = indicele din u(n-k)
if (nargin~=3)|(nargout>2)
 error('Verificati argumentele de intrare/iesire!')
end
if li>=ls
 error('Suport temporal invalid!')
end
if (k<li)|(k>ls)
 error('Indice in afara suportului temporal!')
end
L = ls-li+1;
y = zeros(1,L);
y(k-li+1:L) = 1;
n = li:ls;
endfunction
