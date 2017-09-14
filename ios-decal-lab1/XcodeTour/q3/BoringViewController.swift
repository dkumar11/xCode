//
//  BoringViewController.swift
//  XcodeTour
//
//  Created by Paige Plander on 9/13/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

// this view controller may be boring, but its lifecycle isn't!
class BoringViewController: UIViewController {

    @IBOutlet weak var boringLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boringLabel.textColor = UIColor.green
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @IBAction func boringButtonWasPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToAnotherBoringViewController", sender: sender)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
