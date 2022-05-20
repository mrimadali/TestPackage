//
//  File.swift
//  
//
//  Created by Imad Mohammad on 20/05/22.
//

import Foundation
import UIKit

public struct Util {
    public static func loadFromNib() -> UserTableViewCell {
        // Load the compiled XIB = NIB file from the module resources bundle
        let bundle = Bundle.module
        let nib = UINib(nibName: "UserTableViewCell", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UserTableViewCell
        return view
    }
    
    public static func loadNib() -> UINib {
        let bundle = Bundle.module
        let nib = UINib(nibName: "UserTableViewCell", bundle: bundle)
        return nib
    }

//    public static func loadVC() {
//        ClockViewController(nibName: "ClockViewController_iOS", bundle: Bundle.module)
//
//    }
}
