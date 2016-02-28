//
//  ProductCell.swift
//  CartAndCatalog
//
//  Created by sdt5 on 2015. 8. 20..
//  Copyright (c) 2015년 tacademy. All rights reserved.
//

import UIKit
//별도의 클래스 생성


protocol ProductCellDelegate: class{
    func addCart(productCode: String)
    
}

class ProductCell: UITableViewCell {
    

   
    
    
    weak var delegate : ProductCellDelegate! //약한, 소유가 아님 // 계약 관계
    
    var productCode: String!


    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    @IBAction func addButtonClicked(sender: AnyObject) {
        delegate.addCart(productCode)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
