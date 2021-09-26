# gamc

rpg like game made using godot to make practicing amc problems more fun

# mirrors

get the code in one of these places:

- [Github](https://github.com/bkf2020/gamc)
- [Gitlab](https://gitlab.com/bkf2020/gamc)
- [Codeberg](https://codeberg.org/bkf2020/gamc)

# note that this readme is in alpha! the game is being developed and ascepts will change

# overview of the game
You play as a character currently working at a grocery store, but
you know you want to do math and have a better life.

- You can train to improve your skills
- You can take a skill test which will give you a rating; this rating can be used for applying to jobs
- You can get additional jobs or change jobs
- One job is tutoring; you need certain ratings for different types of tutoring
- The game will get harder: you won't have the grocery store job forever, people will get better at math and you will need more experience as a tutor
- Rent, food, electricity, and internet bills will all get more expensive

More details later..

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
	- [x] allow users to copy and past a link instead of clicking it
	- [x] have one function instead of multiple functions for similar tasks
	- [ ] show total score player has
	- [ ] have button that lets player end training (if they give up/are done)
	- [ ] don't let players submit the same answer twice
	- [ ] simplify the code! (maybe if there is time...)
- [ ] add a screen that lets characters keep track of stats
	- [ ] add button to finish training/end training when time is up
	- [ ] get total stats after a training
	- [ ] keep track of total stats available
	- [ ] keep track of left over stats
	- [ ] add buttons for each of the 5 stats
	- [ ] keep track of the total stats used
	- [ ] set each stat to zero in the beginning
