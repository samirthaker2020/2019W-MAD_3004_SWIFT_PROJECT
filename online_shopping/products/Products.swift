//
//  Products.swift
//  sam
//
//  Created by sam on 2019-02-23.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation
class Products:IDisplay
{
    
    
    let productid:String
    var productname:String
    var productprice:Float
   // var productquantity:Int
     var productdetails=Dictionary<String,Products>()
    init(productid:String, productname:String, productprice:Float) {
        self.productid = productid
        self.productname = productname
        self.productprice = productprice
     
    }
    
    func displayData(msg: Bool, no: Int) {
        print(" ")
    }
    func addproducts(pid:String,prod:Products)
    {
        productdetails[pid]=prod
    }
    func displaydata() {
        print("------------------------------------------------------------------------------")
        print("Product ID:     ||   Product name:       ||   Product price:  ")
          print("------------------------------------------------------------------------------")
        print("\(self.productid)            ||   \(self.productname)         ||           \(self.productprice)")
        
       
     
    }
}
