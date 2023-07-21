use debug::PrintTrait;
use array::ArrayTrait;
fn main() {
    let mut a: Array<u32> = ArrayTrait::new();
    let mut b: Array<u32> = ArrayTrait::new();
    let mut outer_loop_index: u32 = 0;
    let mut inner_loop_index: u32 = 0;
    a.append(0);
    a.append(9);
    a.append(5);
    a.append(1);
    a.append(4);

    
    loop {
        let mut x = *a.at(outer_loop_index);
        loop {
            let mut y = *a.at(inner_loop_index);
            if x < y {
                b.append(x);
            }
            inner_loop_index += 1;
        };

        outer_loop_index += 1;
    };
}