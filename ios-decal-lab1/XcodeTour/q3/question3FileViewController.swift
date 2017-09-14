//
//  question3FileViewController.swift
//  XcodeTour
//
//  Created by Divi Kumar on 9/13/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class question3FileViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        text.text = "i am a view controller with a class set 😊";
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
