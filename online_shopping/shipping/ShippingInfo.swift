//
//  ShippingInfo.swift
//  sam
//
//  Created by sam on 2019-02-25.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation

class ShippingInfo
{
    var shippingId: Int
    var shippingType: String
    var shippingcost: Int
    var shippingRegionId : Int
    
    init()
    {
        self.shippingId = Int()
        self.shippingType = String()
        self.shippingcost = Int()
        self.shippingRegionId = Int()
    }
}
