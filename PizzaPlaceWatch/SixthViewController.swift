//
//  SixthViewController.swift
//  PizzaPlace
//
//  Created by Carlos Brito on 13/11/15.
//  Copyright © 2015 Carlos Brito. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {
    
    var pizza : Pizza!

    
    
    @IBOutlet weak var size: UILabel!
    
    @IBOutlet weak var masa: UILabel!
    
    @IBOutlet weak var queso: UILabel!
    
    @IBOutlet weak var ingredientes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Blur effect
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        
        let blurView = UIVisualEffectView (effect: blurEffect)
        
        blurView.frame.size = CGSize(width: 350, height: 500)
        
        blurView.center = view.center
        
        self.size.text = pizza.size
        self.masa.text = pizza.masa
        self.queso.text = pizza.queso
        
        
        if pizza.ingredientes.count == 0 {
            self.ingredientes.text = "Ningún ingredientes seleccionado"
        }
        else {
            
            var texto:String = ""
            for ingrediente in pizza.ingredientes {
                
                texto += ("  \(ingrediente) ")
            
             }
        self.ingredientes.text = texto
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

 
    

}
