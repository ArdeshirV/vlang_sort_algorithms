
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

fn bubble_sort(mut arr []int) {
    n := len(arr)
    for i := 0; i < n-1; i++ {
        for j := 0; j < n-i-1; j++ {
            if arr[j] > arr[j+1] {
                arr.swap(j, j+1)
            }
        }
    }
}

