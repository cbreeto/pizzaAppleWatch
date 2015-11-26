//
//  InterfaceController.swift
//  PizzaPlaceWatch WatchKit Extension
//
//  Created by Carlos Brito on 25/11/15.
//  Copyright © 2015 Carlos Brito. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var sizer: WKInterfaceSlider!
    @IBOutlet var sizeLabel: WKInterfaceLabel!
    
    var sizeValue : Float = 0
    var sizeString : String = ""
    
    
    @IBAction func refreshSize(value: Float) {
        sizeValue = value
        switch sizeValue {
        case 1:
            sizeString = "Small"
        case 2:
            sizeString = "Medium"
        case 3:
            sizeString = "Large"
        default:
            sizeValue = 1
        }
        
        self.sizeLabel.setText(sizeString)
        
    }
    
    
    @IBAction func actionSize() {
        let values = Pizza()
        values.size = sizeString
        pushControllerWithName("IdentificadorPasta", context: values)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
