# SNTLS Language Definition

SNTLS is an object-oriented programming language, built with simplicity in mind.

# Syntax:

## Invoking Functions:

```
@function_name(param1, param2)
```

or

```
@function_name param1, param 2
```

### Example:

```
@out ("Hello, World!")
```

or

```
@out "Hello, World"
```

## Variables:

```
make variable_name = value
```

or

```
// Has No Value (None)
make variable_name
```

### Examples:

```
make greeting = "Hello, World"
```

or

```
make empty
```

## Comments:

```
// Single Line Comment
```

or

```
/*
Multiline Comment
*/
```

## Functions:

```
// Function, private by default
func functionName() ->
    // Code in scope
// Code out of scope
```

or

```
// Public Function
func functionName() pub ->
    // Code in scope
// Code out of scope
```

### Examples:

```
func greet() ->
    @out "Hello, World!"

@greet
```

or

```
func greet() pub ->
    @out "Hello, World!"

@greet
```

## Operators

### Assignment:

```

@variable_name = new_value

```

or

```

@variable_name = @other_variable_name

```

or

```

@variable_name = @function_call

```

### Example:

```

@greeting = "Hello, World!"

```

or

```

make initial_greeting = "Hello, World!"
make greeting = ""

@greeting = @initial_greeting

```

or

```

func getGreeting() ->
return "Hello, World!"

make greeting = @getGreeting

// Same Value
@greeting = @getGreeting()

```
