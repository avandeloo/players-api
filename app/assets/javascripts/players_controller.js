(function() {
  "use strict";

  angular.module("app").controller("playersController", function($scope, $http) {
    $scope.setup = function() {
      $http.get('api/v1/players.json').then(function(response) {
        $scope.players = response.data;
      });
    
    };

    $scope.addPlayer = function(newFirstName, newLastName, newPosition, newBirthday, newProTeam, newSalary, newLocation, newQuote) {
      var player = {
                      first_name: newFirstName,
                      last_name: newLastName,
                      position: newPosition,
                      birthdate: newBirthday,
                      pro_team: newProTeam,
                      salary: newSalary,
                      location: newLocation,
                      quote: newQuote
                  };
      
      $http.post('/api/v1/players.json', player).then(function(response) {
        $scope.players.push(response.data);
        $scope.newPlayerFirstName = null;
        $scope.newPlayerLastName = null;
        $scope.newPlayerPosition = null;
        $scope.newPlayerBirthday = null;
        $scope.newPlayerProTeam = null;
        $scope.newPlayerSalary = null;
        $scope.newPlayerLocation = null;
        $scope.newPlayerQuote = null;
      }, function(errors) {
        $scope.errors = errors.data;
      });

    };

    window.scope = $scope
  });
}());