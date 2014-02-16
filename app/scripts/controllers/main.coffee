'use strict'

app.controller 'MainCtrl', ['$scope', 'tasks', ($scope, tasks) ->
    $scope.newTask = ''
    $scope.awesomeThings = tasks.list
    $scope.todoList = tasks.list

    $scope.add = ->
      $scope.awesomeThings.push $scope.newTask
]
