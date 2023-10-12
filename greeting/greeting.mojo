from python import Python
# Import python module for Python interoperability


fn get_name() raises -> PythonObject:
    # declares a function called 'get_name' that returns a value of type 'PythonObject'.
        # `-> PythonObject` specifies the type of the function's return value.
    # 'raises' keyword indicates that a function may raise an exception.
        # 'get_name()' calls 'Python.import_module() function', which may raise an exception if the module name is invalid or the module cannot be imported.
            # Mojo’s error handling semantics require that any function that may raise an exception must declare it with the “raises” keyword, and any caller of such a function must also declare it. 
            # Therefore, the get_name function must declare that it raises an exception with the “raises” keyword and, consequently, the main function must do the same, as it calls the get_name function
    
    let py = Python.import_module("builtins")
    # declares a variable 'py' and assigns it the value returned by a function that imports the Python module builtins
    # 'import_module()' imports a Python module. 
    # This provides you with a module object you can use just like in Python. 
        # 'builtins', provides access to Python's built-in namespace elements, including the 'input()' function in this instance.
    
    let user_input = py.input("What is your name?\n")
    # declare a variable 'user_input' and assign to the value returned by the input() function from the Python module 'py'
    # input() function always returns a string object
    return user_input


fn main() raises:
    let name = get_name()
    # declare a variable 'name' and assigns it the value returned by calling a function 'get_name()'
    
    print("Hello,", name)
    # The Mojo 'print()' function prints a sequence of elements, joined by spaces, followed by a newline.

