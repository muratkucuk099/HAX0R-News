//
//  PostData.swift
//  HAX0R News
//
//  Created by Mac on 20.03.2023.
//

import Foundation

struct Results: Decodable {
    let hits : [Post]
}
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
