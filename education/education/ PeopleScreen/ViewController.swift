//
//  ViewController.swift
//  education
//
//  Created by Alexander Mironov on 20.11.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa



class ViewController: UIViewController {
    @IBOutlet weak var peopleTableView: PeopleTableView!
    
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peopleTableView.closure = { [weak self] id in
            self?.viewModel.subj.accept(id)
        }
        
        peopleTableView.closureForReturn = { [weak self] in
            self?.viewModel.subj.accept(-10)
        }
        
        viewModel
            .peoples
            .drive(peopleTableView.rx.elements)
            .disposed(by: disposeBag)
    }
    
    private let disposeBag = DisposeBag()
}

