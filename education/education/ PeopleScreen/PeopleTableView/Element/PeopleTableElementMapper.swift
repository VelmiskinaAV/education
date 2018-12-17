//
//  PeopleTableElementMapper.swift
//  education
//
//  Created by Alexander Mironov on 21.11.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

class PeopleTableElementMapper {
    static func map(people: [People], hiddens: Set<Int>) -> [PeopleTableElement] {
        var result: [PeopleTableElement] = []
        
        var counter = 0
        
        people.forEach { p in
            if p.name == "Pug"{
                result.append(.somethingElse(p.name))
            } else if p.age < 18 {
                result.append(.young(p.name, p.age))
            } else if p.age >= 18 && p.age < 25 {
                if !hiddens.contains(counter) {
                    result.append(.middle(MiddleCell(name: p.name, age: p.age, id: counter)))
                }
            } else {
                result.append(.old(p.name, p.age))
            }
            
            counter += 1
        }
        
        return result
    }
}
