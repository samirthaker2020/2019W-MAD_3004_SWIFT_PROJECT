//
//  main.swift
//  project_swift
//
//  Created by sam on 2019-02-18.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation

var n:Int?
let c=Customer()
let cart = ShoppingCart()

var count:Int=0
var check:Bool=false
var customername:String?
var uid:String?
var pass:String?
var uid1:String?
var pass1:String?
var address:String?
var email:String?
var credicardinfo:String?
var shippinginfo:String?
var no:Int?

repeat{
    print("Please select an option: \n1 - Register \n2 - Login \n3 - Display \n4 - Exit")
    n = Int(readLine()!)
    
    switch n{
    case 1:
        
  
        print("Enter Customer Name::")
         customername=readLine()!
        print("Enter UserID::")
          uid = readLine()!
        print("Enter Password::")
        pass = readLine()!
        print("Enter Address::")
        address = readLine()!
        print("Enter Email::")
     email = readLine()!
        print("Enter Credit Card Info::")
            credicardinfo = readLine()!
        print("Enter Shipping Info::")
            shippinginfo = readLine()!
      
        let random=Int.random(in: 0...100)
        let cust = Customer(cid: random,uid:uid!, cname: customername!, email: email!, ccinfo: credicardinfo!, shipinfo: shippinginfo!, address: address!)
        let user   = Users(uid:uid!,pass:pass!)
        c.register(cid:random,usid:uid!,cust:cust,user:user)
   
    case 2:
        print("Enter UserID::")
        let uid1 = readLine()!
        print("Enter Password::")
        let  pass1 = readLine()!
        check = c.login(id:uid1,pass:pass1)
       c.displayData(msg: check, no: 2)
        if check{
            cart.addToCart()
            cart.displayData()
        }
    case 3:  c.displaydata()
       
    default:
        break
    }
    
    
}
    while(n! <= 4)
