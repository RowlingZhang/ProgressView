//
//  ViewController.swift
//  Progress
//
//  Created by JunJun Guo on 2018/12/21.
//  Copyright © 2018年 JunJun Guo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var progressRing:UICircularProgressRingView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let rect = CGRect(x: 50, y: 70, width: 280, height: 280)
        progressRing = UICircularProgressRingView(frame: rect)
        
        progressRing.backgroundColor = UIColor.clear
        progressRing.viewStyle = 1
        progressRing.maxValue = 100
        progressRing.fontColor = UIColor.lightGray
        progressRing.fontSize = 90
        progressRing.innerRingCapStyle = 1
        progressRing.innerRingWidth = 20
        progressRing.innerRingSpacing = 10
        progressRing.innerRingColor = UIColor.orange
        progressRing.outerRingColor = UIColor.purple
        progressRing.outerRingWidth = 20
        progressRing.animationStyle = kCAMediaTimingFunctionLinear
        
        let bt2 = UIButton(type: UIButtonType.roundedRect)
        bt2.frame = CGRect(x: 50, y: 450, width: 280, height: 40)
        bt2.backgroundColor = UIColor.brown
        bt2.tintColor = UIColor.white
        bt2.setTitle("Start", for: UIControlState())
        bt2.addTarget(self, action: #selector(ViewController.buttonTap(_:)), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(bt2)
        self.view.addSubview(progressRing)
        self.view.backgroundColor = .brown
    }
    
    func buttonTap(_ button:UIButton)
    {
        progressRing.setProgress(value: 100, animationDuration: 3.2)
        {
            print("Done animating!")
        }
    }

}

