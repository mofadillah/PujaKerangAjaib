//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Fadillah on 09/09/18.
//  Copyright © 2018 Fadillah Hadiyanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallImage : Int = 4
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtomPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    func updateBallImage(){
        randomBallImage = Int(arc4random_uniform(4))
        ballImage.image = UIImage(named: ballArray[randomBallImage])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
    
    


}

