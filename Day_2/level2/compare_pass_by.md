# Comparison between pass by value, pass by reference and pass by snapshot

## Pass by value

when a variable is passed by value, ownership of the variable is transferred to the function

```
use debug::PrintTrait;

fn area(len: u32, wid: u32) -> u32 {
    len * wid
}

fn main(){
    let a = area(3,2);
    a.print();
}
```

## Pass by snapshot

a snapshot is an immutable view of a value at a certain point in time.

it tries to solve the issue of the pass by value in cairo which prevents us from using a value after we have moved it

here is an example of using a snapshot

```
use array::ArrayTrait;
use debug::PrintTrait;

fn main() {
    let mut arr1 = ArrayTrait::<u128>::new();

    let first_snapshot = @arr1; // Take a snapshot of `arr1` at this point in time

    arr1.append(1); // Mutate `arr1` by appending a value

    let first_length = calculate_length(
        first_snapshot
    ); // Calculate the length of the array when the snapshot was taken

    let second_length = calculate_length(@arr1); // Calculate the current length of the array

    first_length.print();

    second_length.print();
}

fn calculate_length(arr: @Array<u128>) -> usize {
    arr.len()
}
```

## pass by reference

If you want to keep ownership of the variable and know that your function will mutate it, you can pass it as a mutable reference with ref

Mutable references are actually mutable values passed to a function that are implicitly returned at the end of the function

In Cairo, a parameter can be passed as mutable reference using the `ref` modifier as shown below.

```
use debug::PrintTrait;
#[derive(Copy, Drop)]
struct Rectangle {
   height: u64,
   width: u64,
}

fn main() {
   let mut rec = Rectangle { height: 3, width: 10 };
   flip(ref rec);
   rec.height.print();
   rec.width.print();
}

fn flip(ref rec: Rectangle) {
   let temp = rec.height;
   rec.height = rec.width;
   rec.width = temp;
}
```
