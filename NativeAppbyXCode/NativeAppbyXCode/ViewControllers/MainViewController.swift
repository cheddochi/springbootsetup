//
//  ViewController.swift
//  NativeAppbyXCode
//
//  Created by DOHUN KWON on 2021/10/23.
//

import UIKit
import Lottie
import Algorithms


class MainViewController: UIViewController {

    // title
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "메인화면"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 70)
        label.textColor = .black
        
        return label
    }()
    
    let animationView: AnimationView = {
        let animView = AnimationView(name: "81808-purchase-made")
        animView.frame = CGRect(x:0, y:0, width: 400, height: 400)
        animView.contentMode = .scaleAspectFill
        return animView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        
        // animation execute
        animationView.play{ (finish) in
            //
            print("애니메이션이 끝났다.")
            
            self.view.backgroundColor = .white
            self.animationView.removeFromSuperview()
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
        }
        
    }


}

