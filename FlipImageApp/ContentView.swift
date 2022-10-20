

import SwiftUI

struct ContentView: View {
    
    @State private var degree: Double = 0.0
    @State private var horizontalChecked: Bool = false
    @State private var verticalChecked: Bool = false

    
    var body: some View {
        VStack{
            ModifiedView(isVertical: $verticalChecked, isHorizontal: $horizontalChecked, degrees: $degree)
                .frame(width: 210, height: 350)
                .offset(y: -50)
            VStack{
                HStack(spacing: 60 ){
                    RotateButtonLeft(degrees: $degree)
                    RotateButtonRight(degrees: $degree)
                }
                HorizontalCheckBox(isHorisontal: $horizontalChecked)
                    .padding(.top, 40)
                VerticalCheckBox(isVertical: $verticalChecked)
                    .padding(.leading, -30)
                ClearButton(degrees: $degree, isVertical: $verticalChecked, isHorisontal: $horizontalChecked)
                    
            }
           
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
