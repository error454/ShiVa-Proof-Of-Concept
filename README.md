ShiVa Proof Of Concept Projects
===============================
This repository is organized such that each folder is a fully contained micro-project.  To look at any given project, you will want to check-out this repository and then add the project folder of interest to ShiVa from Main->Projects.

## hello-space-invaders ##
<img src='http://www.error454.com/assets/uploads/2014/11/hellospace.jpg' alt='Space Invaders'>

There are 2 game projects in here, **lander** and **space**. 

### lander ###
lander does basically nothing and I'm not sure what I was thinking when I made it. 2 player space invaders?

### space ###
space is a pretty standard start to space invaders. You can move left/right and shoot but the enemies have no AI.

## FortunousWheel ##
<img src='http://www.error454.com/assets/uploads/2014/11/fortune.jpg' alt='The Fortunous Wheel'>

At one point, the wife and I were doing a motivational chore thing and at the end of the week we would get a prize if we did all of our chores. I made this project so that we could have a Wheel of Fortune style prize picker. So we'd spin the wheel and pull out a numbered piece of paper from a jar telling us what we'd won!

I was really proud of this project because the code to generate the wheel was kind of ridiculous. I do remember the biggest drawback was that the wheel took a TON of draw calls. But the wife had just gotten the HTC One and that thing just handled it so I shrugged and called it good.

## Platformer Physics ##
<img src='http://www.error454.com/assets/uploads/2014/11/platformer.jpg' alt='Platformer Physics'>

A familiar face for a familiar problem. Jumping physics, early jump termination and stuff.

## shiva-pong ##
<img src='http://www.error454.com/assets/uploads/2014/11/pong.jpg' alt='Pong'>

An incomplete pong implementation. Paddle moves, ball moves but the physics need work. Spacebar launches ball, mouse moves paddle.

## random ##
<img src='http://www.error454.com/assets/uploads/2014/11/random.jpg' alt='Random vs Gaussian'>

This project was made to try and visualize the distribution of gaussian random numbers vs random numbers. Try changing the initial state from Gaussian to Random to see for yourself.

## flocking ##
<img src='http://www.error454.com/assets/uploads/2014/11/notflocking.jpg' alt='A steering behavior demo'>

This may have had visions of glory to be a flocking simulator but it ended up just being a steering implementation. Move the mouse around and the box follows it.

## simplex ##
<img src='http://www.error454.com/assets/uploads/2014/11/cottoncandy.jpg' alt='A simplex noise generator'>

This is a shiva plugin and project. The plugin is a simplex noise generator and the project uses it to make random nebulas. The nebulas are rendered to a rendermap and in the `makeRandomNebula` case they are saved to D:\nebula. There was a stretch of time where I was letting this run overnight and I'd come back to a bunch of nebulas in the morning.

I even saved some of my favorite generation parameters to make the nebulas Cotton Candy and Purple Thunder :) We used this at one point to make backdrops for Rage Runner.
 
## letterRender ##
<img src='http://www.error454.com/assets/uploads/2014/11/letterrender.jpg' alt='A 3d space letter generator'>

Hmmm, I can't really say what my motivation behind this was. I think I was inspired by the Wii news browser because they rendered each letter individually and had them animate onto the page. I wanted to try something similar.

## spatialization ##
<img src='http://www.error454.com/assets/uploads/2014/11/spatialization.jpg' alt='A sound spatialization test'>

A simple test with dials for sound spatialization. This also contains code for what I call DebugHUD which is a quick way of getting dials on the screen to tweak AIs.

## HorseTest ##
<img src='http://www.error454.com/assets/uploads/2014/11/horsetest.jpg' alt='Horse Test'>

The original goal of this project was to see if I could take a free unity asset and import it into Shiva. The answer was yes. The next question was how difficult it was to manually modify the horse skeletal system to improve the horse turning animation.

