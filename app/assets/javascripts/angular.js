(function() {
  var app;

  app = angular.module('demoApp', []);

  app.controller('DemoCtrl', function($scope, $http) {
    return console.log('angular.coffee is executed.');
  });

}).call(this);
