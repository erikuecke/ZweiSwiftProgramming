//: Playground - noun: a place where people can play

import Cocoa

// OPTIONALS

// OPTIONAL TYPES

// Declaring an optional type

//var errorCodeString: String?
//errorCodeString = "404"
//
//// Logging the value of the optional to the console
////print(errorCodeString)
//
//// Adding a condition
//if errorCodeString != nil {
//    let theError = errorCodeString!
//    print(theError)
//}

// OPTIONAL BINDING
// Optional Binding
//if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
//        print("\(theError): \(errorCodeInteger)")
//}

// OPTIONAL CHAINING
// Optional Chaining
var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?

if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
    errorDescription = "\(errorCodeInteger + 200): resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercased()
errorDescription

// Modifying an Optional in Place
// Modifying in Place
upCaseErrorDescription?.append(" PLEASE TRY AGAIN.")
upCaseErrorDescription

// THE NIL COALSESCING OPERATOR
// Using optional binding to parse errorDescription

//let description: String
//if let errorDescription = errorDescription {
//    description = errorDescription
//} else {
//    description = "No error"
//}

// Using the nil coalescing operator
let description = errorDescription ?? "No error"

var bronze: String? = nil













