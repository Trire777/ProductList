//
//  ProductCellViewController.swift
//  ToDo List_2
//
//  Created by user152216 on 5/29/19.
//  Copyright © 2019 user152216. All rights reserved.
//

import UIKit

class ProductCellViewController: UITableViewController {
    
    @IBOutlet weak var productNameCell: UILabel!
    
    @IBOutlet weak var productCountLabel: UILabel!
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        return cell
    }
    
}
