//
//  ClassDetailViewController.swift
//  XcodeTour
//
//  Created by Chris Zielinski on 9/13/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit
import CalCentralServer

class ClassDetailViewController: UIViewController {

    @IBOutlet var responseLabel: UILabel!
    var permissionCode: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        submitEnrollmentRequest(withPermissionCode: permissionCode, forUser: "Test McTester")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Server API
    
    func submitEnrollmentRequest(withPermissionCode code: Any, forUser user: Any) {
        // Serialize (encode) parameter dictionary into JSON data
        
        
        let jsonData = encodeParameters(dictionary: ["permission_code" : String(describing: code), "user" : user])
        // Encode JSON data to base64 string
        let encodedString = jsonData.base64EncodedString()
        // Make network request
        let (invalidRequest, responseString, errorMessage) = CalCentralServer.post(encodedParameters: encodedString)
        
        guard errorMessage == nil else {
            fatalError(errorMessage!)
        }
        
        if invalidRequest {
            responseLabel.textColor = .red
        }
        responseLabel.text = responseString
    }
    
    func encodeParameters(dictionary: [String : Any]) -> Data {
        do {
            // Serialize (encode) parameter dictionary into JSON data
            return try JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
        } catch {
            fatalError("Could not encode parameters: \(error.localizedDescription)")
        }
    }

}
