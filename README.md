ShiVa Proof Of Concept Projects
===============================
This repository is organized such that each folder is a fully contained micro-project.  To look at any given project, you will want to check-out this repository and then add the project folder of interest to ShiVa from Main->Projects.

Note that you can run a demo of all of these projects by clicking the image below which will take you to a browser-based ShiVa player with the demo.

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
[9]: http://www.error454.com/2013/10/hudinterpolate.jpg
[10]: http://www.error454.com/2013/10/19/shiva3d-hud-interpolators-test/
