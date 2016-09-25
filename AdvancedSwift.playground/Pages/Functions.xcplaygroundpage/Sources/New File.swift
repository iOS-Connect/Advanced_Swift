import Foundation

public struct Account {
    let name: String
    let age: Int
    public init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


public func saveToDatabase(person: Account) {
    print("Saved \(person.name) to database")
}
