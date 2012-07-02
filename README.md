ShiVa Proof Of Concept Projects
===============================
This repository is organized such that each folder is a fully contained micro-project.  To look at any given project, you will want to check-out this repository and then add the project folder of interest to ShiVa from Main->Projects.

Note that you can run a demo of all of these projects by clicking the image below which will take you to a browser-based ShiVa player with the demo.

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
A 2D platformer that uses the ShiVa dynamics system for jump physics.  Also includes moving platforms (with limited success) and in-game tweakable physics parameters.
[![Example Image][3]][6]

License
=========
MIT (See LICENSE file)

[1]: https://mobilecoder.files.wordpress.com/2012/06/boxparticle.jpg
[2]: http://mobilecoder.files.wordpress.com/2012/06/newtons.jpg
[3]: http://mobilecoder.files.wordpress.com/2012/06/jumpman.jpg
[4]: https://dl.dropbox.com/u/7079101/shiva/boxParticleLighting.html
[5]: https://dl.dropbox.com/u/7079101/shiva/newtonsCradle.html
[6]: https://dl.dropbox.com/u/7079101/shiva/jumpMan.html