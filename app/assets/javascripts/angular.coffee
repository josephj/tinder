app = angular.module('demoApp', [])

app.controller 'DemoCtrl', ($scope, $http) ->
  console.log 'angular.coffee is executed.'
