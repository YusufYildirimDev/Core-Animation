//
//  ViewController.swift
//  Core-Animation
//
//  Created by Yusuf Muhammet Yıldırım on 5/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let yellowView = UIView()
    let _wight : CGFloat = 140
    let _height : CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yellowView.backgroundColor = .systemYellow
        
        view.addSubview(yellowView)
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        
        yellowView.frame = CGRect ( x : view.bounds.midX - _wight/2,
                                    y : view.bounds.midY - _height/2,
                                    width : _wight, height : _height )
        animate()
    }
    
    func animate()  {
        let animation = CABasicAnimation()
        animation.keyPath = "transform.rotaion.z"
        animation.fromValue = 0
        animation.toValue = CGFloat.pi / 4
        animation.duration = 1
        
        yellowView.layer.add(animation, forKey: "basic")
        yellowView.layer.transform = CATransform3DMakeRotation(CGFloat.pi / 4, 0, 0, 1) // son konum güncelleme
    }
}

