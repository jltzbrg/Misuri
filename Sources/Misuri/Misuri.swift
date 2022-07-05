import SwiftUI

private struct MRingProgressView: ViewModifier {
    var progress: Int
    var maxProgress: Int
    var colors: [Color]
    
    init(progress: Int, maxProgress: Int, colors: [Color]) {
        self.progress = progress
        self.maxProgress = maxProgress
        self.colors = colors
    }
    
    fileprivate func body(content: Content) -> some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 15)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            Circle()
                .trim(from: 0.0, to: min(CGFloat((Double(progress) * Double(maxProgress))/100), 1.0))
                .stroke(LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: 270))
                .animation(Animation.linear(duration: Double(maxProgress)), value: progress)
            
            content
        }.frame(width: 150, height: 150)
    }
}

extension View {
    public func ringProgressView(progress: Int, maxProgress: Int, colors: [Color]) -> some View {
        self.modifier(MRingProgressView(progress: progress, maxProgress: maxProgress, colors: colors))
    }
}


