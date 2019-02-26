 

import Foundation

 class Oders:Customer
 {
    
var oderid:Int?
    var datecreated:Date?
    var dateshipped:Date?
    var cname:String?
    var custid:Int?
    var status:String?
    var shipid:Int?
    var tprice:Float=0
    var order = [Oders]()
    var ordersreceived = Dictionary<Int,Oders>()
    override init() {
        self.oderid=Int()
        self.datecreated=Date()
        self.dateshipped=Date()
        self.cname=String()
        self.custid=Int()
        self.status=String()
        self.shipid=Int()
        super.init()
    }
    
     init(oid:Int,odate:Date,oship:Date,cname:String,custid:Int,status:String,shipid:Int) {
        
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
            self.custid=us.cid!
            self.customername=us.customername!
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
                    self.oderid=od.orderId
                    
                    print("\(od.orderId)  ||  \(u.productid)   ||  \(u.productname)    ||  \(u.productprice)   ||  \(v[i].quantity!)    ||  \(Float(v[i].quantity!) * u.productprice)")
     tprice=tprice+(Float(v[i].quantity!) * u.productprice)
                }
               
    }
    
 }
            print("----------------------------------------------------------------")
            print("-------------------------------------total--\(tprice)")
    }
    }
    
    func placeorder()
    {
        let shipid=Int.random(in: 0...1000)
        ods=Oders(oid:self.oderid!,odate:Date(),oship:Date(),cname:self.customername!,custid:self.cid!,status:"Order received",shipid:shipid)
        ordersreceived[self.oderid!]=ods
        
        s.productList.removeAll()
        print("Order placed!!!!!")
        //print(ordersreceived)
    }
 }
