//
//  ViewController.swift
//  Animate
//
//  Created by Taylor Mott on 11/16/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var yConstraint: NSLayoutConstraint?
    var drawerShown = false
    var happyGhostImageView: UIImageView!
    
    func animate() {
        let scaleTransform = CGAffineTransformMakeScale(0.5, 0.5)
        let rotateTransform = CGAffineTransformMakeRotation(CGFloat((-2 * M_PI * 0.75)))
        
        UIView.animateWithDuration(3.0) { () -> Void in
            self.happyGhostImageView.alpha = 0.0
            self.happyGhostImageView.center = CGPoint(x: self.happyGhostImageView.center.x, y: self.happyGhostImageView.center.y - 125)
            self.happyGhostImageView.transform = CGAffineTransformConcat(scaleTransform, rotateTransform)
        
    }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        let ghostImageView = UIImageView(frame: CGRect(x: 157, y: 175, width: 100, height: 100))
        ghostImageView.image = UIImage(named: "ghost")
        view.addSubview(ghostImageView)
        
        ghostImageView.alpha = 0.0
        
        
//        let rotateTransform1 = CGAffineTransformMakeRotation(CGFloat(M_PI))
//        let scaleTransform1 = CGAffineTransformMakeScale(2.0, 2.0)
//        
//        UIView.animateWithDuration(3.0) {
//            ghostImageView.alpha = 1.0
//            ghostImageView.center = CGPoint(x: ghostImageView.center.x, y: ghostImageView.center.y - 100)
//            ghostImageView.transform = CGAffineTransformConcat(rotateTransform1, scaleTransform1)
//        }
//
//        UIView.animateWithDuration(3.0, animations: {
//            ghostImageView.alpha = 1.0
//            ghostImageView.center = CGPoint(x: ghostImageView.center.x, y: ghostImageView.center.y - 100)
//            ghostImageView.transform = CGAffineTransformConcat(rotateTransform1, scaleTransform1)
//        }) { (_) in
//UIView.animateWithDuration(1.0, animations: { 
//    ghostImageView.alpha = 0.0
//})        }
        
        
        let happyGhostImageView = UIImageView(frame: CGRect(x: 157, y: 250, width: 100, height: 100))
        happyGhostImageView.image = UIImage(named: "happyGhost")
        view.addSubview(happyGhostImageView)
        
        let scaleTransform = CGAffineTransformMakeScale(0.5, 0.5)
        let rotateTransform = CGAffineTransformMakeRotation(CGFloat((-2 * M_PI * 0.75)))
        
        UIView.animateWithDuration(3.0) {
            happyGhostImageView.alpha = 0.0
            happyGhostImageView.center = CGPoint(x: happyGhostImageView.center.x, y: happyGhostImageView.center.y - 125)
            happyGhostImageView.transform = CGAffineTransformConcat(scaleTransform, rotateTransform)
        }
        
        
        ///// Happy Ghost Button /////////
        
//        let happyGhostButton = UIButton(frame: CGRect(x: 10, y: 300, width: 44, height: 300))
//        happyGhostButton.setTitle("Ghost Buster", forState: .Normal)
//        happyGhostButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
//        happyGhostButton.addTarget(self, action: #selector(ViewController.animate), forControlEvents: .TouchUpInside)
//        view.addSubview(happyGhostButton)
//       
        
        
        
        
        
   // MARK: -     /////// Rocket Image /////////
        
        let rocketImageView = UIImageView(frame: CGRect(x: 0, y: 275, width: 75, height: 75))
        rocketImageView.image = UIImage(named: "rocket")
        view.addSubview(rocketImageView)
        
        let basicAnimation = CABasicAnimation()
        basicAnimation.keyPath = "position.x"
        basicAnimation.fromValue = rocketImageView.center.x
        basicAnimation.toValue = rocketImageView.center.x + 339
        basicAnimation.duration = 2.0
        rocketImageView.layer.addAnimation(basicAnimation, forKey: "launch")
        rocketImageView.center.x += 339
        
        
        
        
        
        
        
   // MARK: -     /////// Password Image View //////////
        
        
        
        let passwordImageView = UIImageView(frame: CGRect(x: 58, y: 355, width: 298, height: 71))
        passwordImageView.image = UIImage(named: "password")
        view.addSubview(passwordImageView)
        
        
        let shakeAnimation = CAKeyframeAnimation()
        shakeAnimation.keyPath = "position.x"
        shakeAnimation.additive = true
        shakeAnimation.values = [0, -10, 10, -10, 0]
        shakeAnimation.keyTimes = [0, 1/6.0, 3/6.0, 5/6.0, 1.0]
        shakeAnimation.duration = 0.5
        passwordImageView.layer.addAnimation(shakeAnimation, forKey: "shake")
        
        
        
        
   // MARK: -     ///////// Satellite ///////////
        
        
        let earthImageView = UIImageView(frame: CGRect(x: 157, y: 515, width: 100, height: 100))
        earthImageView.image = UIImage(named: "earth")
        view.addSubview(earthImageView)
        
        let satelliteImageView = UIImageView(frame: CGRect(x: 157, y: 515, width: 50, height: 50))
        satelliteImageView.image = UIImage(named: "satellite")
        view.addSubview(satelliteImageView)
        
        let boundingRect = CGRectMake(125, 478, 170, 170)
        
        let orbitAnimation = CAKeyframeAnimation()
        orbitAnimation.keyPath = "position"
        orbitAnimation.path = CGPathCreateWithEllipseInRect(boundingRect, nil)
        orbitAnimation.duration = 5
        orbitAnimation.repeatCount = Float.infinity
        orbitAnimation.calculationMode = kCAAnimationPaced
        orbitAnimation.rotationMode = kCAAnimationRotateAuto
        satelliteImageView.layer.addAnimation(orbitAnimation, forKey: "orbit")
        
        
        
        satelliteImageView.animationImages = [UIImage(named: "satellite")!, UIImage(named: "satellite1")!, UIImage(named: "satellite2")!, UIImage(named: "satellite3")!]
        satelliteImageView.animationDuration = 2.0
        satelliteImageView.animationRepeatCount = Int.max
        satelliteImageView.startAnimating()
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




















