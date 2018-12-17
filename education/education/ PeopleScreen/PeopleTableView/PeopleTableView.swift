//
//  PeopleTableView.swift
//  education
//
//  Created by Alexander Mironov on 21.11.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class PeopleTableView: UITableView, UITableViewDelegate, UITableViewDataSource {
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
        case .old(let element):
            let cell = dequeueReusableCell(withIdentifier: "PeopleOldCell") as! PeopleOldCell
            
            cell.bind(name: element.0, age: element.1)
            return cell
        case .young(let element):
            let cell = dequeueReusableCell(withIdentifier: "PeopleYoungCell") as! PeopleYoungCell
            
            cell.bind(name: element.0, age: element.1)
            return cell
        case .middle(let element):
            let cell = dequeueReusableCell(withIdentifier: "PeopleMiddleCell") as! PeopleMiddleCell
            cell.closure = self.closure
            cell.bind(element: element)
            return cell
        case .somethingElse(let element):
            let cell = dequeueReusableCell(withIdentifier: "SomethingElse") as! SomethingElse
            cell.closureForReturn = self.closureForReturn
            cell.bind(name: element)
            return cell
        }
    }
    
    fileprivate var _elements: [PeopleTableElement] = []
}

extension Reactive where Base: PeopleTableView {
    var elements: Binder<[PeopleTableElement]> {
        return Binder(base) { base, elements in
            base._elements = elements
            base.reloadData()
        }
    }
}
