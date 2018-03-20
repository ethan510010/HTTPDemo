//
//  ArticleViewController.swift
//  HTTPDemo
//
//  Created by EthanLin on 2018/3/20.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let baseUrl = "https://us-central1-shavenking-me-1dfe2.cloudfunctions.net/posts/"
    
    let username = UserDefaults.standard.string(forKey: "username")
    
    var articles = [Article]()
    
    
    @IBOutlet weak var articleTableView: UITableView!
    

    @IBAction func goEditArticleVC(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "editArticle", sender: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath) as! ArticleTableViewCell
        cell.selectionStyle = .none
        cell.updateCellUI(article: articles[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            APIManager.shared.deleteArticle(username: <#T##String#>, whichArticle: <#T##Int#>, completion: <#T##() -> Void#>)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        articleTableView.delegate = self
        articleTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        APIManager.shared.fetchArticle(urlString: <#T##String#>, parameters: <#T##[String : String]#>, completion: <#T##([Article]?) -> Void#>)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
