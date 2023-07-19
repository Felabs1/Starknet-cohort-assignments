use debug::PrintTrait;

fn main() {
    let num = 23; /// number being tested
    let mut divisor: u64 = 2;
    let mut isPrimeCounter = 0;
    if num == 1 {
        isPrimeCounter = 0;
    }

    let result = loop {
        if num % divisor == 0 {
            
            isPrimeCounter += 1
        }

        divisor.print();

        if divisor == num  {
            break;
        }

        divisor += 1;
    
    };
    

    if isPrimeCounter == 1 {
        'number is prime'.print();
    }else{
        'number is not prime'.print();
    }
}