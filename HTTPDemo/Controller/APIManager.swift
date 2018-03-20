//
//  APIManager.swift
//  HTTPDemo
//
//  Created by EthanLin on 2018/3/20.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import Foundation

class APIManager{
    static let shared = APIManager()
    
    func fetchArticle(urlString:String,parameters:[String:String],completion:@escaping([Article]?)->Void){
        
    }
    
    func submitArticle(urlString:String,username:String,postTopic:String,postContent:String,completion:@escaping(Article?)->Void){
        
    }
    
    func deleteArticle(username:String,whichArticle:Int,completion:@escaping()->Void){
        
    }
    
}
