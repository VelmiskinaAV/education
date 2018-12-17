//
//  PhoneBookService.swift
//  education
//
//  Created by Alexander Mironov on 17.12.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import RxSwift
import RxCocoa

class PhoneBookService {
    static func getPeoples() -> Observable<[ListOfPeople]> {
        let listOfPeople = [ListOfPeople(surname: "Сверлов", name: "Дмитрий", secondName: "Леонидович"),
                            ListOfPeople(surname: "Турганов", name: "Владимир", secondName: "Константинович"),
                            ListOfPeople(surname: "Звягинцева", name: "Виктория", secondName: "Петровна"),
                            ListOfPeople(surname: "Семенская", name: "Вероника", secondName: "Николаевна"),
                            ListOfPeople(surname: "Кузнецова", name: "Ирина", secondName: "Сергеевна"),
                            ListOfPeople(surname: "Вершинина", name: "Динара", secondName: "Кирилловна"),
                            ListOfPeople(surname: "Миронов", name: "Дмитрий", secondName: "Павлович"),
                            ListOfPeople(surname: "Сверлова", name: "Виктория", secondName: "Николаевна"),
                            ListOfPeople(surname: "Серков", name: "Виктор", secondName: "Михайлович"),
                            ListOfPeople(surname: "Вершини", name: "Дмитрий", secondName: "Кириллович")]
        
        return Observable
            .create { observer in
                
                observer.onNext(listOfPeople)
                observer.onCompleted()
                
                return Disposables.create()
        }
    }
}
