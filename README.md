# Vagrant wDocker

Templates for creating dev environments with:
* Vagrant
* Ubuntu
* Docker
	* Additional tools via a Docker image (MySql, Rails, etc.)


## Purpose

To reliably streamline and simplify management of development environments
across machines and operating systems.

At the time of this writing, Linux is arguably the most widely supported OS
by independant programmers.  However, other domains, e.g. art or design, tend
to favor either Windows or OSX.  There is _some_ overlap between each operating
system, but they are not one to one.  Moreover, a multi-step environment setup
needs to be completed across each new operating system which may introduce
complications unique to that operating system, especially when using third party
tools, e.g. RVM.

Vagrant provides a standardized operating system on which environments can run
e.g. Ubuntu.  This limits environmental characteristics to a single open source,
well supported, and well documented operating system.

Docker provides portability at the application level (as opposed to the
operating system level), making deploys significantly more straightforward.


## Design

Each template provides a Vagrantfile that installs Ubuntu, Docker, and a starter
Docker Image with essential tools.  The Docker image should be customized on a
per-application basis.  The vagrant file can be customized as well, though this
should only be done for changes that do not directly impact the application.
