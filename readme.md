## Running <a href="https://rachacuca.com.br/teste-de-einstein">Teste de QI de Einstein</a>:

- install `swi-prolog` and run `swipl -l eistein_testing.pl` on terminal and run `resolve.`, output:

```bash
pedrosampaio@MacBook-Pro-de-Pedro prolog % swipl -l eistein_testing.pl
Warning: /Users/pedrosampaio/Documents/study/ifma/prolog/eistein_testing.pl:2:
Warning:    set_prolog_stack/2: limit(Size) sets the combined limit.
Warning:    See https://www.swi-prolog.org/changes/stack-limit.html
Warning: /Users/pedrosampaio/Documents/study/ifma/prolog/eistein_testing.pl:3:
Warning:    set_prolog_stack/2: limit(Size) sets the combined limit.
Warning:    See https://www.swi-prolog.org/changes/stack-limit.html
Welcome to SWI-Prolog (threaded, 64 bits, version 8.2.4)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- resolve
|    .

'1ª House:'
'Color:'yellow
'nationality:'norwegian
'Beer:'water
'Cigarette:'dunhill
'Animal:'cat

'2ª House:'
'Color:'blue
'nationality:'danish
'Beer:'cha
'Cigarette:'blends
'Animal:'horse

'3ª House:'
'Color:'red
'nationality:'englishman
'Beer:'milk
'Cigarette:'pallmall
'Animal:'bird

'4ª House:'
'Color:'green
'nationality:'german
'Beer:'coffee
'Cigarette:'prince
'Animal:'_35656

'5ª House:'
'Color:'white
'nationality:'swedish
'Beer:'beer
'Cigarette:'bluemaster
'Animal:\t'dog

```

## Running <a href="https://www.ime.usp.br/~leliane/IAcurso2000/Wumpus.html">Mundo do Wumpus</a>:

- install `swi-prolog` and run `swipl -l wumpus.pl` on terminal and run `init.`(init game), output:

```bash
pedrosampaio@MacBook-Pro-de-Pedro prolog % swipl -l wumpus.pl
ERROR: /Users/pedrosampaio/Documents/study/ifma/prolog/wumpus.pl:180:35: Syntax error: Unbalanced operator
Welcome to SWI-Prolog (threaded, 64 bits, version 8.2.4)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- init.
'Welcome to Mundo de Wumpus/World of Wumpus'

'Your goal is to find gold and return alive to the entrance'

'Your movements are: move_up; move_left; move_down; move_right;'Your new position: (X:1, Y:1).
true.

```

- The moves are:

1. `move_up.`
2. `move_down.`
3. `move_left.`
4. `move_right.`

- How win the game:

```bash
pedrosampaio@MacBook-Pro-de-Pedro prolog % swipl -l wumpus.pl
ERROR: /Users/pedrosampaio/Documents/study/ifma/prolog/wumpus.pl:180:35: Syntax error: Unbalanced operator
Welcome to SWI-Prolog (threaded, 64 bits, version 8.2.4)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

pedrosampaio@MacBook-Pro-de-Pedro prolog % swipl -l wumpus.pl
ERROR: /Users/pedrosampaio/Documents/study/ifma/prolog/wumpus.pl:180:35: Syntax error: Unbalanced operator
Welcome to SWI-Prolog (threaded, 64 bits, version 8.2.4)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- init.
'Welcome to Mundo de Wumpus/World of Wumpus'

'Your goal is to find gold and return alive to the entrance'

'Your movements are: move_up; move_left; move_down; move_right;'Your new position: (X:1, Y:1).
true.

?- move_right.
'Move Right'
Your new position: (X:2, Y:1).
Now you have it 0 units of gold.
false.

?- move_right.
'Move Right'
Your new position: (X:3, Y:1).
Now you have it 0 units of gold.
false.

?- move_right.
'Move Right'
Your new position: (X:4, Y:1).
Did you smell some horrible smell in here!!!!
You find gold, go back to starting position and win the game!!!
Now you have it 100 units of gold.
false.

?- move_right.
'Move Right'
Your new position: (X:5, Y:1).
Now you have it 100 units of gold.
false.

?- move_right.
'Move Right'
You hit a wall!
true.

?- move_down.
'Move Down'
Your new position: (X:5, Y:2).
Did you smell some horrible smell in here!!!!
Now you have it 100 units of gold.
false.

?- move_down.
'Move Down'
Your new position: (X:5, Y:3).
Now you have it 100 units of gold.
false.

?- move_left.
'Move Left'
Your new position: (X:4, Y:3).
Did you smell some horrible smell in here!!!!
You felt a breeze here!!!!
Now you have it 100 units of gold.
false.

?- move_left.
'Move Left'
Your new position: (X:3, Y:3).
You find gold, go back to starting position and win the game!!!
Now you have it 200 units of gold.
false.

?- move_up.
'Move Up'
Your new position: (X:3, Y:2).
Did you smell some horrible smell in here!!!!
Now you have it 200 units of gold.
false.

?- move_up.
'Move Up'
Your new position: (X:3, Y:1).
Now you have it 200 units of gold.
false.

?- move_up.
'Move Up'
You hit a wall!
true.

?- move_left.
'Move Left'
Your new position: (X:2, Y:1).
Now you have it 200 units of gold.
false.

?- move_left.
'Move Left'
Your new position: (X:1, Y:1).
Now you have it 200 units of gold.
You Win!!!

```

