build:
	@coffee --compile --bare linear_partition.coffee

test:
	@node test

.PHONY: build test