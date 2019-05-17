#!/bin/bash
for filename in *.txt; do
	sed -i.bak '/creativecommons\|ISBN\|wolnelektury\|Wolne Lektury\|*Wikiźród*\|Creative Commons\|http/d' $filename
	awk '/-----/{getline;next} 100' $filename
	awk '/Wesprzyj Wolne Lektury/{getline;next} 100'
done

