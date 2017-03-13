%% C_(Numero,Color,Pais,Bebida,Mascota,Fuma).
%% Este predicado intenta coincidir pares de vecinos
%% en el mismo orden en que los recibe (es necesario).
%% Es recursivo, se llama a sí mismo hasta que encuentra
%% una coincidencia.
vecino_izq([H|[Ht|T]],Vecino_Izq,Vecino_Der):-
  ( H = Vecino_Izq, Ht = Vecino_Der );
vecino_izq([Ht|T],Vecino_Izq,Vecino_Der).
%% Para los datos en que no especifica si el vecino es
%% izquierdo o derecho, este predicado prueba con ambos.
vecino([H|T],Pista_1,Pista_2):-
vecino_izq([H|T],Pista_1,Pista_2);
vecino_izq([H|T],Pista_2,Pista_1) .
%% Este procedimiento coincide cada casa con su contenido.
%% Sin embargo la primera puede no ser la correcta. En ese entonces,
%% fallará más adelante, y comienza a retroceder buscando otras
%% alternativas. Al final, dará con la correcta.
%% Se puede ejecutar desde el prolog así, obteniendo algo claro:
%% ?- villa([Casa1,Casa2,Casa3,Casa4,Casa5]).
%% O bien:
%% ?- villa(X).
%% pero se verá más enredado.
villa(Villa):-
Villa = [ [1,_,noruego,_,_,_], [2,azul,_,_,_,_], [3,_,_,leche,_,_], [4,_,_,_,_,_], [5,_,_,_,_,_] ],
member([_,roja,ingles,_,_,_],Villa),
member([_,_,sueco,_,perro,_],Villa),
member([_,_,danes,te,_,_],Villa),
vecino_izq(Villa,[_,verde,_,_,_,_],[_,blanca,_,_,_,_]),
member([_,verde,_,cafe,_,_],Villa),
member([_,_,_,_,pajaros,pallmall],Villa),
member([_,amarilla,_,_,_,dunhill],Villa),
vecino(Villa,[_,_,_,_,_,blend],[_,_,_,_,gatos,_]),
vecino(Villa,[_,_,_,_,caballos,_],[_,_,_,_,_,dunhill]),
member([_,_,_,cerveza,_,bluemaster],Villa),
member([_,_,aleman,_,_,prince],Villa),
vecino(Villa,[_,_,_,_,_,blend],[_,_,_,agua,_,_]),
member([_,_,_,_,peces,_],Villa).
%% Finalmente, para responder simplemente al problema de
%% quién tiene los peces, se ejecuta en prolog el comando:
%% ?- mascota(peces,Quien).
mascota(Mascota,Persona):-
villa(Villa),
member([_,_,Persona,_,Mascota,_],Villa).
/****************************************************************************/
