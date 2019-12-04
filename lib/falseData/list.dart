class Post {
  const Post({
    this.title,
    this.subTitle,
    this.imageUrl
  });

  final String title;
  final String subTitle;
  final String imageUrl;

}
// https://www.itying.com/images/flutter/6.png
List<Post> testData = [
  Post(
    title: '送孟浩然之广陵',
    subTitle: '李白',
    imageUrl: 'https://www.itying.com/images/flutter/5.png'
  ),
  Post(
    title: '望庐山瀑布',
    subTitle: '李白',
    imageUrl: 'https://www.itying.com/images/flutter/4.png'
  ),
  Post(
    title: '静夜思',
    subTitle: '李白',
    imageUrl: 'https://www.itying.com/images/flutter/3.png'
  ),
  Post(
    title: '将进酒',
    subTitle: '李白',
    imageUrl: 'https://www.itying.com/images/flutter/6.png'
  ),
  Post(
    title: '赠汪伦',
    subTitle: '李白',
    imageUrl: 'https://www.itying.com/images/flutter/2.png'
  ),
  Post(
    title: '蜀道难',
    subTitle: '李白',
    imageUrl: 'https://www.itying.com/images/flutter/1.png'
  ),
];
