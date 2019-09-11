.PHONY: compile run

deploy: build run

build: compile run

compile:
	mkdir -p _build && erlc -o _build/ src/*.erl

run:
	cd _build && erl

clean:
	rm -rf _build
