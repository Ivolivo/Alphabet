//: Playground - noun: a place where people can play

import UIKit

func moveAlphabet(letters: String, number: Int) {
    
    let string = letters
    
    var stringArray = Array(string.characters)
    
    let check1 = stringArray[0]
    
    let check2 = stringArray[1]
    
    let moveBy = number
    
    var elements : [Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q", "r","s","t","u","v","w","x","y","z"]
    
    if elements.contains(check1){
        let startNum = elements.indexOf(check1)
        var moveNum = startNum! + moveBy
        if moveNum < 0 && moveNum > -27 {
            moveNum = 26 + moveNum
        }
        if moveNum <= -27 {
            let rem = moveNum % 26
            moveNum = 26 + rem
        }
        if moveNum > 25 && moveNum < 50{
            moveNum = moveNum - 25
        }
        if moveNum >= 50 {
            moveNum = moveNum % 25
        }
        
        print("\(elements[moveNum])", terminator: "")
    }
    
    if elements.contains(check2) {
        let startNum = elements.indexOf(check2)
        var moveNum = startNum! + moveBy
        if moveNum < 0 && moveNum > -27{
            moveNum = 26 + moveNum
        }
        if moveNum <= -27 {
            let rem = moveNum % 26
            moveNum = 26 + rem
        }
        if moveNum > 25 && moveNum < 50{
            moveNum = moveNum - 25
        }
        if moveNum >= 50 {
            moveNum = moveNum % 25
        }
        print("\(elements[moveNum])", terminator: "")
    }
}

moveAlphabet("ab", number: -3)
 
