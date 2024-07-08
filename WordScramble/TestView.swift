//
//  TestView.swift
//  WordScramble
//
//  Created by Rodrigo on 08-07-24.
//

import SwiftUI

struct TestView: View {
    
    private let names = ["Mario", "Luigi", "Toad", "Peach"]
    
    var body: some View {
        VStack {
            List(1..<6){
                Text("Dynamic item \($0)")
            }
            
            List(names, id:\.self) {
                Text($0)
            }
        }
        .padding()
    }
    
    func testBundles() {
        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt") {
            if let fileContent = try? String(contentsOf: fileURL) {
                // we loeaded the file into a string
                print(fileContent)
            }
        }
    }
    
    func testStrings() {
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
}

#Preview {
    TestView()
}
