//
//  ViewController.swift
//  OrientationResponsiveUI
//
//  Created by Prakhar Tripathi on 10/04/20.
//  Copyright © 2020 Prakhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(self.orientationChanged), name: UIApplication.didChangeStatusBarOrientationNotification, object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = UIColor.green
    }
    
    @objc func orientationChanged(notification: NSNotification) {
        let deviceOrientation = UIApplication.shared.statusBarOrientation

        switch deviceOrientation {
        case .portrait:
            fallthrough
        case .portraitUpsideDown:
            print("Portrait")

        case .landscapeLeft:
            fallthrough
        case .landscapeRight:
            print("landscape")
        case .unknown:
            print("unknown orientation")
        @unknown default:
            print("unknown case in orientation change. Note")
        }
    }
}
