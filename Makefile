
all:
	tectonic -X build

watch:
	tectonic -X watch

clean:
	rm -rf build/

look:
	zathura build/default/default.pdf &
