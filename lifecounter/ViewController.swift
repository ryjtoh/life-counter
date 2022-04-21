//
//  ViewController.swift
//  lifecounter
//
//  Created by Ryan Oh on 4/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    var player1Health = 20
    var player2Health = 20
    
    // PLAYER 1 FUNCTIONS
    @IBAction func plusP1(_ sender: Any) {
        player1Health += 1
        updatePlayer1()
        checkDeath(player1Health, 1)
    }
    
    @IBAction func minusP1(_ sender: Any) {
        player1Health -= 1
        updatePlayer1()
        checkDeath(player1Health, 1)
    }

    @IBAction func plus5P1(_ sender: Any) {
        player1Health += 5
        updatePlayer1()
        checkDeath(player1Health, 1)
    }
    
    @IBAction func minus5P1(_ sender: Any) {
        player1Health -= 5
        updatePlayer1()
        checkDeath(player1Health, 1)
    }
    
    // PLAYER 2 FUNCTIONS
    
    
    @IBAction func minusP2(_ sender: Any) {
        player2Health -= 1
        updatePlayer2()
        checkDeath(player2Health, 2)
    }
    
    @IBAction func plusP2(_ sender: Any) {
        player2Health += 1
        updatePlayer2()
        checkDeath(player2Health, 2)
    }
    
    @IBAction func minus5P2(_ sender: Any) {
        player2Health -= 5
        updatePlayer2()
        checkDeath(player2Health, 2)
    }
    
    @IBAction func plus5P2(_ sender: Any) {
        player2Health += 5
        updatePlayer2()
        checkDeath(player2Health, 2)
    }
    
    
    
    func checkDeath(_ health: Int, _ player: Int) {
        if (health <= 0) {
            result.text = "Player \(player) LOSES!"
        }
    }
    
    func updatePlayer1() {
        player1.text = "\(player1Health)"
    }
    
    func updatePlayer2() {
        player2.text = "\(player2Health)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updatePlayer1()
        updatePlayer2()
    }
    
    


}

