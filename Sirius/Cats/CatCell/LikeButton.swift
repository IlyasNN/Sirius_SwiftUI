import SwiftUI

struct LikeButton: View {
  @Binding var isLiked: Bool

  @ViewBuilder
  var body: some View {
    Button {
      isLiked.toggle()
    } label: {
      Image(systemName: "heart.fill")
        .font(.title)
        .foregroundColor(isLiked ? .red : .gray)
        .opacity(isLiked ? 1 : 0.5)
    }
    .animation(.default, value: isLiked)
  }
}

#Preview {
  LikeButton(isLiked: .constant(true))
}
