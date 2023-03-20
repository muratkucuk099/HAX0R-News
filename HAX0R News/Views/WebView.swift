//
//  WebView.swift
//  HAX0R News
//
//  Created by Mac on 20.03.2023.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString : String?
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    
}
