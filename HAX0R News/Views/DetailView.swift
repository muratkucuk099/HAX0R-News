//
//  DetailView.swift
//  HAX0R News
//
//  Created by Mac on 20.03.2023.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

