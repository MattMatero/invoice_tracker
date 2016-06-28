angular.module('app.invoiceTracker', ['ngResource']).service('invoiceService', invoiceService);

invoiceService.$inject = ['$rootScope', '$http', '$resource'];
function invoiceService($rootScope, $http, $resource){

  return {
    createInvoice : createInvoice
  };

  var service = this;

  function createInvoice(){
    console.log("Sending data...");
    service.resource.CreateInvoice();
  }


  service.resource = $resource('invoices/new',
      {id: 1, name: "Michelle"}, // default param
      {
        CreateInvoice: { method: "POST", params: {} }
      });

}
