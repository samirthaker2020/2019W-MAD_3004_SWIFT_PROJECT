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
 let s=ShoppingCart()
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
var cartID:Int?
var product1 = Products(productid: "P001", productname: "Hard Drive", productprice: 120.00)
var product2 = Products(productid: "P002", productname: "ZIP drive", productprice: 90.00)
var product3 = Products(productid: "P003", productname: "Floppy disk", productprice: 50.00)
var product4 = Products(productid: "P004", productname: "Monitor", productprice: 300.00)
var product5 = Products(productid: "P005", productname: "iPhone 7 Plus", productprice: 1200.00)
var totalProducts = [product1,product2,product3,product4,product5]
var p1=Products()
p1.addproducts(pid: "P001", prod: product1)
p1.addproducts(pid: "P002", prod: product2)
p1.addproducts(pid: "P003", prod: product3)
p1.addproducts(pid: "P004", prod: product4)
p1.addproducts(pid: "P005", prod: product5)

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
        username=uid1
        repeat{
              print("-------------------WELCOME-------------------")
        
            print("User::\(username!)")
               print("---------------------------------------------")
            print("Please select an option: \n1 - View Product \n2 - Checkout--> \n3 - View Profile \n4 - Update Profile \n5 - Make an Order  \n6 View Cart Items \n7 - Update Quantity \n8 - Remove Item from Cart")
            uno = Int(readLine()!)
            switch uno
            {
            case 1:
          p1.displaydata()
                
            case 2:
            break
            case 3:
                c.viewprofile(user: username!)
            case 4:
                  c.viewprofile(user: username!)
                  print("------------------------------------------------")
                var updateno:Int?
                  print("Enter Number from above to update :::: ")
                updateno=Int(readLine()!)
                switch updateno
                {
                case 1:
                    print("Enter New Customer Name:")
                    var name:String?
                        name=readLine()!
                  check =   c.updateprofile(username: uid1, value: name!, caseno: 1)
                    c.displayData(msg: check, no: 3)
                case 2:
                    print("Enter New  Address:")
                    var add:String?
                    add=readLine()!
                    check =   c.updateprofile(username: uid1, value: add!, caseno: 2)
                    c.displayData(msg: check, no: 3)
                case 3:
                    print("Enter New  Email:")
                    var email:String?
                    email=readLine()!
                    check =   c.updateprofile(username: uid1, value: email!, caseno: 3)
                    c.displayData(msg: check, no: 3)
                case 4:
                    print("Enter New Credicard Info :")
                    var ccinfo:String?
                    ccinfo=readLine()!
                    check =   c.updateprofile(username: uid1, value:ccinfo!, caseno: 4)
                    c.displayData(msg: check, no: 3)
                case 5:
                    print("Enter New Shipping Info:")
                    var sinfo:String?
                    sinfo=readLine()!
                    check =   c.updateprofile(username: uid1, value: sinfo!, caseno: 5)
                    c.displayData(msg: check, no: 3)
                default:
                    print(" ")
                }
            case 5:
                p1.displaydata()
                print("----------------------------------")
                print("Enter Product Number:")
                var pno=readLine()!
                print("Enter Product Quantity:")
                var pqty=Int(readLine()!)
                if let j=p1.productdetails[pno]
                {
                    if s.productList.isEmpty
                    {
                        cartID = Int.random(in: 0...999)
                    }
                    else
                    {
                        
                    }
                    
                    var shop=ShoppingCart(proid:pno,cartid:cartID!,qty:pqty!,dateadded:Date())
                   
                    check=s.addcartitem(shop: shop)
                    s.displayData(msg: check, no: 2)
                  //  s.productList.append(shop)
                   
                    
                  
                }
                else{print("Try..again..later")}
                
            case 6:
                s.viewcart()
                
            case 7:
                s.viewcart()
                print("----------------------------------")
                print("Enter Product Number:")
                var pno=readLine()!
                print("Enter New Product Quantity:")
                var pqty=Int(readLine()!)
              
                   check = s.updatequantity(pno:pno,pqty:pqty!)
                 s.displayData(msg: check, no: 1)
                
            case 8:
                s.viewcart()
                print("----------------------------------")
                print("Enter Product Number:")
                var pno=readLine()!
               check = s.removeProduct(productId: pno)
                s.displayData(msg: check, no: 3)
            default:
                print(" ")
            }
        }
            while(uno! <= 8)

        
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


