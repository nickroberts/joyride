DATE=$(shell date +%I:%M%p)
CHECK=\033[32m✔\033[39m
HR=\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#

build:
	@echo "\n${HR}"
	@echo "Building Joyride..."
	@echo "${HR}\n"
	@./node_modules/.bin/recess --compile --compress joyride-2.0.3.css > joyride-2.0.3.min.css
	@echo "Compiling CSS with Recess...                ${CHECK} Done"
	@./node_modules/.bin/jshint jquery.cookie.js --config .jshintrc
	@./node_modules/.bin/jshint jquery.joyride-2.0.3.js --config .jshintrc
	@echo "Running JSHint on javascript...             ${CHECK} Done"
	@./node_modules/.bin/uglifyjs jquery.joyride-2.0.3.js > jquery.joyride-2.0.3.min.js
	@./node_modules/.bin/uglifyjs jquery.cookie.js > jquery.cookie.min.js
	@echo "Compiling and minifying javascript...       ${CHECK} Done"
	@echo "\n${HR}"
	@echo "Joyride successfully built at ${DATE}."
	@echo "${HR}\n"