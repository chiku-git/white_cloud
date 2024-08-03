from account.models import User
from favorite.models import FavoriteSummary
from post.models import Post


class PostResponse:
    def __init__(self, post: Post) -> None:
        self.id = post.id
        self.body = post.body
        self.user = post.user.get_public_properties()
        self.createdAt = post.created_at
        self.updatedAt = post.updated_at


class PostDigestResponse:
    def __init__(self, post: Post, me: User) -> None:
        favorite_query = post.favorites
        self.post = PostResponse(post=post)
        self.favorite = FavoriteSummary(
            count=favorite_query.count(),
            isMyFavorite=favorite_query.filter(user=me).exists(),
        )
        self.reply = {"count": 0}
