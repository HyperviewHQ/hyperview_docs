# README #

## What is this repository for? ##

This is the Hyperview documentation repository.

## How do I get set up? ##

The following steps are for Windows and Linux users and assume that they have a package manager such as scoop, apt or dnf installed.

* Install Python using scoop

```
scoop install python
```

* Install nodejs using scoop

```
scoop install nodejs-lts
```

* Install Nginx using scoop. This is an optional step.

```
scoop install nginx
```

Add an NGINX_HOME environment variable, and point it to the default location that scoop sets up for Nginx.
This is usually ``` c:\Users\<username>\scoop\persist\nginx ```

* Install Sphinx by opening a command prompt and running the following
  Python command. (Note that this operation might take a few minutes to
  complete.)

```
pip install -r ./requirements.txt
```

* Install redoc CLI to generate API docs bundle

```
npm ci
```

* Install Visual Studio Code

* Install Visual Studio Code Extension: EditoConfig for VS Code

* Install Visual Studio Code Extension: SpellChecker

* reStructuredText [reference](http://www.sphinx-doc.org/en/stable/rest.html)

* To make the HTML version of the documentation; Run the applicable script

``` windows_make_all_html.ps1 ```
``` linux_make_all_html.sh ```

* Building the HTML docs will also build the API docs redoc bundle, which is then moved to the HTML folder of the docs.

### Generate API Changes file ###

We use a tool called openapi-diff from the openapitools project.

### Resources ###

* This is a good blog post to get you started http://tjelvarolsson.com/blog/how-to-generate-beautiful-technical-documentation/
