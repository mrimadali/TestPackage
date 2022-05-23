//
//  UserTableViewCell.swift
//  
//
//  Created by Imad Mohammad on 20/05/22.
//

import UIKit
public enum TypeInCurrentModule {}

public class UserTableViewCell: UITableViewCell {

    @IBOutlet public weak var titleLabel: UILabel!
    @IBOutlet public weak var subTitleLabel: UILabel!
    
    public override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public static func loadFromNib() -> UserTableViewCell {
        // Load the compiled XIB = NIB file from the module resources bundle
        let bundle = Bundle.module
        let nib = UINib(nibName: "UserTableViewCell", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UserTableViewCell
        return view
    }
    
    public static func loadNib() -> UINib {
        let moduleName = String(reflecting: TypeInCurrentModule.self)
          .split(separator: ".")[0]
        print("The current Module is \(moduleName)")
        let bundle = Bundle.module
        let nib = UINib(nibName: "UserTableViewCell", bundle: bundle)
        return nib
    }

}
