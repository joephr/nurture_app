//
//  ContentView.swift
//  garden_app
//
//  Created by Joephery Rafael on 10/22/22.
//

import SwiftUI

struct PostsList: View {
    
    @StateObject var viewModel =
        PostListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.posts) {
                     post in
                    if (post.postType == "rose") {
                        Button {
                            print("selected")
                        } label: {
                            Text(post.message)
                                .font(.title3)
                                .foregroundColor(Color(.label))
                        }
                    }
                }
            }
            .navigationTitle(Text("Rose Posts"))
        }
        .onAppear {
            Task {
                do {
                    try await viewModel.fetchPosts()
                } catch {
                    print("error")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostsList()
    }
}