- How to lose swallowed by wumpus:

```bash
pedrosampaio@MacBook-Pro-de-Pedro prolog % swipl -l wumpus.pl
ERROR: /Users/pedrosampaio/Documents/study/ifma/prolog/wumpus.pl:180:35: Syntax error: Unbalanced operator
Welcome to SWI-Prolog (threaded, 64 bits, version 8.2.4)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- init.
'Welcome to Mundo de Wumpus/World of Wumpus'

'Your goal is to find gold and return alive to the entrance'

'Your movements are: move_up; move_left; move_down; move_right;'Your new position: (X:1, Y:1).
true.

?- move_right.
'Move Right'
Your new position: (X:2, Y:1).
Now you have it 0 units of gold.
false.

?- move_right.
'Move Right'
Your new position: (X:3, Y:1).
Now you have it 0 units of gold.
false.

?- move_right.
'Move Right'
Your new position: (X:4, Y:1).
Did you smell some horrible smell in here!!!!
You find gold, go back to starting position and win the game!!!
Now you have it 100 units of gold.
false.

?- move_down.
'Move Down'
Your new position: (X:4, Y:2).
Wumpus killed you. :/
'Welcome to Mundo de Wumpus/World of Wumpus'

'Your goal is to find gold and return alive to the entrance'

'Your movements are: move_up; move_left; move_down; move_right;'Your new position: (X:1, Y:1).
```

- How to lose falling into the abyss

```bash
pedrosampaio@MacBook-Pro-de-Pedro prolog % swipl -l wumpus.pl
ERROR: /Users/pedrosampaio/Documents/study/ifma/prolog/wumpus.pl:180:35: Syntax error: Unbalanced operator
Welcome to SWI-Prolog (threaded, 64 bits, version 8.2.4)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- init.
'Welcome to Mundo de Wumpus/World of Wumpus'

'Your goal is to find gold and return alive to the entrance'

'Your movements are: move_up; move_left; move_down; move_right;'Your new position: (X:1, Y:1).
true.

?- move_down.
'Move Down'
Your new position: (X:1, Y:2).
Now you have it 0 units of gold.
false.

?- move_down.
'Move Down'
Your new position: (X:1, Y:3).
Now you have it 0 units of gold.
false.

?- move_down.
'Move Down'
Your new position: (X:1, Y:4).
Now you have it 0 units of gold.
false.

?- move_right
|    .
'Move Right'
Your new position: (X:2, Y:4).
Now you have it 0 units of gold.
false.

?- move_right.
'Move Right'
Your new position: (X:3, Y:4).
You felt a breeze here!!!!
Now you have it 0 units of gold.
false.

?- move_right.
'Move Right'
Your new position: (X:4, Y:4).
You fell into an abyss and died. :/
'Welcome to Mundo de Wumpus/World of Wumpus'

'Your goal is to find gold and return alive to the entrance'

'Your movements are: move_up; move_left; move_down; move_right;'Your new position: (X:1, Y:1).

```
