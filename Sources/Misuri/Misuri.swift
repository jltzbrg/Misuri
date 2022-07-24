import SwiftUI

//MARK: - MRingProgressView
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


//MARK: - MButtonTextLabelShape
private struct MButtonTextLabelShape: ViewModifier {
    let buttonText: String
    let fontSize: CGFloat
    let fontWeight: Font.Weight?
    let fontDesign: Font.Design?
    let textColor: Color ?? Color.red
    let buttonWidth: CGFloat
    let buttonHeight: CGFloat
    let buttonBackgroundColor: Color
    let buttonCornerRadius: CGFloat
    
    fileprivate func body(content:  Content) -> some View {
        Text(buttonText)
            .font(.system(size: fontSize, weight: fontWeight, design: .rounded))
            .foregroundColor(textColor)
            .frame(width: buttonWidth, height: buttonHeight, alignment: .center)
            .background(buttonBackgroundColor)
            .cornerRadius(buttonCornerRadius)
    }
}

//MARK: - Extensions
extension View {
    
    public func ringProgressView(progress: Int, maxProgress: Int, colors: [Color]) -> some View {
        self.modifier(MRingProgressView(progress: progress, maxProgress: maxProgress, colors: colors))
    }
    
    public func buttonTextLabelShapeView(text:String, size: CGFloat, weight: Font.Weight?, design: Font.Design?, textColor: Color, width: CGFloat, height: CGFloat, backgroundColor: Color, radius: CGFloat) -> some View {
        self.modifier(MButtonTextLabelShape(buttonText: text, fontSize: size, fontWeight: weight, fontDesign: design, textColor: textColor, buttonWidth: width, buttonHeight: height, buttonBackgroundColor: backgroundColor, buttonCornerRadius: radius))
    }
}


