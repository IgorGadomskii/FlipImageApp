

import SwiftUI

struct RotateButtonLeft: View {
    
    @Binding var degrees: Double
    
    var body: some View {
        Button(action:{
            degrees -= 10.0
        }) {
            Image(systemName: "arrow.counterclockwise")
                .resizable()
                .frame(width: 50, height: 50)
        }
    }
}

struct RotateButtonLeft_Previews: PreviewProvider {
    static var previews: some View {
        RotateButtonLeft(degrees: .constant(0.0))
    }
}
