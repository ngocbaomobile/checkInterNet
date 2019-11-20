//
//  Connectivity.swift
//  checkInternet
//
//  Created by Apple on 11/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import Alamofire



class Connectivity {
//    class func isConnectedToInternet() -> Bool{
//        return NetworkReachabilityManager()!.isReachable
//    }
    
    class var isConnectedToInternet: Bool {
        return NetworkReachabilityManager()!.isReachable
    }
    
    class var checkInternet: Bool {
        return NetworkReachabilityManager()!.isReachableOnCellular
    }
    
    class var checkethernet: Bool {
        return NetworkReachabilityManager()!.isReachableOnEthernetOrWiFi
    }
    
    
    
}
