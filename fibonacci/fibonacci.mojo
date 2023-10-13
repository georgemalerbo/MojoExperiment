from python import Python

fn fibonacci(n: Int) raises -> Int:
    if n <= 1:
        return n
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)


fn main() raises:
    let py_time = Python.import_module("time")
    let py_builtins = Python.import_module("builtins")
    let start_time: PythonObject = py_time.time()
    let fib_number: Int = fibonacci(35)
    let end_time: PythonObject = py_time.time()
    let time_taken:PythonObject = end_time - start_time
    print("Fibonacci number:", fib_number, "Time taken:", time_taken)
    

   


