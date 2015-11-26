//
//  ForthViewController.swift
//  PizzaPlace
//
//  Created by Carlos Brito on 13/11/15.
//  Copyright © 2015 Carlos Brito. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {
    
    @IBOutlet weak var size: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var selection: UISegmentedControl!
       var pizza: Pizza!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.size.text = pizza.size
        self.masa.text = pizza.masa
        self.queso.text = pizza.queso
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}
