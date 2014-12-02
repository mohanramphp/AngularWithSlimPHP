'use strict';

/* Directives */
var directives = {};

directives.headerMenu = function() {
  return {
      restrict: 'AE',
	  replace: 'true',
      templateUrl: 'partials/header_menu.html'
  };
};

directives.myGrid = function() {
	return {
		restrict: 'AE',
		link: function(scope, element, attrs) {
			$(element).dataTable({
				"processing": true,
				"serverSide": true,
				"ajax": "service/customers"	
			});
		}
	};
};

//Example to include jquery plugins as directives
// App.directive('directiveName', function() {
    // return {
        // restrict: 'A',
        // link: function(scope, element, attrs) {
            // $(element).'pluginActivationFunction'(scope.$eval(attrs.directiveName));
        // }
    // };
// });
// directives.helloWorld = function() {
  // return {
      // restrict: 'AE',
      // replace: 'true',
      // template: '<h3>Hello World!!</h3>'
  // };
// }

/**
* Defining Directives in myApp.directives module
*/
angular.module('myApp.directives', []).directive(directives);