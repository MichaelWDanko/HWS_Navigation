//
//  ContentView.swift
//  Navigation
//
//  Created by Michael Danko on 10/24/24.
//

import SwiftUI

struct DetailView: View {
    
    let detail: Int
    
    var body: some View {
        Text("")
    }
    
    init(detail: Int) {
        self.detail = detail
        print("New DetailView with \(detail)")
    }
}

struct Person: Hashable {
    let name: String
    let id: UUID
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                NavigationLink("Select \(i)", value: i)
            }
            .navigationDestination(for: Int.self, destination: <#T##(Hashable) -> View#>
            )
            .navigationDestination(for: <#T##Hashable.Type#>, destination: <#T##(Hashable) -> View#>)
            
        }
    }
}

#Preview {
    ContentView()
}
