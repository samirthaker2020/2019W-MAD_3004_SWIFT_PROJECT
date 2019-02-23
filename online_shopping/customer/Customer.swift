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
    var cid:Int?
    var customername:String?
    var email:String?
    var creditcardinfo:String?
    var shipppingInfo:String?
    var address:String?
    var customerdetails=Dictionary<Int,Customer>()
    
    override init() {
         super.init()
        self.cid=Int()
        self.creditcardinfo=String()
        self.address=String()
        self.shipppingInfo=String()
        self.customername=String()
    
    }
    init(cid:Int,uid:String,cname:String,email:String,ccinfo:String,shipinfo:String,address:String) {
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
    
    func login(id:String,pass:String) ->Bool
    {
       let  check:Bool = super.verifylogin(id: id, p: pass)
        return check
        
    }
    
    func register(cid:Int,cust:Customer,user:Users)
    {
        customerdetails.updateValue(cust, forKey: cid)
        
        super.userlogin.updateValue(user, forKey: super.uid!)
    }
    
    override func displaydata() {
        for (k,v) in customerdetails
        {
            print("key:\(k)")
            print("name:\(v.customername!)")
            print("userid:\(v.uid!)")
            print("address:\(v.address!)")
            print("cust id:\(v.cid!)")
            print("email:\(v.email!)")
            print("ccinfo:\(v.creditcardinfo!)")
            print("value:\(v.shipppingInfo!)")
            
            
            
            
        }
        print("---------------------------")
        for (k,v) in super.userlogin
        {
            print("cust id:\(k)")
            print("userid:\(v.uid!)")
            print("password:\(v.pass!)")
        }
    }
     
    }
