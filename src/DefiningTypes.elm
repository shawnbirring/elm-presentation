module DefiningTypes exposing (..)
-- defining types with type annotations

-- Integers
grade : Int 
grade = 3

-- Floats
gpa : Float
gpa = 3.5

-- Booleans
isPassing : Bool
isPassing = True

-- Strings
name : String
name = "John"

-- Lists
grades : List Int
grades = [3, 4, 5]

-- Tuples
student : (String, Int)
student = ("John", 3)

-- Records
type alias Student = 
    { name : String
    , grade : Int
    }

student : Student
student = 
    { name = "John"
    , grade = 3
    }

-- Custom types
type Grade = A | B | C | D | F
g1 : Grade
g1 = A