import SwiftUI
import Observation

struct CatsView: View {
  @State private var cats = FakeData.cats
  @State private var likeStorage = LikeStorage()
  @State private var goesToDetail: Bool = false

  var body: some View {
    NavigationStack {
      List{
        ForEach(cats) { cat in
          NavigationLink(value: cat) {
            CatCell(cat: cat, isLiked: likeBinding(for: cat.id))
          }
        }
      }
      .navigationDestination(for: Cat.self) { cat in
        CatDetailedView(cat: cat, isLiked: likeBinding(for: cat.id))
      }
      .navigationTitle("Cats")
      .toolbar(content: {
        Button {
          if let url = URL(string: "https://en.wikipedia.org/wiki/List_of_cat_breeds#Breeds") {
            UIApplication.shared.open(url)
          }
        } label: {
          HStack{
            Text("Show on Wiki")
            Image(systemName: "book.closed.fill")
          }
        }
      })
      .listStyle(.sidebar)
    }
  }

  private func likeBinding(for catId: String) -> Binding<Bool> {
    return Binding(
      get: {
        likeStorage.likedIds.contains(catId)
      },
      set: { newValue in
        likeStorage.setLike(id: catId, isLiked: newValue)
      }
    )
  }
}

#Preview {
  CatsView()
}
