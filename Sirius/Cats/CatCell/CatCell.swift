import SwiftUI

struct CatCell: View {
  let cat: Cat

  @Binding var isLiked: Bool

  @ViewBuilder
  var body: some View {
    HStack {
      Image(cat.imageName)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 100, height: 100)
        .clipShape(
          RoundedRectangle(
            cornerRadius:(10)
          ))
      Text(cat.name)
        .bold()
      Spacer()

      LikeButton(isLiked: $isLiked)

    }
    .padding()
  }
}

#Preview {
  CatCell(cat: FakeData.cat, isLiked: .constant(false))
}
