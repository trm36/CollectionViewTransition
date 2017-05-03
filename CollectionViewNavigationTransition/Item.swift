//
//  Item.swift
//  CollectionViewNavigationTransition
//
//  Created by Taylor Mott on 03-May-17.
//  Copyright © 2017 Mott Applications. All rights reserved.
//

import Foundation
import UIKit

class Item {
 
    var color = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    
    init(with color: UIColor) {
        self.color = color
    }
    
}

extension UIColor {
    
    static var randomColor: UIColor {
        let red = Float(arc4random_uniform(256)) / 255.0
        let green = Float(arc4random_uniform(256)) / 255.0
        let blue = Float(arc4random_uniform(256)) / 255.0
        return UIColor(colorLiteralRed: red, green: green, blue: blue, alpha: 1.0)
    }
    
}
