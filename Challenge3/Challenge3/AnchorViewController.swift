//
//  AnchorViewController.swift
//  Challenge3
//
//  Created by 강민지 on 2023/10/11.
//

import Foundation
import UIKit

class AnchorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.setTitle("Button", for: UIControl.State.normal)
        button.setTitleColor(.white, for: UIControl.State.normal)
        button.backgroundColor = .systemGreen
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        
        button.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20).isActive = true
        
        button.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20).isActive = true
        
        let safeBottomAnchor = button.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        
        safeBottomAnchor.isActive = true
        safeBottomAnchor.priority = .init(999)
        
        let viewBottomAnchor = button.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -20)
        
        viewBottomAnchor.isActive = true
    }
}
