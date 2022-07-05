import SwiftUI

public struct MTimerProgressView: View {
    var progress: Int
    var maxProgress: Int
    var colors: [Color]
    
    public var body: some View {
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
            
            Text(String(progress))
        }.frame(width: 150, height: 150)
    }
}

