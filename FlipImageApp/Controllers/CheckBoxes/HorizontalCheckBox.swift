
import SwiftUI

struct HorizontalCheckBox: View {
    
    @Binding var isHorisontal: Bool
    
    var body: some View {
        HStack(alignment: .center, spacing: 50){
        Button(action:{
            self.isHorisontal.toggle()}) {
                Image(systemName: self.isHorisontal ? "checkmark.square" : "square")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        Text("Flip horizontal")
            .font(.system(size: 30))
        }
    }
}

struct HorizontalCheckBox_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCheckBox(isHorisontal: .constant(false))
    }
}
