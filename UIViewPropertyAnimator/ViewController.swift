//
//  ViewController.swift
//  UIViewPropertyAnimator
//
//  Created by Suresh Shiga on 17/12/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var planetImageView: UIImageView!
    
    let animator = UIViewPropertyAnimator(duration: 1.0, curve: .linear)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureInitialSetup()
        configureEndAnimations()
       
    }

    private func configureInitialSetup() {
        planetImageView.alpha = 0.0
        planetImageView.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
    }
    
    private func configureEndAnimations() {
        animator.addAnimations {
            self.planetImageView.alpha = 1.0
            self.planetImageView.transform = CGAffineTransform(scaleX: 3, y: 3)
        }
        
        animator.addAnimations({
            self.planetImageView.frame.origin.y -= 400
        }, delayFactor: 0.3)
    }

    @IBAction func valueDidChanged(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
}



