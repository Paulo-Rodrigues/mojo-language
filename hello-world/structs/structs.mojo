struct Person:
    var name: String
    var surname: String

    fn __init__(inout self, name: String, surname: String):
        self.name = name
        self.surname = surname

    fn greet(self):
        print("Hello, my name is " + self.name + " " + self.surname)

fn main():
    var person = Person("Alice", "Smith")
    person.greet()
