//
//  DetailView.swift
//  Hacker.News
//
//  Created by Mero on 2020-05-14.
//  Copyright © 2020 Mero. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

