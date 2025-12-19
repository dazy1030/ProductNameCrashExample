//
//  ContentView.swift
//  ProductNameCrashExample
//
//  Created by 小田島 直樹 on 2025/12/19.
//

import AuthenticationServices
import SwiftUI

struct ContentView: View {
    @Environment(\.webAuthenticationSession) var webAuthenticationSession
    
    var body: some View {
        Button("Start Auth") {
            Task {
                try await startAuth()
            }
        }
    }
    
    /// 擬似的にWeb認証を開始する
    private func startAuth() async throws {
        let _ = try await webAuthenticationSession.authenticate(
            using: URL(string: "https://example.com")!,
            callbackURLScheme: "example"
        )
    }
}

#Preview {
    ContentView()
}
