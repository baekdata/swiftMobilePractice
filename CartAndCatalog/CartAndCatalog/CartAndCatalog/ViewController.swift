//
//  ViewController.swift
//  CartAndCatalog
//
//  Created by sdt5 on 2015. 8. 20..
//  Copyright (c) 2015년 tacademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, ProductCellDelegate{
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PRODUCT_CELL", forIndexPath: indexPath) as! ProductCell
        
        let product = productList[indexPath.row]
        cell.productName.text = product.name
        cell.productPrice.text = product.price
        cell.productImage.image = UIImage(named: "\(product.image).jpg")
        
        
        //cell delegate  설정
        cell.delegate = self
        cell.productCode = product.code
        
        return cell
    }
    
    func addCart(Product:String){
        //cell의 위임
        
    }
    
    var productList : [Product]!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        productList=[
            Product(code: "001", name: "Baseball", price: "100", image: "ultra"), Product(code: "002", name: "Baseball", price: "200", image: "first"),
            Product(code: "003", name: "Basketball", price: "300", image: "ultra"),
            Product(code: "004", name: "Football", price: "400", image: "first"),
            Product(code: "005", name: "Golf", price: "500", image: "ultra"),
            Product(code: "006", name: "Swimming", price: "600", image: "first"),
            Product(code: "007", name: "Tennis", price: "700", image: "ultra"),
            Product(code: "008", name: "IceHockey", price: "800", image: "first"),
            Product(code: "009", name: "Billiard", price: "900", image: "ultra"),
            Product(code: "010", name: "Soccer", price: "1000", image: "first"),
            Product(code: "011", name: "football", price: "10", image: "ultra"),
            Product(code: "012", name: "good", price: "20", image: "first"),
            Product(code: "013", name: "bad", price: "30", image: "ultra"),
            Product(code: "014", name: "yabi", price: "40", image: "first"),
            Product(code: "015", name: "yull", price: "50", image: "ultra")]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

