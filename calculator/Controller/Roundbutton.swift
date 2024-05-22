//
//  Roundbutton.swift
//  calculator
//
//  Created by MANSVITA on 13/09/22.
//

import UIKit

@IBDesignable
class Roundbutton: UIButton {

    @IBInspectable var roundbutton:Bool = false{
        didSet {
            if roundbutton{
                layer.cornerRadius = frame.height / 2
            }
            
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundbutton{
            layer.cornerRadius = frame.height / 2
        }
    }

}
