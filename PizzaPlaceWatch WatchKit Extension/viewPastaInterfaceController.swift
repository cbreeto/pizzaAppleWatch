//
//  viewPastaInterfaceController.swift
//  PizzaPlaceWatch
//
//  Created by Carlos Brito on 25/11/15.
//  Copyright © 2015 Carlos Brito. All rights reserved.
//

import WatchKit
import Foundation


class viewPastaInterfaceController: WKInterfaceController {

    @IBOutlet var label: WKInterfaceLabel!
    @IBOutlet var actionCrunchy: WKInterfaceButton!
    var pasta : String = ""
    var order : Pizza!
    
    
    @IBAction func actionThin() {
        sendToNextView("Thin")
    }
    
    
    @IBAction func actionCrunch() {
        sendToNextView("Crunchy")
    }
    
    @IBAction func actionDouble() {
        sendToNextView("Double")
    }
    
    func sendToNextView(p: String){
        order.masa = p
        
        if order.inFinal == "true" {
        pushControllerWithName("idChange", context: order)
            
        }
        else {
        pushControllerWithName("IdCheese", context: order)
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        order = context as! Pizza

    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
 
        super.didDeactivate()
    }

}
