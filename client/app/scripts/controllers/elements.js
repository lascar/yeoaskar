// app/scripts/controllers/elements.js

'use strict';

/**
 * @ngdoc function
 * @name yeoAskarApp.controller:ElementsCtrl
 * @description
 * # ElementsCtrl
 * Controller of the yeoAskarApp
 */
angular.module('yeoAskarApp')
  .controller('ElementsCtrl', ['$scope', 'Element', function ($scope, Element) {
    $scope.elements = Element.query();
  }]);
