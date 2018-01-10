import UIKit

// Adds numbers 1-255 to an array

var arr: [Int] = [Int]()

for i in 1...255 {

    arr.append(i)

}

// Swaps two random values in an array
// use the arc4random_uniform(UInt32) function

var firstVal = Int(arc4random_uniform(UInt32(arr.count)))
//print("first value:", arr[firstVal])

var secondVal = Int(arc4random_uniform(UInt32(arr.count)))
//print("second value:", arr[secondVal])

arr.swapAt(firstVal, secondVal)

//print(arr)

// Swaps random values 100 times

for _ in 0..<100 {

    let firstVal = Int(arc4random_uniform(UInt32(arr.count)))

    let secondVal = Int(arc4random_uniform(UInt32(arr.count)))

    arr.swapAt(firstVal, secondVal)

}

//print(arr)

// Remove 42 from array, print phrase and index of where 42 was

var value: Int? = 42

if let unwrappedValue = value {
    
    if let index = arr.index(of: unwrappedValue) {
        
        arr.remove(at: index)
        
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(index)")
    
    }
    
}





