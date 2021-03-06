// app/scripts/app.js

'use strict';

/**
 * @ngdoc overview
 * @name yeoaskar
 * @description
 * # yeoaskar
 *
 * Main module of the application.
 */
var app = angular.module('yeoaskar', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ]);

app.config(function ($routeProvider) {
  $routeProvider
    .when('/', {
      templateUrl: 'views/main.html',
      controller: 'MainCtrl'
    })
    .when('/about', {
      templateUrl: 'views/about.html',
      controller: 'AboutCtrl'
    })
    .when('/groups', {
      templateUrl: 'views/elements.html',
      controller: 'ElementsCtrl'
    })
    .otherwise({
      redirectTo: '/'
    });
});

app.factory('Element', ['$resource', function($resource) {
  return $resource('/api/v1]/elements/:id.json', null, {
    'update': { method:'PUT' }
  });
}]);
