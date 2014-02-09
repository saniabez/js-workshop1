describe "angularjs homepage", ->
  it "should greet the named user", ->
    browser.get "/"
    element(By.model("yourName")).sendKeys "Julie"
    greeting = element(By.binding("yourName"))
    expect(greeting.getText()).toEqual "Hello Julie!"

  describe "todo list", ->
    todoList = undefined
    beforeEach ->
      browser.get "/"
      todoList = element.all(By.repeater("thing in awesomeThings"))

    it "should list todos", ->
      expect(todoList.count()).toEqual 3
      expect(todoList.get(1).getText()).toEqual "AngularJS"

    it "should add a todo", ->
      addTodo = element(By.model("newTask"))
      addButton = element(By.css("[value=\"add\"]"))
      addTodo.sendKeys "write a protractor test"
      addButton.click()
      expect(todoList.count()).toEqual 4
      expect(todoList.get(3).getText()).toEqual "write a protractor test"
