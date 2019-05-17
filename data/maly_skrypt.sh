#!/bin/bash
for filename in $(find ./pozytywizm -name '*.txt'); do
	sed -i '/creativecommons\|ISBN\|wolnelektury\|Wolne Lektury\|*Wikiźród*\|Creative Commons\|http\|Jak możesz pomóc\?\|Co roku do domeny publicznej przechodzi/d' $filename
	sed -i '/-----/,$d' $filename
	sed -i '/Wesprzyj Wolne Lektury!/,$d' $filename
	sed -i '/Przekaż 1% podatku na rozwój Wolnych Lektur:/,$d' $filename
done
