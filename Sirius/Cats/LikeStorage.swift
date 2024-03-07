import Foundation
import Observation

@Observable
final class LikeStorage {

  var likedIds: Set<String> = []

  func setLike(id: String, isLiked: Bool) {
    if isLiked {
      likedIds.insert(id)
    } else {
      likedIds.remove(id)
    }
  }
}
