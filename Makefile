# Variable to store the title of the project
PROJECT_TITLE = Guessing Game

# Variable to get the current date and time
DATE_TIME := $(shell date)

# Variable to get the number of lines of code in guessinggame.sh
CODE_LINES := $(shell wc -l < guessinggame.sh)

# Target to generate README.md
README.md: guessinggame.sh
	@echo "# $(PROJECT_TITLE)" > README.md
	@echo "" >> README.md
	@echo "Date and time at which make was run: $(DATE_TIME)" >> README.md
	@echo "Number of lines of code in guessinggame.sh: $(CODE_LINES)" >> README.md
