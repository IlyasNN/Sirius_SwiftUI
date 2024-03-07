import SwiftUI

struct CatDetailedView: View {
  let cat: Cat

  @Binding var isLiked: Bool

  var body: some View {
    ScrollView{
      VStack {
        Image(cat.imageName)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .clipShape(
            RoundedRectangle(
              cornerRadius:(10)
            ))
          .padding()
        Text(cat.description)
          .padding()
        Spacer()
      }
    }
    .navigationTitle(cat.name)
    .toolbar(content: {
      LikeButton(isLiked: $isLiked)
    })

  }
}

#Preview {
  CatDetailedView(cat: FakeData.cat, isLiked: .constant(true))
}
