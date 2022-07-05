# Misuri

## Installation

To install this package, import `https://github.com/jltzbrg/Misuri` in Swift Package Manager using Xocde.

## Usage example 

```swift
import SwiftUI
import Misuri

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            
            Text("Misuri Ring Progress View")
                .ringProgressView(progress: 2, maxProgress: 10, colors: [Color.purple, Color.blue])
        
        }
    }
}

```
