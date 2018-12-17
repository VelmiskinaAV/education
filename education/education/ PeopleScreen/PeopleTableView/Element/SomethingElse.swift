//
//  SomethingElse.swift
//  education
//
//  Created by Alexander Mironov on 29.11.2018.
//  Copyright © 2018 Arina. All rights reserved.
//

import UIKit

class SomethingElse: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    
    var closureForReturn: (() -> ())?

    func bind(name: String) {
        label.text = name
    }

    @IBAction func button(_ sender: Any) {
        closureForReturn?()
    }
}
