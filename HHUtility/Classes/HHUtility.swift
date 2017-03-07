//
//  HHUtility.swift
//  Pods
//
//  Created by indianic on 07/03/17.
//
//

import UIKit

public class HHUtility: NSObject {
    
    
    public func showAlertWithTitleMsg(_ controller: UIViewController, title: String, message: String) -> Void {
        
        let alertController = UIAlertController(title:  title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(okAction)
        controller.present(alertController, animated: true, completion: nil)
    }
    
}
