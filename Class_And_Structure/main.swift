//
//  main.swift
//  Class_And_Structure
//
//  Created by iFlame on 16/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import Foundation

//-----------------Structures-----------------------
struct studentMarks {
    var mark1 = 100
    var mark2 = 200
    var mark3 = 300
}
let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")



struct MarksStruct {
    var mark: Int
    
    init(mark: Int) {
        self.mark = mark
    }
}
var aStruct = MarksStruct(mark: 98)
var bStruct = aStruct
bStruct.mark = 97
print(aStruct.mark) // 98
print(bStruct.mark) // 97


//--------------------

struct markStruct {
    var mark1: Int
    var mark2: Int
    var mark3: Int
    
    init(mark1: Int, mark2: Int, mark3: Int) {
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}

var marks3 = markStruct(mark1: 98, mark2: 96, mark3:100)
print(marks3.mark1)
print(marks3.mark2)
print(marks3.mark3)

//-------------------Class-------------------------

/* class Example */
class MarksStruct1 {
    var mark: Int
    init(mark: Int) {
        self.mark = mark
    }
}

class studentMarks1 {
    var mark = 300
}
let marks4 = studentMarks1()
print("Mark is \(marks4.mark)")


//-----------------Class Identity Operators--------------

class std : Equatable
{
    var myproperty : String
    init(s:  String)
    {
        myproperty = s
    }
}
func ==(lhs: std, rhs: std) -> Bool
{
    return lhs.myproperty == rhs.myproperty
}

let spClass1 = std(s: "Hello")
let spClass2 = std(s: "Hello")

spClass1 == spClass2
print("\(spClass1)")

spClass1 !== spClass2
print("\(spClass2)")
