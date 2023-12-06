//
//  ViewController.swift
//  CodePathiOS101
//
//  Created by Hedin A. García on 12/5/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Labels
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var universityLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    
    // Buttons
    @IBAction func changeTextColor(_ sender: UIButton) {
        let randomColor = changeColor()
        nameLabel.textColor = randomColor
        universityLabel.textColor = randomColor
        professionLabel.textColor = randomColor
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func resetApp(_ sender: UIButton) {
        nameLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        universityLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        professionLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.5)
    }
    
    // Random Color Generator
    func changeColor() -> UIColor{
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
}

