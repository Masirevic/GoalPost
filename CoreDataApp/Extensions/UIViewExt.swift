//
//  UIViewExt.swift
//  CoreDataApp
//
//  Created by Ljubomir on 10/1/17.
//  Copyright © 2017 Ljubomir. All rights reserved.
//

import UIKit
extension UIView {
    
    func  bindToKeyboard () {
        
        NotificationCenter.default.addObserver(self, selector: #selector(keybordWillChange(_:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    @objc func keybordWillChange (_ notification: NSNotification) {
        let duration = notification.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! Double
        let curve = notification.userInfo![UIKeyboardAnimationCurveUserInfoKey] as! UInt
        let startingFrame = (notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let endingFrame = (notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let deltaY = endingFrame.origin.y - startingFrame.origin.y
        
        UIView.animate(withDuration: duration, delay: 0.0, options: UIViewAnimationOptions(rawValue: curve)
            , animations: {
                self.frame.origin.y += deltaY
        }, completion: nil)
    }
    
    
}




