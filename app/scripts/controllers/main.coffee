'use strict'

app.controller 'MainCtrl', ['$scope', ($scope) ->
    $scope.newTask = ''
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    $scope.todoList = [
      '1'
      '2'
      '3'
    ]

    $scope.add = ->
      $scope.awesomeThings.push $scope.newTask
]
