//
//  ProductCellViewController.swift
//  ToDo List_2
//
//  Created by user152216 on 5/29/19.
//  Copyright © 2019 user152216. All rights reserved.
//

import UIKit

class ProductCellViewController: UITableViewController {
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        if let productCell = cell as? ProductCell {
            
            productCell.productNameLabel.text = "Product \(indexPath.row)"
            productCell.productCountLabel.text = "\(indexPath.row)"
            
        }
        
        
        return cell
    }
    
}
