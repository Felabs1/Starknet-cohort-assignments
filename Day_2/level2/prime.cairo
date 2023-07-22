use debug::PrintTrait;

fn main(){
    let num:u64 = 101; // number to input
    let mut divisor:u64 = 2;
    let mut succesful_divisions:u64 = 0;

    
   
    let result = loop {
        if num < 2 {
            break;
        }

        if num % divisor == 0 {
            succesful_divisions += 1;
        }

        if num == divisor {
            break;
        }

        divisor += 1;
    };

    if succesful_divisions == 1 {
        'number is prime'.print();
    }else{
        'number is not prime'.print();
    }
}