README.md: guessinggame.sh
	echo "# GUESSING GAME" > README.md
	echo "## Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
	echo "" >> README.md
	date >> README.md
	echo "" >> README.md
	c=$(wc -l guessinggame.sh)
	echo "**$c**" >> README.md
