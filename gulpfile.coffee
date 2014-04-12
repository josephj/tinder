#####################
# Required Packages
#####################
gulp       = require 'gulp'
coffee     = require 'gulp-coffee'
coffeelint = require 'gulp-coffeelint'
compass    = require 'gulp-compass'
connect    = require 'gulp-connect'
open       = require 'gulp-open'
watch      = require 'gulp-watch'

#############
# Constants
#############
JS_PATH     = 'app/assets/javascripts/'
CSS_PATH    = 'app/assets/stylesheets/'
HTML_PATH   = 'app/'
CONFIG_PATH = './config.rb'

#############
# Tasks
#############
gulp.task 'build', ->
  gulp.src "#{JS_PATH}*.coffee"
    .pipe coffeelint()
    .pipe coffee()
    .pipe gulp.dest(JS_PATH)

gulp.task 'connect', ->
  connect.server
    root: 'app'
    port: 8000
    livereload:
      port: 35788
  options = url: 'http://localhost:8000/demo.html'
  gulp.src './app/demo.html'
    .pipe open('', options)

gulp.task 'lint', ->
  gulp.src ['./**/*.coffee', '!./node_modules/**', '!./public/components/**']
    .pipe coffeelint()
    .pipe coffeelint.reporter()

gulp.task 'html', ->
  gulp.src ["#{HTML_PATH}*.html"]
    .pipe connect.reload()

gulp.task 'coffee', ->
  gulp.src ["#{JS_PATH}*.coffee"]
    .pipe coffee()
    .pipe gulp.dest(JS_PATH)
    .pipe connect.reload()

gulp.task 'compass', ->
  gulp.src ["#{CSS_PATH}*.sass"]
    .pipe compass
      config_file: CONFIG_PATH
      css: CSS_PATH
      sass: CSS_PATH
    .pipe connect.reload()

gulp.task 'watch', ->
  gulp.watch ["#{HTML_PATH}*.html"], ['html']
  gulp.watch ["#{JS_PATH}*.coffee"], ['coffee']
  gulp.watch ["#{CSS_PATH}*.sass"], ['compass']

gulp.task 'server', ['connect', 'watch']
gulp.task 'default', ['lint', 'coffee', 'compass']

