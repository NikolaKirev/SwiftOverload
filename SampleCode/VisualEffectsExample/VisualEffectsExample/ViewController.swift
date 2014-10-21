//
//  ViewController.swift
//  VisualEffectsExample
//
//  Created by Nikola Kirev on 8/10/14.
//  Copyright (c) 2014 swiftovrld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create the visual effect
        //You can choose between ExtraLight, Light and Dark
        let blurEffect: UIBlurEffect = UIBlurEffect(style: .Dark)
        
        let blurView: UIVisualEffectView = UIVisualEffectView(effect: blurEffect)
        blurView.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.view.addSubview(blurView)
        //AutoLayout code
        //Size
        blurView.addConstraint(NSLayoutConstraint(item: blurView, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 250))
        blurView.addConstraint(NSLayoutConstraint(item: blurView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 250))
        //Center
        self.view.addConstraint(NSLayoutConstraint(item: blurView, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: blurView, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1.0, constant: 0))
        
        let vibrancyView: UIVisualEffectView = UIVisualEffectView(effect: UIVibrancyEffect(forBlurEffect: blurEffect))
        vibrancyView.setTranslatesAutoresizingMaskIntoConstraints(false)
        blurView.contentView.addSubview(vibrancyView)
        //AutoLayout code
        //Size
        vibrancyView.addConstraint(NSLayoutConstraint(item: vibrancyView, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 250))
        vibrancyView.addConstraint(NSLayoutConstraint(item: vibrancyView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 250))
        //Center
        blurView.addConstraint(NSLayoutConstraint(item: vibrancyView, attribute: .CenterX, relatedBy: .Equal, toItem: blurView, attribute: .CenterX, multiplier: 1.0, constant: 0))
        blurView.addConstraint(NSLayoutConstraint(item: vibrancyView, attribute: .CenterY, relatedBy: .Equal, toItem: blurView, attribute: .CenterY, multiplier: 1.0, constant: 0))
        
        var label: UILabel = UILabel()
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        label.text = "Vibrancy"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        label.textAlignment = .Center
        label.textColor = UIColor.whiteColor()
        vibrancyView.contentView.addSubview(label)
        //AutoLayout code
        //Center
        vibrancyView.addConstraint(NSLayoutConstraint(item: label, attribute: .CenterX, relatedBy: .Equal, toItem: vibrancyView, attribute: .CenterX, multiplier: 1.0, constant: 0))
        vibrancyView.addConstraint(NSLayoutConstraint(item: label, attribute: .CenterY, relatedBy: .Equal, toItem: vibrancyView, attribute: .CenterY, multiplier: 1.0, constant: 0))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

