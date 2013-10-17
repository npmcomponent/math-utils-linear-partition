MOCHA_OPTS= --check-leaks
REPORTER = spec

build:
	@coffee --compile --bare linear_partition.coffee

test: test-lib

test-lib:
	@NODE_ENV=test ./node_modules/.bin/mocha \
		--reporter $(REPORTER) \
		$(MOCHA_OPTS)
