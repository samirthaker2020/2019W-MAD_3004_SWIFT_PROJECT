//
//  Orders.swift
//  swift project
//
//  Created by macos on 2019-02-25.
//  Copyright © 2019 macos. All rights reserved.
//

class Orders
{
    var ordeId: Int
    var dateCreated: String
    var dateShipped: String
    var customerName : String
    var customerId : String
    var status: String
    var shippingId: String
    
    init()
    {
        self.ordeId = Int()
        self.dateCreated = String()
        self.dateShipped = String()
        self.customerName = String()
        self.customerId = String()
        self.status = String()
        self.shippingId = String()
    }
}
