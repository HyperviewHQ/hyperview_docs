$SOURCEDIR1 = "./documentation"
$BUILDDIR1 = "./site/documentation/_build"

Write-Host "Cleaning site"
python -msphinx -M clean $SOURCEDIR1 $BUILDDIR1

Write-Host "Building site"
python -msphinx -M html $SOURCEDIR1 $BUILDDIR1

Write-Host "Build API docs"
./node_modules/.bin/redoc-cli build https://nightly.hyperviewhq.com/api/docs/manager/3.0/swagger.json -t redoc-template/hyperview.hbs

Write-Host "Moving rendered file"
mv redoc-static.html site/documentation/_build/html
