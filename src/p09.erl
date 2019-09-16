-module(p09).

-author('Viacheslav Katsuba <v.katsuba.dev@gmail.com>').

-export([run/1]).

%% -------------------------------------------------------------------
%% @doc
%% P09 (**) Pack consecutive duplicates of list elements into sublists.
%%    If a list contains repeated elements they should be placed in separate sublists.
%% > p09:run([a, a, a, a, b, c, c, a, a, d, e, e, e, e]).
%% [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]
%% @end
%% -------------------------------------------------------------------
-spec run(L :: lists:list()) -> Result :: lists:list() | {error, badarg}.

run(L) -> reverse(p09_h(L, []), []).

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P09
%% @end
%% -------------------------------------------------------------------
-spec p09_h(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

p09_h([], Acc)                                      -> Acc;
p09_h([H | [H | _] = T], [AH = [H | _] | AT] = Acc) -> p09_h(T, [[H | AH] | AT]);
p09_h([H | T], [AH = [H | _] | AT] = Acc)           -> p09_h(T, [[H | AH] | AT]);
p09_h([H | T], Acc)                                 -> p09_h(T, [[H] | Acc]);
p09_h(_, _)                                         -> {error, badarg}.

%% -------------------------------------------------------------------
%% @private
%% @doc
%% Helper of P08 - Reverse a list
%% @end
%% -------------------------------------------------------------------
-spec reverse(L :: lists:list(), Acc :: lists:list()) -> Result :: lists:list() | {error, badarg}.

reverse([], Acc)      -> Acc;
reverse([H | T], Acc) -> reverse(T, [H | Acc]);
reverse(_, _)         -> {error, badarg}.
