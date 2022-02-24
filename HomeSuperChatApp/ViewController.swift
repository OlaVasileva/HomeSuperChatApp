//
//  ViewController.swift
//  HomeSuperChatApp
//
//  Created by Васильева Ольга on 24.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if LogManager.shared.loggingOn {
            print("ViewController: \(#function)")
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if LogManager.shared.loggingOn {
            print("ViewController: \(#function)")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if LogManager.shared.loggingOn {
            print("ViewController: \(#function)")
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if LogManager.shared.loggingOn {
            print("ViewController: \(#function)")
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if LogManager.shared.loggingOn {
            print("ViewController: \(#function)")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if LogManager.shared.loggingOn {
            print("ViewController: \(#function)")
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if LogManager.shared.loggingOn {
            print("ViewController: \(#function)")
        }
    }
}



