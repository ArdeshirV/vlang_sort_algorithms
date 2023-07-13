
fn main() {
    println("The V Programming Language")
}

fn evaluate_speed() {
    start := v.time.now()

    //some_algorithm()

    end := v.time.now()
    elapsed := end - start

    println('Execution time:', elapsed)
}

fn create_array_with_random_elements(size int) []int {
	mut array := [size]int{}

    for i := 0; i < len(array); i++ {
        array[i] = rand.intn(size)
    }

   return array
}

fn clone_array(mut arr []int) []int {
    cloned_array := [len(arr)]int{}

    for i := 0; i < len(array); i++ {
        cloned_array[i] = array[i]
    }

    return cloned_array
}

