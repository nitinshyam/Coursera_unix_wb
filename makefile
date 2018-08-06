#!/usr/bin/env bash
# File: makefile

README.md: guessinggame.sh
	echo "## Project Work " > README.md
	echo "# The Unix Workbench" >> README.md
	echo "## Graded Assignment" >> README.md
	date >> README.md
	echo "\n numner of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	
	
