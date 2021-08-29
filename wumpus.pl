:- dynamic
([
    world_size/1,
    user_gold/1,
    wumpus_position/2,
    gold_position/2,
    collected_gold/2,
    max_gold/1,
    abyss_position/2,
    user_position_x/1,
    user_position_y/1
]).

init :-
    restart_game,
    show_init_tutorial,
    init_world.

restart_game :-
    retractall(world_size(_)),
    retractall(user_gold(_)),
    retractall(wumpus_position(_,_)),
    retractall(gold_position(_,_)),
    retractall(collected_gold(_,_)),
    retractall(max_gold(_)),
    retractall(abyss_position(_,_)),
    retractall(user_position_x(_)),
    retractall(user_position_y(_)).

init_world :-
    assert(world_size(5)),
    assert(user_gold(0)),
    assert(wumpus_position(2,4)),
    assert(gold_position(3,3)),
    assert(gold_position(1,4)),
    assert(abyss_position(4,4)),
    assert(max_gold(200)),
    change_user_position(1,1).

show_init_tutorial :-
    print('Welcome to Mundo de Wumpus/World of Wumpus'), nl, nl,
    print('Your goal is to find gold and return alive to the entrance'), nl, nl,
    print('Your movements are: move_up; move_left; move_down; move_right;').


move_up :-
    print('Move Up'), nl,
    user_position_x(LXC),
    user_position_y(LYC),
    NewPosition is LXC-1,
    walk(NewPosition,LYC).

move_left :-
    print('Move Left'), nl,
    user_position_x(LXE),
    user_position_y(LYE),
    NewPosition is LYE-1,
    walk(LXE,NewPosition).

move_right :-
    print('Move Right'), nl,
    user_position_x(LXD),
    user_position_y(LYD),
    NewPosition is LYD+1,
    walk(LXD,NewPosition).

move_down :-
    print('Move Down'), nl,
    user_position_x(LXB),
    user_position_y(LYB),
    NewPosition is LXB+1,
    walk(NewPosition,LYB).

walk(X,Y):-
    (
        (not(check_position(X,Y)) -> writeln('You hit a wall!'))
        ;
        (
            (check_position(X,Y)) ->
                (change_user_position(X,Y)),
                (
                    (
                        (has_wumpus(X,Y) -> (writeln('Wumpus killed you. :/'), init))
                        ;
                        (has_abyss(X,Y) -> (writeln('You fell into an abyss and died. :/'), init))
                    )
                    ;
                    (
                        check_new_ecosystem(X,Y),
                        check_if_has_gold_near(X,Y),
                        show_gold,
                        check_if_user_won -> (writeln('You Win!!!'), restart_message,init)
                    )
                )
        )
    ).

check_position(X,Y) :-
    (X >= 1),
    (X =< 5),
    (Y >= 1),
    (Y =< 5).

change_user_position(X,Y) :-
    retractall(user_position_x(_)),
    retractall(user_position_y(_)),
    assert(user_position_x(X)),
    assert(user_position_y(Y)),
    write('Your new position: (X:'), write(Y), write(', Y:'), write(X), writeln(').').

has_wumpus(X,Y) :-
    wumpus_position(X,Y).

nhas_wumpus(X,Y) :-
    not(wumpus_position(X,Y)).

has_abyss(X,Y) :-
    abyss_position(X,Y).

nhas_abyss(X,Y) :-
    not(abyss_position(X,Y)).

check_new_ecosystem(X,Y):-
    ZX1 is X+1,
    ZX2 is X-1,
    ZY1 is Y+1,
    ZY2 is Y-1,
    (
        (
            (has_wumpus(X,ZY1); has_wumpus(X,ZY2); has_wumpus(ZX1,Y); has_wumpus(ZX2,Y))
            -> writeln('Did you smell some horrible smell in here!!!!')
        )
        ;
        (
            true
        )

    ),
    (
        (
            (has_abyss(X,ZY1); has_abyss(X,ZY2); has_abyss(ZX1,Y); has_abyss(ZX2,Y))
            -> writeln('You felt a breeze here!!!!')
        )
        ;
        (
            true
        )

    ).

check_if_has_gold_near(X,Y):-
    (
        (
            (gold_position(X,Y), not(collected_gold(X,Y)))->
            (
                writeln('You find gold, go back to starting position and win the game!!!'),
                user_gold(OUR),
                assert(collected_gold(X,Y)),
                ValorOuro is OUR+100,
                retractall(user_gold(_)),
                assert(user_gold(ValorOuro))
            )
        )
        ;
        true
    ).

check_if_user_won:-
    user_position_x(1),
    user_position_y(1),
    user_gold(OUR),
    max_gold(OUR2),
    OUR >= OUR2.

show_gold:-
    user_gold(OUR),
    write('Now you have it '), write(OUR), writeln(' units of gold.').

restart_message:-
    print('Restart the game!!!'),nl,.