Things got progressively worse as I started playing with a day/night system and then gave up. The horse controller is pretty solid and I'm happy with that small piece of work.

## lua-performance ##
I like for equations to make sense when you read them in code. In most cases, I prioritize readability over imaginary performance. Someone made the comment that dividing is really slow in LUA and I didn't believe them. So I wrote this small test to try and benchmark multiplication and table pre-allocation.

STK Pack Loading Example
------------------------
An example of how to load external STK files. Accompanying [blog article](http://error454.com/2014/05/14/using-stk-packs-in-shiva/).

HUD Interpolators
-----------------
A simple demo that displays all of the HUD interpolator types. [![Interpolate][9]][10]

Poly Rain
---------
A prototype rain effect using polygons.  Not terrible, but not spectacular.  Needs better surface calculations for placing splash sprites.
[![Poly Rain][7]][8]

Box Particle Lighting
---------------------
This demo is meant to test particle interaction with colliders along with a moving dynamic light source.  The project is a simple set of planes, set as colliders that form a fully enclosed cube.  In that cube is a helper object with a point-light source, a particle system and a dynamics controller.

Every frame, a random impulse is added to the dynamics controller of the helper.
[![Example Image][1]][4]

Netwon's Cradle
---------------
This is an attempt at making a Newton's Cradle device using the dynamics system.  It is a simple example of using ball joints but it doesn't quite function like the real world counterpart.  If you know why please let me know or throw me a pull request.
[![Example Image][2]][5]

Jump Man
--------
A 2D platformer that uses the ShiVa dynamics system for jump physics.  Also includes moving platforms (with limited success) and in-game tweakable physics parameters.  In retrospect, a very good example of how NOT to do platformers.
[![Example Image][3]][6]

Game Shell
----------
A small game shell that can be used as the basis to start writing a game.  This shell includes a basic implementation of various game screens as follows:

![Flowchart](https://dl.dropbox.com/u/7079101/shiva/flowchart.jpg)

The red portion is typically game-specific and so is not implemented.

Keyboard and joystick handling is also built in with the ability to get a latched key state or raw key state.  

###Raw key state 
Means that you get the state of the last keys that were pressed.  

###Latched keystate 
Means that you get a single True/False value back the first time the key enters a state of your choice but false for all subsequent times.  So if you latch on the down key and the user presses down, the function will return True.  If the user continues to hold the down key, it will return false until they let go of the key and press it again.

The joystick key mappings are specific to the Xbox 360 controller for the PC.  The primary design goal here was to allow handling key input in each user AI state rather than checking state in the keyboard and joystick handlers.  For instance in the Game onLoop function, the following is used to detect player 0 pressing the escape key or start button:

    if(this.getKeyLatched ( 0, "esc", true ) or this.getKeyLatched ( 0, "start", true))
    then    
        this.Pause ( )
    end

I've written this shell half a dozen times.  Unfortunately it's hard to cherry-pick AI models once your project is finished.  So here is the base that I typically start with for a new project.

License
=========
MIT (See LICENSE file)

[1]: https://mobilecoder.files.wordpress.com/2012/06/boxparticle.jpg
[2]: http://mobilecoder.files.wordpress.com/2012/06/newtons.jpg
[3]: http://mobilecoder.files.wordpress.com/2012/06/jumpman.jpg
[4]: https://dl.dropbox.com/u/7079101/shiva/boxParticleLighting.html
[5]: https://dl.dropbox.com/u/7079101/shiva/newtonsCradle.html
[6]: https://dl.dropbox.com/u/7079101/shiva/jumpMan.html
[7]: https://dl.dropboxusercontent.com/u/7079101/forum%20photos/rain.JPG
[8]: https://dl.dropboxusercontent.com/u/7079101/shiva/rain.html
[9]: http://www.error454.com/assets/uploads/2013/10/hudinterpolate.jpg
[10]: http://www.error454.com/2013/10/19/shiva3d-hud-interpolators-test/
