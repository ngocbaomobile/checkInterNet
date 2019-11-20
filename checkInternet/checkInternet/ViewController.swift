//
//  ViewController.swift
//  checkInternet
//
//  Created by Apple on 11/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    let manager = NetworkReachabilityManager(host: "www.apple.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if manager?.isReachable == true{
            print("internet is available")
        }  else {
            print("internet is not avalable")
        }
        
        manager?.startListening(onUpdatePerforming: { status in
            switch status {
            case .notReachable:
                print("Network status -lost:")
                self.alert(title: "Internet connection fail", message: "your internet is not avalable")
            case .reachable(.ethernetOrWiFi):
                print("Network status -Ethernet/Wifi")
            case .reachable(.cellular):
                print("Network status -3G/4G")
            default:
                break
            }
        })
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
//        if Connectivity.isConnectedToInternet {
//            self.alert(title: "Sucess", message: "Your internet connection available")
//        } else {
//            self.alert(title: "Failure", message: "Your internet connection is off")
//        }
//        
//        if Connectivity.checkInternet {
//            print("truong hop 1")
//        } else {
//            print("trong hop 2")
//        }
//        
//        if Connectivity.checkethernet {
//            print("ethernet 1")
//        } else {
//            print("ethernet 2")
//        }
    }
    
    func alert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }


}

