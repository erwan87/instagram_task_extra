import 'model.dart';

List<Account> accounts = [
  Account(
    username: 'test',
    bio: 'test',
    followersCount: 51,
    followingCount: 15,
    postCount: 5,
  ),

  Account(
    username: 'test2',
    bio: 'ok',
    followersCount: 20,
    followingCount: 25,
    postCount: 5,
  ),
];

List<Post> posts = [
  Post(
    username: 'test',
    imageUrl: 'test',
    caption: 'test',
    location: 'test',
    createdAt: DateTime.parse("1969-07-20 20:18:04Z"),
    likes: [
      Like(
        username: 'test',
        profilePicUrl: 'test',
      ),
    ],
    comments: [
      Comment(
        username: 'test',
        profilePicUrl: 'test',
        comments: 'test',
        likes: [
              Like(
                username: 'test',
                profilePicUrl: 'test',
              ),
            ],
      ),
      Comment(
        username: 'test2',
        profilePicUrl: 'test',
        comments: 'a',
        likes:[
            Like(
              username: 'test',
              profilePicUrl: 'test',
            ),
          ],
      ),
    ],
  ),
];
