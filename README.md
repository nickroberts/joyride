# Joyride

Forked from https://github.com/zurb/joyride

* merged modal & expose options
* merge previous button options

## Compiling CSS and JavaScript

This version includes a [makefile](Makefile) with convenient methods for working with the framework. Before getting started, be sure to install [the necessary local dependencies](package.json):

```
$ npm install
```

When completed, you'll be able to run the various make commands provided:

#### build - `make`
Runs the recess compiler to minify the `css` files, runs jshint on the js, then runs uglify-js to minimize the js. Requires jshint, recess and uglify-js.