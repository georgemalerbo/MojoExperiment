# Mojo functions can be declared with either 'fn' or 'def'. 
# The 'fn' declaration ensures that functions are strongly typed.

# The `x: Int` and `y: Int` parameters specify the types of the function's arguments.
# `-> Int` specifies the type of the function's return value.

fn add(x: Int, y: Int) -> Int:
    return x + y


# 'var z: Int' declares a variable named `z` of type `Int`.
# Mojo 'var' and 'let' declare variables. var variables are mutable, while let variables are immutable

fn main():
    var z: Int = add(7, 8)
    print(z)
