//
//  OderDetails.swift
//  sam
//
//  Created by sam on 2019-02-25.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation
class OderDetails:IDisplay {
    
    
    var orderId: Int
    var productId: String
    var productName: String
    var quantity: Int
    var unitCost: Float
    var subtotal: Float
    var orderdetails=Dictionary<Int,[OderDetails]>()
     var orderList = [OderDetails]()
    init()
    {
        self.orderId = Int()
        self.productId = String()
        self.productName = String()
        self.quantity = Int()
        self.unitCost = Float()
        self.subtotal = Float()
        
    }
    init(oderid:Int,pid:String,pname:String,qty:Int,price:Float,subtotal:Float) {
        self.orderId=oderid
        self.productId=pid
        self.productName=pname
        self.quantity=qty
        self.unitCost=price
        self.subtotal=subtotal
    }
    
    func calc(list:OderDetails)
    {
        orderList.append(list)
     // displaydata()
    }
    func storedata(oid:Int)
    {
       orderdetails[oid]=self.orderList
    /* for (k,v) in orderdetails
     {
        print("key:\(k)::value::\(v)")
       
        }*/
    }
    func printdata()
    {
        print("ODER::\(self.orderId)")
        print(self.productName)
        print(self.productId)
        print(self.quantity)
        print(self.unitCost)
        print(self.subtotal)
    }
    func displaydata() {
       print(" ")
    }
    
    func displaydata(msg: Bool, no: Int) {
        print("")
    }
}


