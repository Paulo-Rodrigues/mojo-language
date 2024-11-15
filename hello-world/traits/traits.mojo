trait SomeTrait:
    fn required_method(self, x: Int): ...

@value
struct SomeStruct(SomeTrait):
    fn required_method(self, x: Int):
        print("SomeStruct.required_method", x)

fn fun_with_traits[T: SomeTrait](t: T):
    t.required_method(42)

fn use_trait():
    var s = SomeStruct()
    fun_with_traits(s)

fn main():
    use_trait()

