//
//  ThirdViewController.swift
//  PizzaPlace
//
//  Created by Carlos Brito on 13/11/15.
//  Copyright © 2015 Carlos Brito. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var selection: UISegmentedControl!
       var pizza: Pizza!
    @IBOutlet weak var size: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.size.text = pizza?.size
        self.masa.text = pizza?.masa
        
 
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc4 : FifthViewController = segue.destinationViewController as! FifthViewController
        
        pizza.queso = selection.titleForSegmentAtIndex(selection.selectedSegmentIndex)
        
        vc4.pizza = pizza

        
    }

}
