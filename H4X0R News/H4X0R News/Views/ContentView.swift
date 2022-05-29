//
//  ContentView.swift
//  H4X0R News
//
//  Created by Ricardo Oliveira on 29/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)){
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationTitle("H40Xr News")
            .onAppear{
                self.networkManager.fecthData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
