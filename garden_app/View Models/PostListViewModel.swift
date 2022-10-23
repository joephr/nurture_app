//
//  PostListViewModel.swift
//  garden_app
//
//  Created by Joephery Rafael on 10/22/22.
//

import SwiftUI

class PostListViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchPosts() async throws {
        let urlString = Constants.baseURL + Endpoints.posts
        
        guard let url = URL(string: urlString) else {
            throw HttpError.badURL
        }
        
        let postResponse: [Post] = try await HttpClient.shared.fetch(url: url)
        
        DispatchQueue.main.async {
            self.posts = postResponse
        }
    }
}
