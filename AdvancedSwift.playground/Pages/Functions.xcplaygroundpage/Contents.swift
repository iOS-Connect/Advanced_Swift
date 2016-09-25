//: [Previous](@previous)

import Foundation


// Sweet curry

// Curry = Parial Application, one arg at a time

func createAccount(name: String , age: Int) -> Account {
    return Account(name: name, age: age)
}

let john = createAccount(name: "John", age: 31)

// what if the fields are on 2 separate pages?

// we really want to just add the name then have another function which takes the age, and finally makes an account


















// we need a curriable function
Account.init // the existing function takes both string and int



func curriedAccount(Cname: String) -> (Int) -> Account {

    func curried(Cage: Int) -> Account {
        return Account(name: Cname, age: Cage)
    }

    return curried
}

let partialJay: (Int) -> Account = curriedAccount(Cname: "Jay")

// on a new page of your app

let jay = partialJay(25)
saveToDatabase(person: jay)


















// Methods are curried functions

let location: String = "hacker dojo"

//note String is a Struct, but this is true for all object types

location.capitalized(with: nil)


let addCaps = String.capitalized

let caps = addCaps(location)
caps(nil)




let logger: () -> (String) -> () = {
    let date = Date()
    return { text in
        print("\(date): \(text)")
    }
}

let myLogger = logger()



myLogger("Initialized")
sleep(3)
myLogger("DoneSleeping")

// Note the date is the same because we captured the value of the date in our returned function. 














//: [Next](@next)
