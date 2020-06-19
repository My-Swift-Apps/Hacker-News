//
//  PostData.swift
//  Hacker.News
//
//  Created by Mero on 2020-05-14.
//  Copyright © 2020 Mero. All rights reserved.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable
{
    var id:String
    {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
