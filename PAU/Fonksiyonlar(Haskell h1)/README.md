# README.md - Ogrenci Module

This module is designed for operations on a three-element tuple. The functions within the module allow access to each element of the tuple.

## Usage

### `ilk` Function

```haskell
ilk :: (a, b, c) -> a
```

This function provides access to the first element of the three-element tuple. Example usage:

```haskell
-- Example
let tuple = (42, "Hello", True)
print $ ilk tuple
-- Output: 42
```

### `ikinci` Function

```haskell
ikinci :: (a, b, c) -> b
```

This function provides access to the second element of the three-element tuple. Example usage:

```haskell
-- Example
let tuple = (42, "Hello", True)
print $ ikinci tuple
-- Output: "Hello"
```

### `ucuncu` Function

```haskell
ucuncu :: (a, b, c) -> c
```

This function provides access to the third element of the three-element tuple. Example usage:

```haskell
-- Example
let tuple = (42, "Hello", True)
print $ ucuncu tuple
-- Output: True
```

## Error Handling

All three functions do not include error messages for unexpected situations. If inappropriate parameters are passed to the functions, Haskell's natural behavior of error messages will be encountered.
