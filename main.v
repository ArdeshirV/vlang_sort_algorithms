import rand
import v.time

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

fn selection_sort(mut arr []int) {
    n := len(arr)
    for i := 0; i < n-1; i++ {
        min_idx := i
        for j := i + 1; j < n; j++ {
            if arr[j] < arr[min_idx] {
                min_idx = j
            }
        }
        arr.swap(i, min_idx)
    }
}

fn insertion_sort(mut arr []int) {
    n := len(arr)
    for i := 1; i < n; i++ {
        key := arr[i]
        j := i - 1
        for j >= 0 && arr[j] > key {
            arr[j+1] = arr[j]
            j--
        }
        arr[j+1] = key
    }
}

fn merge_sort(mut arr []int) {
    if len(arr) <= 1 {
        return
    }
    mid := len(arr) / 2
    //left := arr[:mid]
    //right := arr[mid:]
    merge_sort(left)
    merge_sort(right)
    merge(arr, left, right)
}
fn merge(mut arr []int, left []int, right []int) {
    i, j, k := 0, 0, 0
    for i < len(left) && j < len(right) {
        if left[i] < right[j] {
            arr[k] = left[i]
            i++
        } else {
            arr[k] = right[j]
            j++
        }
        k++
    }
    for i < len(left) {
        arr[k] = left[i]
        i++
        k++
    }
    for j < len(right) {
        arr[k] = right[j]
        j++
        k++
    }
}

fn quick_sort(mut arr []int, low int, high int) {
    if low < high {
        pi := partition(arr, low, high)
        quick_sort(arr, low, pi-1)
        quick_sort(arr, pi+1, high)
    }
}
fn partition(mut arr []int, low int, high int) int {
    pivot := arr[high]
    i := low - 1
    for j := low; j <= high-1; j++ {
        if arr[j] < pivot {
            i++
            arr.swap(i, j)
        }
    }
    arr.swap(i+1, high)
    return i + 1
}

