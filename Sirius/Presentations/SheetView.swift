import SwiftUI

struct SheetView: View {

  @Environment(\.dismiss) var dismiss

  var body: some View {
    VStack{
      Image("cat_on_rope")
        .resizable()
        .scaledToFill()
        .clipped()
      Spacer()
    }
  }
}

#Preview {
    SheetView()
}
