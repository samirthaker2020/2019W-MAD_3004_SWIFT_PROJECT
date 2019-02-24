	//
//  ProductList.swift
//  sam
//
//  Created by Maninder Singh on 2019-02-23.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation

    class ProductList{
        
        let productID:Int
        var productName:String
        var productPrice:Float
        var productQuantity:Int
        
        init(productID:Int, productName:String, productPrice:Float, productQuantity:Int) {
            self.productID = productID
            self.productName = productName
            self.productPrice = productPrice
            self.productQuantity = productQuantity
        }
        
        func displayData(){
            print("Product ID: \(self.productID)")
            print("Product name: \(self.productName)")
            print("Product price: \(self.productPrice)")
            print("Product quantity: \(self.productQuantity)")
        }
    }

