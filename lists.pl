my_member(X, [X|_]).            % Base case
my_member(X, [_|T]) :-          % Recursive case
    my_member(X, T).

my_length([], 0).               % Base case
my_length([_|T], N):-           % Recursive case
    my_length(T, M),
    N is M + 1.

my_append([], L, L).            % Base case
my_append([H|T], L, [H|R]) :-   % Recursive case
    my_append(T, L, R).

my_reverse([], []).             % Base case
my_reverse([H|T], L):-          % Recursive case
    my_reverse(T, R),
    my_append(R, [H], L).
    