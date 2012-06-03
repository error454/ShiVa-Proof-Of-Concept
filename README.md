ShiVa Proof Of Concept Projects
===============================
This repository is organized such that each folder is a fully contained micro-project.  To look at any given project, you will want to check-out this repository and then add the project folder of interest to ShiVa from Main->Projects.

Box Particle Lighting
---------------------
This demo is meant to test particle interaction with colliders along with a moving dynamic light source.  The project is a simple set of planes, set as colliders that form a fully enclosed cube.  In that cube is a helper object with a point-light source, a particle system and a dynamics controller.

Every frame, a random impulse is added to the dynamics controller of the helper.

Netwon's Cradle
---------------
This is an attempt at making a Newton's Cradle device using the dynamics system.  It is a simple example of using ball joints but it doesn't quite function like the real world counterpart.  If you know why please let me know or throw me a pull request.

License
=========
MIT

