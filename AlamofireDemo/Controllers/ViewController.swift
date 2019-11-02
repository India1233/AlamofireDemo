//
//  ViewController.swift
//  AlamofireDemo
//
//  Created by Suresh Shiga on 16/10/18.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let networkingClient  = NetworkingClient()

    @IBOutlet var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func excuteData(_ sender: Any) {
        
        guard let urlExecute = URL (string: "https://jsonplaceholder.typicode.com/posts/1") else {
            return
        }
        
        networkingClient.excute(url: urlExecute) { (json, error) in
            
            if let error = error{
                self.textView.text = error.localizedDescription
            }else if json != nil {
                self.textView.text = json?.description
            }
        }
        
    }
}

