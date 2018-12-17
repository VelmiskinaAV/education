//
//  ListOfPeopleViewModel.swift
//  education
//
//  Created by Alexander Mironov on 17.12.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ListOfPeopleViewModel {
    let people: Driver<[ListOfPeopleTableElement]>

    init() {
        people = PhoneBookService.getPeoples()
            .map {people in
                return ListOfPeopleTableElementMapper.map(people: people)
                 }
            .asDriver(onErrorJustReturn: [])
        }
  }

