```actionscript
function myFunction(param1:String, param2:int):void {
  // ... some code ...
  trace(param1);
  trace(param2);
}

myFunction("Hello", 10);

// The bug is in the myFunction signature.  In some cases (due to
// implicit type coercion) AS3 will not throw an error if param1 is
// passed as a number, which can lead to unexpected behaviour
// if it isn't checked inside the function itself. 

// Example where it's not immediately obvious:

myFunction(10, "world"); //No error, but trace(param1) will be 10, and trace(param2) will be NaN
```