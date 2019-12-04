all: README.md

README.md:
	echo "## README for guessinggame.sh. This document has date of creation and number of lines in guessinggame.sh\n" > README.md
	echo "README.md created: " >> README.md
	date >> README.md
	echo "\nNumber of lines in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md