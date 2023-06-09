% 2

% sin mejora
fib(0,0).
fib(1,1).
fib(N,R):-
    N > 1,
    NA is N - 1,
    NAA is N - 2,
    fib(NA,RA),
    fib(NAA,RAA),
    R is RA + RAA.

% con mejora
fibonacci(0,0,0).
fibonacci(1,1,0).
fibonacci(N,R,RA):-
    N > 1,
    NA is N - 1,
    % NAA is N - 2,
    fibonacci(NA, RA, RAA),
    % fibonacci(NAA,RAA,RAAA),
    R is RA + RAA.

fibonacci(N,R):-
    fibonacci(N,R,_).
