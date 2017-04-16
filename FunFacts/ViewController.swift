//
//  ViewController.swift
//  FunFacts
//
//  Created by ctsuser1 on 4/15/17.
//  Copyright © 2017 ManishChaturvedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactsLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    
    let factsProvider = FactsProvider()
    
    let colorProvide  = ColorProvider()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactsLabel.text = factsProvider.generateRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showFunFact() {
        
        funFactsLabel.text = factsProvider.generateRandomFact()
        
        view.backgroundColor = colorProvide.randomColor()
        funFactsLabel.tintColor = colorProvide.randomColor()
    }
  
}

