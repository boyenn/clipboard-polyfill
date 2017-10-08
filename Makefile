.PHONY: build-watch
build-watch:
	./node_modules/.bin/webpack --watch

.PHONY: prod
prod:
	env PROD=true ./node_modules/.bin/webpack

.PHONY: analyze
analyze:
	env PROD=true BUNDLE_ANALYZER=true ./node_modules/.bin/webpack --watch

.PHONY: deploy
deploy:
	rsync -avz ./ garron.net:~/garron.net/code/clipboard.js/v2/ --exclude .git
