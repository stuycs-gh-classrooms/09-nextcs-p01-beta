[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/PX83n--N)
# NeXtCS Project 01
### Name0: Mustafa Abdullah
### Name1: Dabir Uddin
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Space Invaders

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

1. Movement of the player ship (left, right, shooting)
2. Enemies move in a grid formation and descend when hitting the screen edge
3. Bullets fired by the player destroy enemies
4. Score tracking and game-over condiitons when enemies reach the player
   
### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

1. Multiple levels with increasing difficulty
2. Power-ups (faster shooting, shields)
3. Sound effects and animations for shooting and destroying enemies
4. Different enemy types with unique behaviors (faster movement, more health, etc)
5. Customizable controls/color themes

### Array Usage
How will you be using arrays in this project?

1D Array:
- Usage: Store and manage bullets fired by the player
- Bullets can be represented as individual objects with their own x and y coordinates.

2D Array:
- Represent the grid of enemies
- The 2D array mirrors the structure of the game grid, where each cell either contains an enemy or is empty


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- Left Arrow: Move ship left
- Right Arrow: Move ship right
- Spacebar: Fire bullet

Mouse Control:
- Mouse movement: N/A
- Mouse pressed: could be used to start game???


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

CLASS PLAYER
- Instance variables:
  - int x, y; //player position
  - boolean canShoot; //shooting status
  - int shootDealy //delay between shots
- METHODS
  - void draw() //draw player
  - void update() //update position and help with shooting

CLASS ENEMY
- Instance variables:
  - LIST INSTANCE VARS HERE
- METHODS
  - LIST METHODS HERE
 
CLASS BULLET
- Instance variables:
  - LIST INSTANCE VARS HERE
- METHODS
  - LIST METHODS HERE

