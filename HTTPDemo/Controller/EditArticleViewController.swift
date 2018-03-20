//
//  EditArticleViewController.swift
//  HTTPDemo
//
//  Created by EthanLin on 2018/3/20.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class EditArticleViewController: UIViewController {
    
    let baseUrl = "https://us-central1-shavenking-me-1dfe2.cloudfunctions.net/posts/"
    
    let username = UserDefaults.standard.string(forKey: "username")
    
    @IBOutlet weak var topicTextField: UITextField!
    
    @IBOutlet weak var contentTextView: UITextView!
    
    
    @IBAction func ensureButton(_ sender: UIButton) {
        APIManager.shared.submitArticle(urlString: <#T##String#>, username: <#T##String#>, postTopic: <#T##String#>, postContent: <#T##String#>, completion: <#T##(Article?) -> Void#>)
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
