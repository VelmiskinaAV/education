//
//  PeopleMapper.swift
//  education
//
//  Created by Alexander Mironov on 21.11.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

class PeopleMapper {
    static func map(peoples: [People]) -> People? {
        if peoples.isEmpty {
            return nil
        }
        
        var people = peoples[0]
        
        peoples.forEach { p in
            if p.age > people.age {
                people = p
            }
        }
        
        return people
    }
}
