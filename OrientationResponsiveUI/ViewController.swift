//
//  ViewController.swift
//  OrientationResponsiveUI
//
//  Created by Prakhar Tripathi on 10/04/20.
//  Copyright © 2020 Prakhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(self.orientationChanged), name: UIApplication.didChangeStatusBarOrientationNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view1.backgroundColor = greenColors[0]
        view2.backgroundColor = greenColors[1]
    }
    
    @IBAction func button1Action(_ sender: Any) {
        view1.backgroundColor = greenColors[0]
        view2.backgroundColor = greenColors[1]
    }
    
    @IBAction func button2Action(_ sender: Any) {
        view1.backgroundColor = redColors[0]
        view2.backgroundColor = redColors[1]
    }
    
    @IBAction func button3Action(_ sender: Any) {
        view1.backgroundColor = blueColors[0]
        view2.backgroundColor = blueColors[1]
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
