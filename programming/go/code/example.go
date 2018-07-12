package main

import (
	"fmt"
)

type Student struct {
	name string
	id   int
}

func add(x int, y int) int {
	return x + y
}

func swap(x, y string) (string, string) {
	return y, x
}

func calSum(start int, end int) int {
	sum := 0
	for i := start; i <= end; i++ {
		sum += i
	}
	return sum
}

func test_defer() {
	defer fmt.Println("step 2")
	defer fmt.Println("step 4")
	fmt.Println("step 1")
	fmt.Println("step 3")
}

func test_defer_2() {
	i := 0
	defer fmt.Println("number:", i)
	i++
	return
}

type Postion struct {
	x float32
	y float32
}

func (p *Postion) Scale(scale float32) {
	p.x = p.x * scale
	p.y = p.y * scale
}

func (p Postion) String() string {
	return fmt.Sprintf("x is: %v, y is: %v", p.x, p.y)
}

func testMap() {
	posMap := make(map[string]Postion)

	fmt.Println("len is:", len(posMap))
	posMap["West"] = Postion{20.0, 30.1}
	posMap["East"] = Postion{30, 40}

	fmt.Println(posMap)
	fmt.Println("len is:", len(posMap))

	fmt.Println(posMap["East"])
	delete(posMap, "East")

	fmt.Println(posMap)

	pPos := &Postion{10, 20}
	pPos.Scale(1.5)
	fmt.Println("pos:", *pPos)
}

func main() {
	testMap()
}
