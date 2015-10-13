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
    
    
    var player: Player!
    
    var monster: Monster!
    var character: Character!
    var chestMessage: String?
    
    
    @IBAction func player1Attack(sender: UIButton) {
        
        
        if monster.attemptAttack(player.attackPwr) {
            textLabel.text = "Attacked \(monster.monsterType) for \(player.attackPwr) damage"
            player2Hp.text = "\(monster.hp)"
            
            
        } else {
            textLabel.text = "Attack was unsuccesful"
        }
        
        if let loot = monster.dropLoot() {
            player.addToInventory(loot)
           chestMessage = "\(player.name) received \(loot)"
            self.loot.hidden = false
            
            
        }
        if !monster.isAlive {
            player2Hp.text = ""
            textLabel.text = " you killed \(monster.monsterType)"
            player2Character.hidden = true
            
        }
        
        
        
        
        
        
        
    }
    
    @IBAction func player2Attack(sender: UIButton) {
        
    }
    
    @IBAction func lootButtonPressed(sender: UIButton) {
        loot.hidden = true
        textLabel.text = chestMessage
      
            NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemey", userInfo: nil, repeats: false)
      
                
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      player = Player(name: "Althor", hp: 200, attackPwr: 30)
        generateRandomEnemey()
        
        
            player1Hp.text = "\(player.hp) HP"
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func generateRandomEnemey() {
        let rand = Int(arc4random_uniform(UInt32(2)))
        
        if rand == 0 {
            monster = Balrog(startingHp: 250, attackPwr: 15)
            
        } else if rand == 1 {
            monster = Sauron(startingHp: 1000, attackPwr: 50)
        }
            
     player2Character.hidden = false
    }

}

