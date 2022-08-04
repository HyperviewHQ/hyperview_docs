SOURCEDIR = "./documentation"
BUILDDIR = "./site/documentation/_build"
REDOCCLI = "node_modules/.bin/redoc-cli"
REDOCTARGET = "https://nightly.hyperviewhq.com/api/docs/manager/3.0/swagger.json"

npm_ci:
	npm ci

pip_install:
	python -mpip install -r requirements.txt

setup: npm_ci pip_install

clean:
	python -msphinx -M clean $(SOURCEDIR) $(BUILDDIR)

html:
	python -msphinx -M html $(SOURCEDIR) $(BUILDDIR)

redoc:
	$(REDOCCLI) build $(REDOCTARGET) -t redoc-template/hyperview.hbs

redoc_publish:
	mv redoc-static.html site/documentation/_build/html

site: clean html redoc redoc_publish
