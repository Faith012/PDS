function [y,n] = impuls(li,ls,k)
% Impulsul unitate (Dirac) in timp discret
% Parametrii de iesire:
% y = delta(n-k) (vector linie) pe suportul li:ls
% n = suportul temporal li:ls (vector linie)
% Parametrii de intrare:
% li = limita inferioara a suportului temporal;
% ls = limita superioara a suportului temporal;
% k = indicele aferent delta(n-k)
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
y(k-li+1) = 1;
n = li:ls;
endfunction
