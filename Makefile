all: dist

dist:
	tangram-bundle cinnabar-style-no-labels.yaml
	mv cinnabar-style-no-labels.zip dist/cinnabar-style-no-labels.zip

clean:
	rm -rf dist
	mkdir dist

tag:
	git tag  -m 'See CHANGELOG for details.' -a v`cat VERSION`
