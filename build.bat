@echo off

mkdir build/default/settings build/default/templates

tectonic -X build

cp build/default/default.pdf .
