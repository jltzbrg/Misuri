# Misuri

## Installation

To install this package, import `GITHUB URL` in Xcode using [Swift Package Manager](https://www.swift.org/package-manager/).

## Usage example 

```swift
...
import Misuri

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            ...
            Text("Misuri Ring Progress View")
                .ringProgressView(progress: 2, 
                                  maxProgress: 10, 
                                  colors: [Color.purple, Color.blue])
        }
    }
}

```
