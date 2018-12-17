//
//  ViewModel.swift
//  education
//
//  Created by Alexander Mironov on 21.11.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewModel {
    let subj = PublishRelay<Int>()
    let peoples: Driver<[PeopleTableElement]>
    let subj2 = PublishRelay<Void>()
    init() {
        let hiddens = subj
            .asObservable()
            .startWith(-1)
            .scan(Set<Int>()) { set, id in
                if id == -10 {
                    return Set<Int>()
                }
                var newSet = set
                newSet.insert(id)
                return newSet
            }
        
        let peoples = PeopleService
            .getPeoples()
        
        self.peoples = Observable
            .combineLatest(peoples, hiddens) { people, hidden in
                return PeopleTableElementMapper.map(people: people, hiddens: hidden)
            }
            .asDriver(onErrorJustReturn: [])
    }
}
