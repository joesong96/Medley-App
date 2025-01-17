//
//  AboutViewController.swift
//  Medley
//
//  Created by Joe Song on 5/3/16.
//  Copyright © 2016 Medley Team. All rights reserved.
//

import UIKit
import Firebase

class AboutViewController: UIViewController {
    
    var myRootRef = Firebase(url:"https://crackling-heat-1030.firebaseio.com/")
    
    @IBOutlet weak var aboutHeader: UILabel!
    @IBOutlet weak var aboutMessage: UILabel!
    
    let buttonShadowColor : UIColor = UIColor( red: 20/255.0, green: 20/255.0, blue: 20/255.0, alpha: 1.0)
    
    let purpleGrad = CAGradientLayer().purpleGradient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add purple gradient
        self.purpleGrad.frame = self.view.bounds
        self.view.layer.addSublayer(purpleGrad)
        
        // Add shadow to about header message
        self.aboutHeader.layer.shadowColor = buttonShadowColor.CGColor
        self.aboutHeader.layer.shadowOffset = CGSizeMake(0, 3)
        self.aboutHeader.layer.shadowRadius = 1.0
        self.aboutHeader.layer.shadowOpacity = 1.0
        
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardOnTap()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}