//
//  ShoppingCart.swift
//  sam
//
//  Created by Maninder Singh on 2019-02-23.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation

class ShoppingCart{
    
    var CustProductQt = String()
    var itemList = [String]()
    let orderID = Int.random(in: 11...99)
    var productList = [ProductList]()
    var orderedProduct = Dictionary<Int,[ProductList]>()
    
    func addToCart(){
        var addToCartResponse = String()
        itemList.append("|1| Vincent Blue Polarized Sunglasses    |\n -----------------------------------------")
        itemList.append("|2| Matte Black Wayfarer Shape Sunglasses|\n -----------------------------------------")
        itemList.append("|3| Golden Rim Sunglasses                |\n -----------------------------------------")
        itemList.append("|4| Green Round Rim Polarized Sunglasses 1|\n -----------------------------------------")
        itemList.append("|5| Black Grey Full Rectangle Sunglasses |\n -----------------------------------------")
        itemList.append("|6| Oakley Unisex Sunglasses             |\n -----------------------------------------")
        itemList.append("|7| Exit                                 |\n -----------------------------------------")
        repeat{
            print("Please select the product you want to buy: \n-----------------------------------------")
            for v in itemList{
                print(v)
            }
            let selectedProduct = Int(readLine()!)!
            print("***** Please enter the quantity? *****")
            switch selectedProduct{
            case 1:
                CustProductQt = readLine()!
                let product1 = ProductList(productID: 11, productName: itemList[selectedProduct], productPrice: 1000.00, productQuantity: Int(CustProductQt)!)
                product1.displayData()
                productList.append(product1)
                break
            case 2:
                CustProductQt = readLine()!
                let product2 = ProductList(productID: 22, productName: itemList[selectedProduct], productPrice: 950.00, productQuantity: Int(CustProductQt)!)
                productList.append(product2)
                break
            case 3:
                CustProductQt = readLine()!
                let product3 = ProductList(productID: 33, productName: itemList[selectedProduct], productPrice: 800.00, productQuantity: Int(CustProductQt)!)
                productList.append(product3)
                break
            case 4:
                CustProductQt = readLine()!
                let product4 = ProductList(productID: 44, productName: itemList[selectedProduct], productPrice: 900.00, productQuantity: Int(CustProductQt)!)
                productList.append(product4)
                break
            case 5:
                CustProductQt = readLine()!
                let product5 = ProductList(productID: 55, productName: itemList[selectedProduct], productPrice: 950.00, productQuantity: Int(CustProductQt)!)
                productList.append(product5)
                break
            case 6:
                CustProductQt = readLine()!
                let product6 = ProductList(productID: 66, productName: itemList[selectedProduct], productPrice: 600.00, productQuantity: Int(CustProductQt)!)
                productList.append(product6)
                break
            default:
                print("Invalid Selection")
                break
            }
            print("Add to cart? (Y/N)")
            addToCartResponse = readLine()!
            if addToCartResponse.lowercased().contains("y"){
                orderedProduct.updateValue(productList, forKey: self.orderID)
            }else{
                productList = []
                addToCartResponse = "n"
            }
            print("Do you want to Continue? (Y/N)")
            addToCartResponse = readLine()!
        }while(addToCartResponse.YesOrNo())
    }
    
    func displayData(){
        for (k,v) in orderedProduct{
            print("Key: \(k) Value: \(v)")
        }
}
}
