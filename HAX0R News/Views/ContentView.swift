//
//  ContentView.swift
//  HAX0R News
//
//  Created by Mac on 20.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                            .foregroundColor(Color(red: 0.32, green: 0.33, blue: 0.92))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Text(post.title)
                            .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("HAX0R News")
        }
        .onAppear{
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



