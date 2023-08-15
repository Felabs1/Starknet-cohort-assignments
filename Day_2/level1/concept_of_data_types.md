# Concept of data types

every value in cairo has a certain data type whiich tells cairo the type of data being specified so it knows how to work with that data

cairo is a statically typed language meaning that all the variable types are known at compile time

## scalar types

- ### Felt:
  occurs if you dont specify the type of a variable argument represented by `felt252`
- ### Integer types

  this is a number without fractional check declared as a wide range depending on size

  - 8 bit as `u8`
  - 16 bit as `u16`
  - 32 bit as `u32` or `usize`

- ### the boolean type

  as any other language we only jave `true` or `false`

- ### the tuple type
  `let tup: (u32, u64, bool) = (10, 20, true);`

## type casting

you can use the `try_into` and `into` methods or the `TryInto` and `Into` traits

- The `try_into` method allows for safe type casting when the target type might not fit the source value
- `into` method can be used for type casting when success is guaranteed, such as when the source type is smaller than the destination type.
