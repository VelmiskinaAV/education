//
//  ListOfPeopleTableElement.swift
//  education
//
//  Created by Alexander Mironov on 17.12.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

enum ListOfPeopleTableElement {
    case header()
    case firstLetterOfName(Character) // name, secondName, surname
    case fullName(String) // name, secondName, surname
    case separator()
}
