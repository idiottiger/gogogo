package main

import (
   "fmt"
   "math/rand"
)

func add(x int, y int) int{
    return x+y;
}

func swap(x, y string) (string, string){
     return y, x;
}

func main(){
     fmt.Println("number is", rand.Intn(100))
     fmt.Println("value is", add(100,200));
     a, b := swap("a","b");
     fmt.Println(a, b);
}