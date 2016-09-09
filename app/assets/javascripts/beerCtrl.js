(function() {
  "use strict";
  angular.module("app").controller("beerCtrl", function($scope, $http) {

  $scope.beers = [];

  $scope.setup = function() {
    $http.get("/api/v1/beers.json").then(function(response) {
      $scope.beers = response.data;
      console.log(response.data);
      console.log($scope.beers);
    });
  }

  $scope.toggleOrder = function(attribute) {
    if ($scope.orderAttribute = attribute) {
      $scope.descending = !$scope.descending
    } else {
      $scope.orderAttribute = attribute;
    }
  }

  $scope.addBeer = function(newName, newPrice, newBeerType, newAlcoholPercentage) {
    var beer = {
      name: newName,
      price: newPrice,
      beer_type: newBeerType,
      alcohol_percentage: newAlcoholPercentage
    };
    $http.post("/api/v1/beers.json", beer).then(function(response) {
      $scope.beers.push(response.data);
    }, function(error) {
      $scope.errors = error.data.errors;
    });
  }

  // $scope.toggleOrder = function(attribute) {
  //   if (attribute == $scope.orderAttribute) {
  //     $scope.descending = !$scope.descending;
  //   } else {
  //     $scope.orderAttribute = attribute;
  //   }
  // }



  window.$scope = $scope;
  });
})();