//: Playground - noun: a place where people can play

import Cocoa


// PROTOCOL EXTENSIONS
// MODELING EXERCISE

protocol Exercise: CustomStringConvertible {
    var name: String { get }
    var title: String { get }
    var caloriesBurned: Double { get }
    var minutes: Double { get }
}

// DEFAULT IMPLEMENTATION WITH PROTOCOL EXTENSION
// Making Exercise inherit frmo CustomStringConvertible
extension Exercise {
    var description: String {
        return "Exercise(\(name), burned \(caloriesBurned) calories in \(minutes) minutes)"
    }
    var caloriesBurnedPerMinute: Double {
        return caloriesBurned / minutes
    }
    var title: String {
        return "\(name) - \(minutes) minutes"
    }
}


struct EllipticalWorkout: Exercise {
    let name = "Elliptical Workout"
    let caloriesBurned: Double
    let minutes: Double
}

let ellipticalWorkout = EllipticalWorkout(caloriesBurned: 335, minutes: 30)

struct TreadmillWorkout: Exercise {
    let name = "Treadmill Workout"
    let caloriesBurned: Double
    let minutes: Double
    let laps: Double
}

// Overridin a protocols default implementation
extension TreadmillWorkout {
    var description: String {
        return "TreadmillWorkout(\(caloriesBurned) calories and \(laps) laps in \(minutes)"
    }
}

let runningWorkout = TreadmillWorkout(caloriesBurned: 350, minutes: 25, laps: 10.5)

// EXTENDING EXERCISE
// Computing calories burned per minute, generically


print(ellipticalWorkout.caloriesBurnedPerMinute)
print(runningWorkout.caloriesBurnedPerMinute)

print(ellipticalWorkout)
print(runningWorkout)


// PROTOCOL EXTENSION WHERE CLAUSES
// Extending Sequences containing Exercises

extension Sequence where Iterator.Element == Exercise {
    func totalCaloriesBurned() -> Double {
        var total: Double = 0
        for exercise in self {
            total += exercise.caloriesBurned
        }
        return total
    }
}

// Calling totalCaloriesBurned() on an array of Exercises
let mondayWorkout: [Exercise] = [ellipticalWorkout, runningWorkout]
print(mondayWorkout.totalCaloriesBurned())


for exercise in mondayWorkout {
    print(exercise.title)
}

print(ellipticalWorkout.title)














