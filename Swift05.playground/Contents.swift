//: Playground - noun: a place where people can play

import Cocoa

// SWITCH

// SWITCH IT UP
// Your first switch

var statusCode: Int = 418
var errorString: String = "The request failed with the error:"
//switch statusCode {
//case 400:
//    errorString = "Bad request"
//case 401:
//    errorString = "Unauthorized"
//case 403:
//    errorString = "Forbidden"
//case 404:
//    errorString = "Not found"
//default:
//    errorString = "None"
//}

// Swtich cases can have multiple values
//switch statusCode {
//case 400, 401, 403, 404:
//    errorString = "There was something wrong with the request"
//    fallthrough
//default:
//    errorString += " Please review the request and try again."
//}

// RANGES
// Switch cases can have single values, multiple values or ranges of values
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)"
case 204:
    errorString += " Successfult but no content, \(statusCode)"
case 300...307:
    errorString += " Redirection, \(statusCode)"
case 400...417:
    errorString += " Client error, \(statusCode)"
case 500...505:
    errorString += " Server error, \(statusCode)"
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code"
default:
    errorString = "Unexpected error encountered."
}

//let error = (statusCode, errorString)
//
//error.0
//error.1

// Name the tuple's elements
let error = (code: statusCode, error: errorString)
error.code
error.error

// Pattern matching in tuples
let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("Not items found")
case (404, _):
    print("First item not found")
case (_, 404):
    print("Second item not found")
    
default:
    print("All itmes found")
}

// IF CASE
let age = 25
if case 18...35 = age, age >= 21, age < 30 {
    print("Cool demographic and of drinking age and not an old bean")
}
