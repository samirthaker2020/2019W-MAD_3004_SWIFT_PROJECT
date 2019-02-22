//
//  Cust.swift
//  sam
//
//  Created by sam on 2019-02-19.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation
class Customer:Users
{
    var cid:String?
    var customername:String?
    var email:String?
    var creditcardinfo:String?
    var shipppingInfo:String?
    var address:String?
    var customerdetails=[Customer]()
    
    override init() {
         super.init()
        self.cid=String()
        self.creditcardinfo=String()
        self.address=String()
        self.shipppingInfo=String()
        self.customername=String()
    
    }
    init(cid:String,cname:String,email:String,ccinfo:String,shipinfo:String,address:String) {
     super.init()
       super.uid=uid
        super.pass=pass
        self.cid=cid
        self.customername=cname
        self.email=email
        self.creditcardinfo=ccinfo
        self.shipppingInfo=shipinfo
        self.address=address
        
    }
    
    func login(id:String,pass:String)  ->Bool
    {
        let  check:Bool = super.verifylogin(id: id, p: pass)
        return check
        
    }
    
    func register(userlogin:[Users],cdetails:[Customer])
    {
        super.userlogin=userlogin
        customerdetails=cdetails
        
    }
    func printcustdetails()
    {
       
        print(self.customername!)
  
    }
    override func displaydata() {
       for i in customerdetails
       {
        i.printcustdetails()
        }
    }
     
    }
