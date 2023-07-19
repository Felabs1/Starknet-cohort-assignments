# Comparing cairo with other programming languages used in the ecosystem

- when executed by the prover, it is similar to any other programming language. this ccould lead to some performance overhead because cairo is virtualized and because the operations were not specifically designed for maximum good
- When a generated proof is verified by the user, it has to be as cheap as possible since it could potentially be verifiable on many very small machines. fortunately, verifying is faster than computing and cairo has an advantage for example(sorting an array in cairo would cost the same price as copying it)
- as compared to other languages, cairo memory access is can not be changed, therefore developers should think carefully on how to manage their data structures
