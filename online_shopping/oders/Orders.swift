 

import Foundation

 class Oders:Customer
 {
    
    private var oderid:Int?
    var datecreated:String?
    var dateshipped:String?
    var cname:String?
    var custid:String?
    var status:String?
    var shipid:String?
    var tprice:Float=0
    override init() {
        self.oderid=Int()
        self.datecreated=String()
        self.dateshipped=String()
        self.cname=String()
        self.custid=String()
        self.status=String()
        self.shipid=String()
        super.init()
    }
    
     init(oid:Int,odate:String,oship:String,cname:String,custid:String,status:String,shipid:String) {
        
        self.oderid=oid
        self.datecreated=odate
        self.dateshipped=oship
        self.cname = cname
        self.custid=custid
        self.status=status
        self.shipid=shipid
       super.init()
    }
    
   
  
    func ordersummary(oid:Int,uid:String)
    {
        print("******************************************************************")
        if let us=c.customerdetails[uid]
        {
            print("CustomerNumber:\(us.cid!)       CustomerName:\(us.customername!)")
        }
        print("************************-ORDER-DETAILS-***************************")
        print("Order ID ||  Product ID   ||  Product Name    ||  Unitcost    || Quantity  ||    Subtotal")
        if od.orderdetails[oid] != nil
        {
        for (_,v) in s.orderedProduct
        {
            
            for i in 0...s.productList.count-1
            {
                if let u=p1.productdetails[ v[i].productid!]
                {
                    print("\(od.orderId)  ||  \(u.productid)   ||  \(u.productname)    ||  \(u.productprice)   ||  \(v[i].quantity!)    ||  \(Float(v[i].quantity!) * u.productprice)")
     tprice=tprice+(Float(v[i].quantity!) * u.productprice)
                }
               
    }
    
 }
            print("----------------------------------------------------------------")
            print("-------------------------------------total--\(tprice)")
    }
    }
 }
