//
//  ViewController.swift
//  Mov
//
//  Created by AryafAlaqabali on 25/04/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewBack: UIView!
    
    
    //View Back Orang
    @IBOutlet weak var viewOrangBack1: UIView!
    @IBOutlet weak var viewOrangBack2: UIView!
    @IBOutlet weak var viewOrangBack3: UIView!
    @IBOutlet weak var viewOrangBack4: UIView!
    @IBOutlet weak var viewOrangBack5: UIView!
    @IBOutlet weak var viewOrangBack6: UIView!
    @IBOutlet weak var viewOrangBack7: UIView!
    @IBOutlet weak var viewOrangBack8: UIView!
    
    //img
    
    @IBOutlet weak var imgOne: UIImageView!
    @IBOutlet weak var imgTow: UIImageView!
    @IBOutlet weak var imgThree: UIImageView!
    @IBOutlet weak var imgFour: UIImageView!
    @IBOutlet weak var imgFive: UIImageView!
    @IBOutlet weak var imgSix: UIImageView!
    @IBOutlet weak var imgSeven: UIImageView!
    @IBOutlet weak var imgEight: UIImageView!
    
    //Btn
    @IBOutlet weak var btnGetStarted: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewBack.layer.cornerRadius = 50
        
        //View Back Orang
        viewOrangBack1.layer.cornerRadius = 30
        viewOrangBack2.layer.cornerRadius = 30
        viewOrangBack3.layer.cornerRadius = 30
        viewOrangBack4.layer.cornerRadius = 30
        viewOrangBack5.layer.cornerRadius = 30
        viewOrangBack6.layer.cornerRadius = 30
        viewOrangBack7.layer.cornerRadius = 30
        viewOrangBack8.layer.cornerRadius = 30
        
        //img
        imgOne.layer.cornerRadius = 30
        imgTow.layer.cornerRadius = 30
        imgThree.layer.cornerRadius = 30
        imgFour.layer.cornerRadius = 30
        imgFive.layer.cornerRadius = 30
        imgSix.layer.cornerRadius = 30
        imgSeven.layer.cornerRadius = 30
        imgEight.layer.cornerRadius = 30
        
        
        
        btnGetStarted.layer.cornerRadius = 23
//        applyGradient(colors: [UIColor.gray.cgColor, UIColor.systemBlue.cgColor])

        
    }

//    private func applyGradient(colors: [CGColor]) {
//         let gradientLayer = CAGradientLayer()
//         gradientLayer.colors = colors
//        gradientLayer.startPoint = CGPoint(x: 0.9, y: 0.9)
//        gradientLayer.endPoint = CGPoint(x: 0.3, y: 0)
//         gradientLayer.frame = self.btnGetStarted.bounds
//         self.btnGetStarted.layer.insertSublayer(gradientLayer, at: 0)
//        gradientLayer.cornerRadius = 23
////         self.gradientLayer = gradientLayer
//     }
}
