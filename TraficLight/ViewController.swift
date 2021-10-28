//
//  ViewController.swift
//  TraficLight
//
//  Created by Егор on 15.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var buttonName: UIButton!
    
    
    private let LightIsOn: CGFloat = 1
    private let LightIsOff: CGFloat = 0.3

    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        buttonName.layer.cornerRadius = 10
        
        redLightView.alpha = LightIsOff
        yellowLightView.alpha = LightIsOff
        greenLightView.alpha = LightIsOff
        
        
    }

    @IBAction func buttonLightPressed() {
        let alpha: CGFloat = LightIsOn

        switch alpha {
            case redLightView.alpha:
                redLightView.alpha = LightIsOff
                yellowLightView.alpha = LightIsOn
            case yellowLightView.alpha:
                yellowLightView.alpha = LightIsOff
                greenLightView.alpha = LightIsOn
            case greenLightView.alpha:
                greenLightView.alpha = LightIsOff
                redLightView.alpha = LightIsOn
            default:
                redLightView.alpha = LightIsOn
                buttonName.setTitle("Press Next", for: .normal)
    }
    
}
}

