angular.module('app.invoiceTracker').controller("invoiceController",['$scope', invoiceController]);

function invoiceController($scope){
  $scope.invoice = {};
  
  $scope.tasks = [0];
  
  $scope.print = function(){
    console.log($scope.invoice);
  };

  $scope.addTask = function(){
    $scope.tasks.push($scope.tasks[$scope.tasks.length-1]+1);
  };

  $scope.invoices = [
    { id: "1",
      firstName: "Bob",
      lastName:"W",
      "email": "bobw@gmail.com",
      phone:"5555555555",
      tasks: [
        {name:"brakes", amount:"350", comments:"Tipped well" }
      ]
    },

    { id: "2",
      firstName: "Ron",
      lastName:"M",
      "email": "ronm@gmail.com",
      phone:"6666666666",
      tasks: [
        {name:"rotors", amount:"900", comments:"Tipped poorly" }
      ]
    }
  ];
}
