//
//  FifthViewController.swift
//  PizzaPlace
//
//  Created by Carlos Brito on 13/11/15.
//  Copyright © 2015 Carlos Brito. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    

    @IBOutlet weak var swPeppe: UISwitch!
    var pizza: Pizza!

    @IBOutlet weak var swJ: UISwitch!
    @IBOutlet weak var swPim: UISwitch!
    @IBOutlet weak var swAn: UISwitch!
    @IBOutlet weak var swPina: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var finalVC : SixthViewController = segue.destinationViewController as! SixthViewController
        
        pizza.ingredientes.removeAll()
        
        if swJ.on {
            pizza.ingredientes += ["Jamón"]
            
            
            
        }
        if swPeppe.on{
            pizza.ingredientes+=["Pepperoni"]
            
        }
        if swPina.on{
            pizza.ingredientes += ["Piña"]
            
        }
        if swPim.on {
            pizza.ingredientes += ["Pimiento"]
            
        }
        if swAn.on{
            pizza.ingredientes += ["Anchoas"]
        }
        
        finalVC.pizza = pizza
        
    }

}
