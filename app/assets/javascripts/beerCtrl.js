(function() {
  "use strict";
  angular.min.module("app").controller("beerCtrl", function($scope, $http) {

  $scope.beers = [];

  $scope.setup = function() {
    $http.get("/api/v1/beers.json").then(function(response) {
      $scope.beers = response.data;
    });
  };

  window.$scope = $scope;
  });
});