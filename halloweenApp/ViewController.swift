//
//  ViewController.swift
//  halloweenApp
//
//  Created by Alvie on 2021/9/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ghost1: UIImageView!
    @IBOutlet weak var ghost2: UIImageView!
    @IBOutlet weak var ghost3: UIImageView!
    @IBOutlet weak var ghost4: UIImageView!
    @IBOutlet weak var fire1: UIImageView!
    @IBOutlet weak var fire2: UIImageView!
    @IBOutlet weak var fire3: UIImageView!
    @IBOutlet weak var fire4: UIImageView!
    @IBOutlet weak var fire5: UIImageView!
    @IBOutlet weak var fire6: UIImageView!
    @IBOutlet weak var fire7: UIImageView!
    
    
    
    
    @IBOutlet weak var moveSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(_ sender: UISlider) {
        let speed = sender.value*3
        ghost1.frame.origin.x = CGFloat(60+speed)
        ghost2.frame.origin.x = CGFloat(-60+speed)
        ghost3.frame.origin.x = CGFloat(-180+speed)
        ghost4.frame.origin.x = CGFloat(-300+speed)
        
        fire1.alpha = CGFloat(sender.value/360)
        fire3.alpha = CGFloat(sender.value/720)
        fire5.alpha = CGFloat(sender.value/720)
        fire6.alpha = CGFloat(sender.value/720)
        fire7.alpha = CGFloat(sender.value/720)
        
        fire2.frame.origin.y = CGFloat(300-speed/3)
        fire4.frame.origin.y = CGFloat(300-speed*2)
        
 
    }
    

    
}

