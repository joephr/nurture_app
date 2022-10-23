//
//  Post.swift
//  garden_app
//
//  Created by Joephery Rafael on 10/22/22.
//

import Foundation

struct Post: Identifiable, Codable {
    let id: UUID?
    var postType: String
    var message: String
}
