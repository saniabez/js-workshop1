'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'devApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

  it 'todoList to be defined' , () ->
    expect(scope.todoList).toBeDefined() 

  it 'should attach a list of todoList to the scope' , () ->
    expect(scope.todoList.length).toBe 2

