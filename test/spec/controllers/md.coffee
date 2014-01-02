'use strict'

describe 'Controller: MdCtrl', () ->

  # load the controller's module
  beforeEach module 'hanachingithubioApp'

  MdCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MdCtrl = $controller 'MdCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
