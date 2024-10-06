install:
	npm ci

status: lint test
	git status

lint: 
	npx eslint . --fix

publish:
	npm publish --dry-run

test:
	NODE_OPTIONS=--experimental-vm-modules npx jest

coverage:
	NODE_OPTIONS=--experimental-vm-modules npx jest --coverage