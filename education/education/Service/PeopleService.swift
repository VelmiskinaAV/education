//
//  PeopleService.swift
//  education
//
//  Created by Alexander Mironov on 21.11.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import RxSwift
import RxCocoa

class PeopleService {
    static func getPeoples() -> Observable<[People]> {
        let list = [People(name: "Arnold", age: 10),
                    People(name: "Sne", age: 20),
                    People(name: "Pug", age: 17),
                    People(name: "Sasha", age: 23),
                    People(name: "Denis", age: 20),
                    People(name: "CoolAndrew", age: 28),
                    People(name: "BeautifulAndrew", age: 29)]
        
        return Observable
            .create { observer in
                
                observer.onNext(list)
                observer.onCompleted()
                
                return Disposables.create()
            }
    }
}
