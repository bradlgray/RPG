//
//  ViewController.swift
//  RPG
//
//  Created by Brad Gray on 10/7/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var player1Hp: UILabel!
    
    @IBOutlet weak var player2Hp: UILabel!
    
    @IBOutlet weak var player1AttackButton: UIButton!
    
    @IBOutlet weak var player2AttackButton: UIButton!
    
    @IBOutlet weak var player2Character: UIImageView!
    
    @IBOutlet weak var loot: UIButton!
    
    
    @IBAction func player1Attack(sender: UIButton) {
        
    }
    
    @IBAction func player2Attack(sender: UIButton) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

