//
//  OderDetails.swift
//  sam
//
//  Created by sam on 2019-02-25.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation
class OderDetails:IDisplay {
    func displaydata() {
        print(" ")
    }
    
    func displaydata(msg: Bool, no: Int) {
        print("")
    }
    
    var orderId: Int
    var productId: String
    var productName: String
    var quantity: Int
    var unitCost: Float
    var subtotal: Float
    var orderdetails=Dictionary<Int,OderDetails>()
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
    
    func calc()
    {
        
      
    }
    
}


