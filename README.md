# gamc

rpg like game made using godot to make practicing amc problems more fun

# mirrors

get the code in one of these places:

- [Github](https://github.com/bkf2020/gamc)
- [Gitlab](https://gitlab.com/bkf2020/gamc)
- [Codeberg](https://codeberg.org/bkf2020/gamc)

# note that this readme is in alpha! the game is being developed and ascepts will change

# overview of the game

## Attributes

Each character has the following attributes:

- Strength
- Intelligence
- Healing
- Speed
- Luck

## The game has 2 parts: training and mini-games

### Training

In training, you are given 5 problems with 2 hours to solve them all.
You can solve as many problems as you can. Then, you can look at the
solution, after the two hours. Of course, you can cheat and search up
the problems, but don't do that!

After a training, you will get points, which you can place in the various
attributes of your character. (Like in a RPG game). Solving more problems
means more points.

Each attribute can only have 5 points max. If you have points you don't use,
they will be available the next time you assign values to the attributes.
**Each time you finish a training, all attributes are set to 0.**

If you can't solve any problem in a training, you will have to train again
until you get points to battle.

### Mini-games
#### Battling

In a battle, you will fight a boss. You can choose various attacks
to use on the boss, and the boss will attack back. You will be able to see
the attributes the boss has.

Some moves can heal you, some moves will attack the boss. Some moves might
be dodging attacks from the boss (if possible). Some moves might involve
you loosing health, if you are unlukcy. Other moves will be based on luck.
More information will be added on possible moves.

If you have zero or less health after a move from the boss (or you), then you will loose.
If the boss has zero or less health after a move, then you will win.

If you win, you will gain points that can be used after furture trainings to
increase the values of attributes.

#### Contest

Here you do a contest with 2 problems with the same difficulty as the training. You will not
get a verdict on whether your answer is correct until time is up or you submit everything.
You will have 30 minutes.

There will be a leaderboard, and depending on your place you may get some points
for to increase the values of attributes.

#### Race

In a race, you race against a rabbit. Both of you are on the same track. When you race
you can get powerups to go faster and there will be obstacles in the way. If you hit an
obstacle, you will be pushed back. If you hit the rabbit, you will be pushed back.

# project goals
- [ ] finish building an interface to allow players to train
	- [x] add initial interface
	- [ ] add custom textures to the interface
	- [x] add a scene that allows players to choose the difficulty of their training
	- [x] randomly generate the problems given the choice from the player
	- [x] update elements in a scene based on the random data
		- [x] update the problem link and the label
	- [x] check answer after user submits one
	- [x] add countdown timer
	- [x] make sure two problems aren't repeated (may happen)
	- [ ] allow users to copy and past a link instead of clicking it
	- [ ] simplify the code! (maybe if there is time...)
