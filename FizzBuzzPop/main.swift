//
//  main.swift
//  FizzBuzzPop
//
//  Created by Vasiliy Shannikov on 04.12.2021.
//

import Foundation

@resultBuilder
struct SubstitutionBuilder {
    static func buildBlock(_ components: [Int]) -> String {
        var sustitutionArr = [String]()
        components.forEach{comp in
                        var subsitution = ""
                        if comp % 3 == 0 {subsitution += "fizz" }
                        if comp % 5 == 0 {subsitution += "buzz" }
                        if comp % 7 == 0 {subsitution += "pop" }
                if subsitution == "" {
                            subsitution = String(comp)
                        }
                sustitutionArr.append(subsitution)
        }
        return sustitutionArr.joined(separator: " ")
        }
    }
func build(@SubstitutionBuilder _ content: () -> String ) -> String {
    return content()
}

func play () {
    print("Please enter some numbers separated by space or another divider.")
    let a = readLine()!
    let input = a.components(separatedBy: [" ", "/", ":", ",", ";"])
    var valudInput = true
    var numbers = [Int]()
        for number in  input {
            if let a = Int(number){
                numbers.append(a)
            } else {
               valudInput = false
               break
            }
        }
    if valudInput{
     print("Result is : " + build {numbers})
    }
    else {
        print ("Input data error.")
    }
    print("Would you like to try again? \n Please type 'y' - if yes, or enter another character if no")
    if readLine()!.uppercased() == "Y" {
        play()
    }
    else {print("Goodbuy, see you next time!")}
    
}

print("Hello!!!")
play()





