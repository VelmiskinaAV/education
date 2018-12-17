//
//  ListOfPeopleViewController.swift
//  education
//
//  Created by Alexander Mironov on 17.12.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ListOfPeopleViewController: UIViewController {
    
    let viewModel = ListOfPeopleViewModel()
    
    @IBOutlet weak var peopleTableView: ListOfPeopleTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel
            .people
            .drive(peopleTableView.rx.elements)
            .disposed(by: disposeBag)
    }
    
    private let disposeBag = DisposeBag()
    
}
