//
//  ListOfPeopleTableView.swift
//  education
//
//  Created by Alexander Mironov on 17.12.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ListOfPeopleTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
    var closure: ((Int) -> ())?
    var closureForReturn: (() -> ())?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        dataSource = self
        delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let element = _elements[indexPath.row]
        
        switch element {
        case .header():
            let cell = dequeueReusableCell(withIdentifier: "HeaderCell") as! HeaderCell
            
            cell.bind()
            return cell
        case .separator():
            let cell = dequeueReusableCell(withIdentifier: "SeparatorCell") as! SeparatorCell
            
            cell.bind()
            return cell
        case .firstLetterOfName(let element):
            let cell = dequeueReusableCell(withIdentifier: "FirstLetterCell") as! FirstLetterCell
            
            cell.bind(letter: element)
            return cell
        case .fullName(let element):
            let cell = dequeueReusableCell(withIdentifier: "ListOfPeopleCell") as! ListOfPeopleCell
            cell.bind(text: element)
            return cell
        }
    }
    
    fileprivate var _elements: [ListOfPeopleTableElement] = []
}

extension Reactive where Base: ListOfPeopleTableView {
    var elements: Binder<[ListOfPeopleTableElement]> {
        return Binder(base) { base, elements in
            base._elements = elements
            base.reloadData()
        }
    }
}
