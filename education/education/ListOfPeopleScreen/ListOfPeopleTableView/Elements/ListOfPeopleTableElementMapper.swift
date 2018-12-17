//
//  ListOfPeopleTableElementMapper.swift
//  education
//
//  Created by Alexander Mironov on 17.12.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

class ListOfPeopleTableElementMapper {
    static func map(people: [ListOfPeople]) -> [ListOfPeopleTableElement] {
        var result: [ListOfPeopleTableElement] = []
        
        let sortedList = people.sorted {$0.name < $1.name}
        
        var firstLetter = people[0].name[people[0].name.startIndex]
        
        result.append(.header())
        //result.append(.separator())
        
        sortedList.forEach { p in

            if p.name[p.name.startIndex] != firstLetter {
                
                firstLetter = p.name[p.name.startIndex]
                result.append(.firstLetterOfName(firstLetter))
                result.append(.separator())
            }
            result.append(.fullName("\(p.name) \(p.surname) \(p.secondName[p.secondName.startIndex])."))
            result.append(.separator())
        }
        
        return result
    }
}
