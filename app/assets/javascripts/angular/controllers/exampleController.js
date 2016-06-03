angular.module('app.exampleApp').controller("exampleController",['$scope', exampleController]);

function exampleController($scope){
   console.log('ExampleCtrl running');
  $scope.exampleValue = "Hello angular and rails"; 
}    