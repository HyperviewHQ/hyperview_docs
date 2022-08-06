# README #

## What is this repository for? ##

This is the Hyperview documentation repository.

## How do I get set up? ##

The following steps are for Windows and Linux users and assume that they have a package manager such as scoop, apt or dnf installed.

* Install Python using scoop

```console
scoop install python
```

* Install nodejs using scoop

```console
scoop install nodejs-lts
```

* Install make

```console
scoop install make
```

* Install Sphinx by opening a command prompt and running the following
  Python command. (Note that this operation might take a few minutes to
  complete.)

```console
pip install -r ./requirements.txt
```

* Install redoc CLI to generate API docs bundle

```console
npm ci
```

* Install Visual Studio Code

* Install Visual Studio Code Extension: EditorConfig for VS Code

* Install Visual Studio Code Extension: SpellChecker

* reStructuredText [reference](http://www.sphinx-doc.org/en/stable/rest.html)

* To make the HTML version of the documentation perform the following commands from the repository root

```console
make site
```

* To browse the site on your machine

```console
# To build the local docker container
make docker_build

# To stop and clean the local docker container (if needed)
make docker_stop

# To start the docker container
make docker_start
```
* Navigate to 127.0.0.1 to browse the docs site

### Generate API Changes file ###

We use a tool called openapi-diff from the openapitools project.

### Resources ###

* [How to generate beautiful technical documentation](http://tjelvarolsson.com/blog/how-to-generate-beautiful-technical-documentation/)
* [Sublime and Sphinx guide](https://sublime-and-sphinx-guide.readthedocs.io/en/latest/index.html)
* [Sphinx Project](https://www.sphinx-doc.org/)
