//


import Foundation

class ShoppingCart
{
    private var cartid:Int?
    var productid:Int?
    var quantity:Int?
    var dateadded:Int?
    var count:Int?
    var subtotal:Float?
    var total:Float?
    let orderID = Int.random(in: 0...999)
    var productList = [Products]()
    var orderedProduct = Dictionary<Int,[Products]>()
    init()
    {
        self.cartid=Int()
        self.productid=Int()
        self.quantity=Int()
        self.dateadded=Int()
    }
    
    init(proid:Int,cartid:Int,qty:Int,dateadded:Int)
    {
        self.productid=proid
        self.cartid=cartid
        self.quantity=qty
        self.dateadded=dateadded
    }
    
    func addcartitem(pno:String,qty:Int)
    {
        if let j=p1.productdetails[pno]
        {
            
            
        }
        else{print("fail")}
        
    }
   
    func viewcart()
    {
        for j in 0..<productList.count{
            print("Product: \(productList[j].productname)")
        }
    }
}

        

