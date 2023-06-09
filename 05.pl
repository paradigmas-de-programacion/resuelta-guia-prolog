parcial1(luisa, 6). 
parcial1(pedro, 5).
parcial1(maria, 8).
parcial1(carlos, 1).
parcial1(laura, 3).
parcial1(agos, 8.5).
parcial1(juan, 10).
parcial1(julio, 2).
parcial2(luisa, 7).
parcial2(pedro, 6).
parcial2(maria, 9).
parcial2(carlos, 8).
parcial2(laura, 4).
parcial2(agos, 8.5).
parcial2(juan, 4).
parcial2(julio, 1).

% 1
promocion(A, Nota):-
    parcial1(A, N1),
    parcial2(A, N2),
    N1 >= 7,
    N2 >= 7,
    Nota is (N1 + N2) / 2.

% 2
recursa(A):-
    parcial1(A, N1),
    parcial2(A, N2),
    (N1 < 4; N2 < 4).

% 3
alumno(A):-parcial1(A, _), parcial2(A, _).
cursada(A):-
    alumno(A),
    \+ promocion(A, _),
    \+ recursa(A, _).

% CASI 4 y CASI 5 juntos
nota(Alumno, Nota):-
    parcial1(Alumno, P1),
    parcial2(Alumno, P2),
    Nota is (P1 + P2) / 2.
producto_cartesiano(A, B):-
    nota(_, A), nota(_, B).
seleccion(A, B):-
    producto_cartesiano(A, B),
    A < B.
proyeccion(A):-
    seleccion(A, _).
% alias
todos_menos_max(A):-
    proyeccion(A).
maximo(X):-
    nota(_, X), \+todos_menos_max(X).
