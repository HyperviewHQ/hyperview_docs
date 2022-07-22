#!/bin/bash

export SPHINXBUILD="python3 -msphinx"
export SOURCEDIR1=./documentation
export BUILDDIR1=./site/documentation/_build

echo "> Cleaning site"
${SPHINXBUILD} -M clean ${SOURCEDIR1} ${BUILDDIR1}

echo "> Building site"
${SPHINXBUILD} -M html ${SOURCEDIR1} ${BUILDDIR1}

echo "> Building API Docs"
npm ci
./node_modules/.bin/redoc-cli build https://nightly.hyperviewhq.com/api/docs/manager/3.0/swagger.json -t redoc-template/hyperview.hbs

if [ -d site/documentation/_build/html ]
then
    echo ">> Moving docs to rendered html folder"
    mv redoc-static.html site/documentation/_build/html
else
    echo ">> Error: could not find the compiled docs"
fi


