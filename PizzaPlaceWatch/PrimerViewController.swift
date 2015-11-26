//
//  PrimerViewController.swift
//  PizzaPlace
//
//  Created by Carlos Brito on 13/11/15.
//  Copyright © 2015 Carlos Brito. All rights reserved.
//

import UIKit

class PrimerViewController: UIViewController {

    @IBOutlet weak var selection: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let secondVC: SecondViewController = segue.destinationViewController as! SecondViewController
        secondVC.pizzaSize = selection.titleForSegmentAtIndex(selection.selectedSegmentIndex)
        
        let pizza=Pizza()
        pizza.size = selection.titleForSegmentAtIndex(selection.selectedSegmentIndex)
        
        secondVC.pizza = pizza
        
        
    }

 
 
}
