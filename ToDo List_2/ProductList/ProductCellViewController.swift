//
//  ProductCellViewController.swift
//  ToDo List_2
//
//  Created by user152216 on 5/29/19.
//  Copyright © 2019 user152216. All rights reserved.
//

import UIKit

class ProductCellViewController: UITableViewController {
    
    
    let model = ProductListModel()
    var products: [Products] = []
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        products = model.retreiveProducts()
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        if let productCell = cell as? ProductCell {
            
            let  product = products[indexPath.row]
            
            productCell.productNameLabel.text = product.name
            productCell.productCountLabel.text = "\(product.count)"
            
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let ProductDetail = segue.destination as? ProductDetail {
             let row = tableView.indexPathForSelectedRow?.row
                
             if row != nil {
            
            ProductDetail.product = products[row!]
            
            }
            
        }
        
    }
    
}
