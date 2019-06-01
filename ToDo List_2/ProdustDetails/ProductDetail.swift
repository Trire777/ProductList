//
//  ProdustDetail.swift
//  ToDo List_2
//
//  Created by user152216 on 6/1/19.
//  Copyright © 2019 user152216. All rights reserved.
//

import UIKit

class ProductDetail: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    var product: Products!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = product.name
        
    }
    
    
}
