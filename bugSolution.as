```actionscript
function myFunction(param1:String, param2:int):void {
  //Check parameter types and handle type errors if necessary
  if (typeof param1 != 'string'){
    throw new Error("param1 must be a String");
  }
  if (typeof param2 != 'number'){
    throw new Error("param2 must be a Number");
  }

  // ... some code ...
  trace(param1);
  trace(param2);
}

myFunction("Hello", 10);

//This will now throw errors:
//myFunction(10, "world");
//myFunction(true, 10);
```