JADE = ./node_modules/.bin/jade
PEAT = ./vendor/peat

index.html: dependencies install-pre-commit-hook
	@$(JADE) index.jade $@

dependencies:
	@npm install .

watch:
	@(echo echo index.jade | $(PEAT) --dynamic 'make')

install-pre-commit-hook:
	@(echo make > .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit)
