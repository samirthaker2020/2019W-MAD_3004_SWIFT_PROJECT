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

var count:Int=0
var check:Bool=false
var customername:String?
var uid:String?
var pass:String?
var uid1:String?
var pass1:String?
var adminid:String?
var adminpass:String?
var address:String?
var email:String?
var credicardinfo:String?
var shippinginfo:String?
var no:Int?
var uno:Int?
repeat{
    print("Please select an option: \n1 - Register \n2 - User-Login \n3 - Admin-Login \n 4.Dispaly  \n 5.Exit")
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
      
        var random=Int.random(in: 0...100)
        var cust = Customer(cid: random,uid:uid!, cname: customername!, email: email!, ccinfo: credicardinfo!, shipinfo: shippinginfo!, address: address!)
        var user   = Users(uid:uid!,pass:pass!)
        c.register(cid:random,usid:uid!,cust:cust,user:user)
   
    case 2:
        print("--------------USER--LOGIN--------------------")
        print("Enter UserID::")
        let uid1 = readLine()!
        print("Enter Password::")
        let  pass1 = readLine()!
        check = c.login(id:uid1,pass:pass1)
       c.displayData(msg: check, no: 2)
      if(check==true)
      {
        var username:String?
        username=uid!
        repeat{
              print("-------------------WELCOME-------------------")
        
            print("User::\(username!)")
               print("---------------------------------------------")
            print("Please select an option: \n1 - View Product \n2 - View Order \n3 - Checkout \n 4.Exit")
            uno = Int(readLine()!)
            switch uno
            {
            case 1:
            var product1 = Products(productid: "P001", productname: "Hard Drive", productprice: 120.00)
            var product2 = Products(productid: "P002", productname: "ZIP drive", productprice: 90.00)
            var product3 = Products(productid: "P003", productname: "Floppy disk", productprice: 50.00)
            var product4 = Products(productid: "P004", productname: "Monitor", productprice: 300.00)
            var product5 = Products(productid: "P005", productname: "iPhone 7 Plus", productprice: 1200.00)
            var totalProducts = [product1,product2,product3,product4,product5]
            for P in totalProducts{
                P.displaydata()
                }
                
            default:
                print(" ")
            }
        }
            while(n! < 4)

        
        }
        else
      {
           c.displayData(msg: check, no: 2)
        }
      
    case 3:
        print("--------------ADMIN--LOGIN--------------------")
        print("Enter UserID::")
         adminid = readLine()!
        print("Enter Password::")
          adminpass = readLine()!
        
    case 4:
        c.displaydata()
        
       
    default:
        break
    }
    
    
}
    while(n! <= 4)
