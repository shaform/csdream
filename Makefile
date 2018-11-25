MSG?=Generate site

BASEDIR=$(CURDIR)
OUTPUTDIR=$(BASEDIR)/public

GITHUB_PAGES_BRANCH=gh-pages

publish: clean build

build:
	hugo
	touch $(OUTPUTDIR)/.nojekyll

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

github: publish
	ghp-import -m "$(MSG)" -b $(GITHUB_PAGES_BRANCH) $(OUTPUTDIR)
	git push origin $(GITHUB_PAGES_BRANCH)

.PHONY: publish clean github
