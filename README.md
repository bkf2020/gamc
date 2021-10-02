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

# Details on test

There are 16 problems from all difficulties (AMC 8 Easy, AMC 8 Hard, etc.):

Here is the weight of each problem
- AMC 8 Easy: 100
- AMC 8 Medium: 150
- AMC 8 Hard: 200
- AMC 8 Very Hard: 220
- AMC 10 Easy: 150
- AMC 10 Medium: 200
- AMC 10 Hard: 250
- AMC 10 Very Hard: 350
- AMC 12 Easy: 200
- AMC 12 Medium: 300
- AMC 12 Hard: 350
- AMC 12 Very Hard: 500
- AIME Easy: 300
- AIME Medium: 400
- AIME Hard: 500
- AIME Very: Hard 650

You will have 2 hours to solve as many as you can.

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
	- [ ] remove a player's score
	- [x] have button that lets player end training (if they give up/are done)
	- [ ] simplify the code! (maybe if there is time...)
- [x] update a player's stats (energy, motivation, etc.)
- [x] add money a player has as a stat
- [x] add hunger as a stat
- [ ] game over if any state is zero (or less)
- [ ] charge money for training (internet + power fees)
- [ ] have week numbers and day numbers
- [ ] **think of creating a way for players to save progress**
- [ ] allow players to go to work
	- [ ] charge money + time for commute (20 minutes for grocery store)
	- [ ] create a classes that defines a jobs?? (way to create description for different jobs EASILY)
		- [ ] traits: time needed for commute
		- [ ] energy level needed
		- [ ] wage
		- [ ] time spent each day working
		- [ ] number of days you have to work each week
- [ ] allow players to eat a meal
	- [x] add button for players to eat a meal
- [ ] center panel on screen, add scroll bars
