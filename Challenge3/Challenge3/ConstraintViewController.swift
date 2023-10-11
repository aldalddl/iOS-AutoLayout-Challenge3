//
//  ConstraintViewController.swift
//  Challenge3
//
//  Created by 강민지 on 2023/10/11.
//

import Foundation
import UIKit

class ConstraintViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.setTitle("Button", for: UIControl.State.normal)
        button.setTitleColor(.white, for: UIControl.State.normal)
        button.backgroundColor = .systemGreen
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        
        let leading = NSLayoutConstraint(item: button,
                                         attribute: .leading,
                                         relatedBy: .equal,
                                         toItem: safeArea,
                                         attribute: .leading,
                                         multiplier: 1,
                                         constant: 20)
        
        let trailing = NSLayoutConstraint(item: button,
                                         attribute: .trailing,
                                         relatedBy: .equal,
                                         toItem: safeArea,
                                         attribute: .trailing,
                                         multiplier: 1,
                                         constant: -20)
        
        let bottomView = NSLayoutConstraint(item: button,
                                         attribute: .bottom,
                                         relatedBy: .equal,
                                         toItem: safeArea,
                                         attribute: .bottom,
                                         multiplier: 1,
                                         constant: 0)
        
        let bottomSafeArea = NSLayoutConstraint(item: button,
                                         attribute: .bottom,
                                         relatedBy: .lessThanOrEqual,
                                         toItem: view,
                                         attribute: .bottom,
                                         multiplier: 1,
                                         constant: -20)
        
        bottomSafeArea.priority = .defaultHigh
        
        NSLayoutConstraint.activate([leading, trailing, bottomView, bottomSafeArea])
    }
}
