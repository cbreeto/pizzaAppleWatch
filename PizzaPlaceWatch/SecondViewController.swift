//
//  SecondViewController.swift
//  PizzaPlace
//
//  Created by Carlos Brito on 13/11/15.
//  Copyright © 2015 Carlos Brito. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var selection: UISegmentedControl!

    var pizza: Pizza!
    var pizzaSize: String!
    @IBOutlet weak var order1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        order1.text = pizza?.getSize()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let thirdVC: ThirdViewController = segue.destinationViewController as! ThirdViewController
        
        
        pizza.masa = selection.titleForSegmentAtIndex(selection.selectedSegmentIndex)
        
        thirdVC.pizza = pizza
        
        
        
        
    }


}
