publish:
	rm -rf ./_html
	gitbook build . ./_html
	rm -f ./_html/.bookignore
	rm -f ./_html/.gitignore

gh-pages: publish
	ghp-import -r gh-pages -b gh-pages _html -m "generate html"
