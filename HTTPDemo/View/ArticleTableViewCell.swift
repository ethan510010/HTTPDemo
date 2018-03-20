//
//  ArticleTableViewCell.swift
//  HTTPDemo
//
//  Created by EthanLin on 2018/3/20.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var articleTopic: UILabel!
    @IBOutlet weak var articleContent: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var whoLike: UILabel!
    
    
    func updateCellUI(article:Article){
        self.articleTopic.text = article.topic
        self.articleContent.text = article.content
        self.authorLabel.text = article.author
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
