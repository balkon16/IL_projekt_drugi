#!/bin/bash
for filename in *.txt; do
	sed -i.bak '/creativecommons\|ISBN\|wolnelektury\|Wolne Lektury\|*Wikiźród*\|Creative Commons\|http/d' $filename
	sed -i.bak '/-----/,+100 d' $filename
	sed -i.bak '/Wesprzyj Wolne Lektury/,+100 d' $filename
done

