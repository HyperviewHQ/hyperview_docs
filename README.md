# README #

## What is this repository for? ##

This is the Hyperview documentation repository.

## Quickstart ##

The following steps assume that you are using a package manager such as [scoop](https://scoop.sh/), [apt](https://www.debian.org/), [dnf](https://getfedora.org/) or [brew](https://brew.sh/) installed.

* Install Python 3, NodeJS-LTS and Make using your favorite package manager.

For example, on Microsoft Windows run the following commands:

```powershell
scoop install python
scoop install nodejs-lts
scoop install make
```

* Initialize a virtual environment in the root of the repository.

> **_NOTE:_** bash (git-bash on Microsoft Windows) is the recommended shell environment.

```bash
python3 -m venv .
```

* Activate virtual environment

```bash
# Linux, WSL, MacOS, Git-bash
source bin/activate
```

* Install Sphinx and Redoc CLI; Using your favorite console app, run the following command from the **repository root**.

```bash
make setup
```

> **_NOTE:_**  All subsequent Make commands must be run from the repository root.

* To make the HTML version of the documentation run the following command.

```bash
make site
```

* To browse the site on your machine, you need to have [Docker](https://docs.docker.com/get-docker/) installed. Then run the following commands.

```bash
# To build the local docker container
make docker_build

# To stop and clean the local docker container (if needed)
make docker_stop

# To start the docker container
make docker_start
```
* Navigate to 127.0.0.1 to browse the docs site.

## API Changes ##

We use a tool called [openapi-diff](https://github.com/OpenAPITools/openapi-diff) from the [openapitools](https://github.com/OpenAPITools) project.

## Editing documentation ##

Use your favorite text or code editor. For [VSCode](https://code.visualstudio.com/) the instructions are below.

* Install Visual Studio Code

* Install Visual Studio Code Extension: EditorConfig for VS Code

* Install Visual Studio Code Extension: Code Spell Checker

* Install Visual Studio Code Extension: MyST-Markdown

## Resources ##

* [MyST](https://mystmd.org/)
* [MyST Parser](https://myst-parser.readthedocs.io/en/latest/index.html)
* [Sphinx Project](https://www.sphinx-doc.org/)
