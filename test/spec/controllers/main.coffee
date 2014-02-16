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
      tasks: list:  [
        'phone1'
        'phone2'
        ]
    }

  it 'todoList to be defined' ,() ->
    expect(scope.todoList).toBeDefined() 

  it 'should attach a list of todoList to the scope' , () ->
    expect(scope.todoList.length).toBe 2

  it 'method add should be defined' ,() ->
    scope.newTask = 'test'
    scope.add()
    expect(scope.todoList.length).toBe 3

