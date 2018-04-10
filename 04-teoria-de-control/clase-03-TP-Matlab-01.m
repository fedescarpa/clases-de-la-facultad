% Vectores
a = [1 2 3 4 5 6 9 8 7]
b = a + 2

t = 0:2:20

c = a + b
d = b - a

% Matrices
Matriz = [
  1 2 3
  4 5 6
  7 8 9
]

matriz = [1, 2, 3; 4, 5, 6; 7, 8, 9]

M1 = Matriz + matriz
M2 = Matriz * matriz
M3 = Matriz - matriz

% Funciones
sin(pi/4)
cos(pi/4)
tan(pi/4)

% Plot
t = 0:0.25:7;
y = sin(t);
plot(t,y);


%==============%
% Actividad 01 %
%==============%

% Escala Lineal %
x = 0:1:7;
y = e.^x;
plot(x, y);

% Escala SemiLogaritmica %
x1 = 0:1:10;
y1 = e.^x1;
semilogx(x1, y1);

% Se guardan las lineas 44, 45 y 46 en un archivo "exponencial.m" en mi Desktop
% para probar la actividad 2


%==============%
% Actividad 02 %
%==============%

% run '/home/federico/Desktop/exponencial'


% Valores Complejos %

c = 30 + 20j
modulo = abs(c)
argumento = angle(c)
grados = argumento * 180 / pi
imag(c)
real(c)


% Polinomios %

% s^3 - 15s^2 - 2s^1 + 9s^0
p1 = [1 3 -15 -2 9]

% s^4 + 1
p2 = [1 0 0 0 1]

z = polyval(p2, 2)


%==============%
% Actividad 03 %
%==============%

p3 = [3 0 2 -162 0 12]
resP2 = polyval(p3, -3)

% Raices %

roots(p1)


%==============%
% Actividad 04 %
%==============%

roots(p3)


% Obtener polinomio a partir de sus raíces %

poly([-1 2 3])


% Funcion de transferencia %

% num = [a b];
% den = [c d e];
%
% Polos, ceros y ganancia %
%
% [z, p, k] = tf2zp(num, den)
%
%    z = cero de la función
%    p = polos de la función
%    k = ganancia de la función
%
% [num, den] = zp2tf(z, p, k);
%
% G = zpk(z, p, k);


%==============%
% Actividad 05 %
%==============%

numerador   = [5, 3, 20]
denominador = [1, 0, 1, 4, 12]

[zeros, polos, ampllificacion] = tf2zp(numerador, denominador)

z = [0, 1]
p = [1, 2, 3, 4]
a = 8

[num, den] = zp2tf(z, p, a)

G = zpk(z, p, a)

g = tf(num, den)


% Desarrollo en Fracciones simples %

[res, p] = residue(num, den);

%==============%
% Actividad 06 %
%==============%

num = [0, 1, 2]
den = [4, 5, 6, 8]

[res, p] = residue(num, den)


%==================%
% Actividad 07 - 1 %
%==================%

res = [-6, -4, 3, 2]
%       ^   ^  ^  ^
%       |   |  |  |
%       v   v  v  v
p   = [-3, -2, 1, 0]

k = 2   % Porque es el valor de res correspondiente al polo 0

[num, den] = residue(res, p, k)


% Sistemas de Primer Orden %


%==================%
% Actividad 07 - 2 %
%==================%

tau = 1:0.4:4
hold on;
for tau
	num = [1];
	den = [tau, 1];
	sys = tf(num, den);
	step(sys);
	grid;
end

% Conclusión:
% Cuanto más grande es TAU le lleva mas tiempo llegar al estado estable


%==============%
% Actividad 08 %
%==============%

kc = 1:10
hold on;
for kc
	num = [kc];
	den = [0.5, kc + 1];
	sys = tf(num, den);
	step(sys);
	grid;
end

% Conclusión:
% El error disminuye si la amplitud es mas alta debido a que
% llega al estado estable mas rapido


% Función transferencia a lazo cerrado - Transferencia Global %

numg1 = [0.4]
deng1 = [1];

numg2 = [100];
deng2 = [1 2 0];

numh2 = [1 0];
denh2 = [1 20];

[numvc, denvc] = feedback(numg2, deng2, numh2, denh2, -1);
[numec, denec] = series(numg1, deng1, numvc, denvc);
[num, den] = cloop(numec, denec, -1);

%==============%
% Actividad 09 %
%==============%

G = tf(num, den)


%==============%
% Actividad 10 %
%==============%

num = [4]
den1 = [1, 0.8, 4]
den2 = [1, 1.6, 4]

impulse(tf(num, den1))
hold on;
impulse(tf(num, den2))

% Conclusion:
% Si la "s" es mas chica los cambios son mas abruptos
% pero mas rapido se estabiliza el sistema


%==============%
% Actividad 11 %
%==============%

s = 0 : 0.25 : 1.2
hold on;
for
	num = [4];
	den = [1*s^2, 0.8*s, 4];
	sys = tf(num,den);
	impulse(sys);
	grid;
end
