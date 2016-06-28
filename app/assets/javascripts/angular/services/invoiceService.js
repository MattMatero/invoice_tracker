angular.module('app.invoiceTracker', ['ngResource']).service('invoiceService', invoiceService);

invoiceService.$inject = ['$rootScope', '$http', '$resource'];
function invoiceService($rootScope, $http, $resource){
  var service = this;

  service.resource = $resource('invoices/new',
    {id: 1, name: "Michelle"}, // default param
    {
      createInvoice: { method: "POST", params: {} }
    });

  service.createInvoice = function(){
    console.log("Sending data...");

    service.resource.createInvoice();
  };

}
