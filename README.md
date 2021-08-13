# gamc

rpg like game made using godot to make practicing amc problems more fun

# note that this readme is in alpha! the name is being developed and ascepts will change

# overview of the game

## Attributes

Each character has the following attributes:

- Strength
- Intelligence
- Confidence
- Luck

## The game has 2 parts: training and battling

### Training

In training, you are given 5 problems with 2 hours to solve them all.
You can solve as many problems as you can. Then, you can look at the
solution, after the two hours. Of course, you can cheat and search up
the problems, but don't do that!

After a training, you will get points, which you can place in the various
attributes of your character. (Like in a RPG game). Solving more problems
means more points.

### Battling

In a battle, you will fight a boss. You can choose various attacks
to use on the boss, and the boss will attack back. Certain attacks
will have cause more damage on health than others. The damage of health
by using a certain attack is determined by how much each attribute is weighted.

For example, an attack may have the following weights:
- Strength 25%
- Intelligence 30%
- Confidence 40%
- Luck 5%

After a battle, if you win, you will get points, which you can place in the
various attributes of your character. (Like in a RPG game)

## Having 0 points in attributes

If you can't solve any problem in a training, you will have to train again
until you get points to battle.

# project goals
- [ ] finish building an interface to allow players to train
	- [x] add initial interface
	- [ ] add custom textures to the interface
	- [ ] add a scene that allows players to choose the difficulty of their training
	- [ ] randomly generate the problems given the choice from the player
	- [ ] update elements in a scene based on the random data
		- [ ] update the problem link and the label
	- [ ] check answer after user submits one
