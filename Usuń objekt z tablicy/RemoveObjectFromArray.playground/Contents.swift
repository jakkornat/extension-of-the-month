//: Playground - noun: a place where people can play

import UIKit

// @author Jakub Kornatowski
extension Array where Element: Equatable {
    
    // Remove first collection element that is equal to the given `object`:
    mutating func remove(object: Element) {
        if let index = index(of: object){
            remove(at: index)
        }
    }
}

// Example

class Person{
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

extension Person: Equatable{
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name
    }
}

let jakub = Person(name: "Jakub")
let kasia = Person(name: "Kasia")

var people = [jakub, kasia]

print(people.count)   // 2  [Person.name = Jakub, Person.name = Kasia]

people.remove(object: jakub)

print(people.count)   // 1  [Person.name = Kasia]

