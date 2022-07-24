# Misuri

## Installation

To install this package, import `GITHUB URL` in Xcode using [Swift Package Manager](https://www.swift.org/package-manager/).

## Usage example 

=======================================================================

### .ringProgressView [Modifier]

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

### .buttonTextLabelShapeView [Modifier]

```swift
...
import Misuri

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            ...
            Button {
                // Do Something 
                } label: {
                    Text("Misuri Button Shape").buttonTextLabelShapeView(size: 16, weight: .bold, design: .rounded, textColor: Color.pink, width: 315, height: 60, backgroundColor: Color.purple, radius: 6)
                }
        }
    }
}
```
