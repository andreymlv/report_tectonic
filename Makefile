all: compile copy 

clean:
	rm -rf build/

compile:
	tectonic -X build

copy:
	cp build/default/default.pdf .

.PHONY: all clean compile copy
