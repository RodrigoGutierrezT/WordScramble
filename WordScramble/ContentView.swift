//
//  ContentView.swift
//  WordScramble
//
//  Created by Rodrigo on 08-07-24.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var newWord = ""
    @State private var rootWord = ""
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter your new word", text: $newWord)
                }
                
                Section {
                    ForEach(usedWords, id: \.self) { word in
                        Text(word)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
