% Base de conocimientos del enunciado
disponibilidad_equipo(marketing, 9).
disponibilidad_equipo(marketing, 10).
disponibilidad_equipo(desarrollo, 10).
disponibilidad_equipo(desarrollo, 11).
disponibilidad_equipo(ventas, 9).
disponibilidad_equipo(ventas, 11).

disponibilidad_cliente(google, 9).
disponibilidad_cliente(google, 10).
disponibilidad_cliente(google, 11).
disponibilidad_cliente(apple, 10).
disponibilidad_cliente(apple, 11).
disponibilidad_cliente(microsoft, 9).
disponibilidad_cliente(microsoft, 11).

% 1
disponibilidad_reunion(Equipo, Cliente, Hora):-
    disponibilidad_equipo(Equipo, Hora),
    disponibilidad_cliente(Cliente, Hora).

% Base de conocimientos adicional del enunciado
reunion_pactada(ventas, google, 11).
reunion_pactada(marketing, apple, 10).

% 2: Posible solución utilizando la regla ya creada y restas de conjuntos
disponibilidad_reunion_pactadas(Equipo, Cliente, Hora):-
    disponibilidad_reunion(Equipo, Cliente, Hora),
    \+reunion_pactada(Equipo, _, Hora),
    \+reunion_pactada(_, Cliente, Hora).
