
all=build-base build

build:
	stack exec wchresta-github-io build

build-base:
	stack build

watch:
	stack exec wchresta-github-io watch

clean:
	stack exec wchresta-github-io clean
