app = angular.module('demoApp', [])

app.controller 'DemoCtrl', ($scope, $http) ->
  $scope.name = 'Joseph'
  console.log 'angular.coffee is executed.'
