//
//  ContentView.swift
//  Hacker.News
//
//  Created by Mero on 2020-05-14.
//  Copyright © 2020 Mero. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    @ObservedObject var networkManager = NetworkManager()
    var body: some View
    {
        NavigationView
            {
                List(networkManager.posts){ post in
                    NavigationLink(destination: DetailView(url: post.url))
                    {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                .navigationBarTitle("Hacker.News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}












