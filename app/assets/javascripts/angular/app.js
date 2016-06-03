@app = angular.module('app', [  ])
  //for compatibility with Rails CSRF protection  
  @app.config([   '$httpProvider', function($httpProvider){
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content') ]); 
  }  
    
 @app.run(function(){
  console.log('angular app running');
  });  