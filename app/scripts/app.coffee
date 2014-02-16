'use strict'

window.app = angular.module('devApp', [
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'ngMockE2E'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        resolve:
             tasks: ['Tasks', (Tasks) ->
                Tasks.get().$promise
             ]
      .otherwise
        redirectTo: '/'
