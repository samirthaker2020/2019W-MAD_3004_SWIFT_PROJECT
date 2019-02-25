//


import Foundation

class ShoppingCart
{
    private var cartid:Int?
    var productid:String?
    var quantity:Int?
    var dateadded=Date()
    var count:Int?
    var subtotal:Float?
    var total:Float?
  
    var productList = [ShoppingCart]()
    //var orderedProduct = Dictionary<Int,[Products]>()
    init()
    {
        self.cartid=Int()
        self.productid=String()
        self.quantity=Int()
        self.dateadded=Date()
    }
    
    init(proid:String,cartid:Int,qty:Int,dateadded:Date)
    {
        self.productid=proid
        self.cartid=cartid
        self.quantity=qty
        self.dateadded=dateadded
    }
  
    func addcartitem(shop:ShoppingCart)
    {
        self.productList.append(shop)
        print(productList)
    }
   func disp()
   {
  
    print("\( self.productid!)      ||   \(self.cartid!)      ||      \(self.quantity!)    ||  \(self.dateadded)")
    }
    func viewcart()
    {  print("----------------------CART---------------------------")
        print("Product ID  ||   CartID   ||     Quantity   ||  Date")
        for j in self.productList {
         j.disp()
        }
       
      
    }
}

        

