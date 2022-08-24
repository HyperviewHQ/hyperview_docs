SOURCEDIR = "./documentation"
BUILDDIR = "./site/documentation/_build"
REDOCCLI = "node_modules/.bin/redoc-cli"
REDOCTARGET = "https://nightly.hyperviewhq.com/api/docs/manager/3.0/swagger.json"

docker:
        docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

npm_ci:
	npm ci

pip_install:
	python3 -mpip install -r requirements.txt

setup: npm_ci pip_install

clean:
	python3 -msphinx -M clean $(SOURCEDIR) $(BUILDDIR)

html:
	python3 -msphinx -M html $(SOURCEDIR) $(BUILDDIR)

redoc:
	$(REDOCCLI) build $(REDOCTARGET) -t redoc-template/hyperview.hbs

redoc_publish:
	mv redoc-static.html site/documentation/_build/html

site: clean html redoc redoc_publish

docker_build:
	docker build --pull -t hvdocs:latest .

docker_stop:
	docker container stop hvdocs && docker container rm hvdocs

docker_start:
	docker run --name hvdocs -d -p 127.0.0.1:80:80 hvdocs:latest

