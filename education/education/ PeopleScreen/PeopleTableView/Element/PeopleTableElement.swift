//
//  PeopleTableElement.swift
//  education
//
//  Created by Alexander Mironov on 21.11.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

enum PeopleTableElement {
    case young(String, UInt) //name, age
    case old(String, UInt) //name, age
    case middle(MiddleCell)
    case somethingElse(String) //name
}

struct MiddleCell {
    let name: String
    let age: UInt
    let id: Int
}
