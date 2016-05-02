class CalculatorLibrary:
    def __init__(self):
        self.a = 'check'
        self.b = 'do'
        pass

    def result_should_be(self, value):
        assert value == self.a

    def do_something(self):
        return self.b

    def do_something_else(self, value):
        self.result_should_be(value)
        return self.do_something()
