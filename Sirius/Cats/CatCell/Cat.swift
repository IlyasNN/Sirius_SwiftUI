import Foundation

struct Cat: Identifiable, Hashable {
  let id = UUID().uuidString
  var name: String
  var imageName: String
  let description: String

  init(
    name: String,
    imageName: String,
    description: String
  ) {
    self.name = name
    self.imageName = imageName
    self.description = description
  }
}
