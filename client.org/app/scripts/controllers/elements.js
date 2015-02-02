// app/scripts/controllers/elements.js

'use strict';

/**
 * @ngdoc function
 * @name yeoaskar.controller:ElementsCtrl
 * @description
 * # ElementsCtrl
 * Controller of the yeoaskar
 */
angular.module('yeoaskar')
  .controller('ElementsCtrl', ['$scope', 'Element', function ($scope, Element) {
    $scope.elements = Element.query();
  }]);
