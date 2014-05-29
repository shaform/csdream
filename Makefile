publish:
	rm -rf ./_html
	gitbook build . --output=./_html
	rm -f ./_html/.bookignore

gh-pages: publish
	ghp-import -r gh-pages -b gh-pages _html -m "generate html"
