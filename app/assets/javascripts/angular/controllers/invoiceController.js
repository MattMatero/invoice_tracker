angular.module('app.invoiceTracker').controller("invoiceController",['$scope', invoiceController]);

function invoiceController($scope){
   console.log('InvoiceCtrl running');
  $scope.exampleValue = "Hello angular and rails"; 
}    
