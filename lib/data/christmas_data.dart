import 'package:meta/meta.dart';

enum ChristmasDataType {
  wish,
  poem,
  story,
}

class ChristmasData {
  static const wishesList = <String>[
    'Wishing you and your family a wonderful Holiday Season. With lots '
        'of love from the WTM Switzerland’s.',
    'Wishing you a fun-filled Holiday season and best wishes for a Happy New Year!',
    'To a healthy, happy, and peaceful New Year. Love from the WTM Switzerland.',
    'May the lights of Christmas be your guide and the Christmas carols fill you with cheer.',
    'One of the nice things about Christmas is that you can make people forget the past with a present.',
    'Christmas is a necessity. There has to be at least one day of the year to remind us that we\'re here for something else besides ourselves.',
    'Wishing you Holidays filled with fun and laughter, and very best wishes for a fabulous New Year! ',
    'Wishing you a wonderful Christmas Season creating special memories with your beautiful family.',
    'Merry Christmas! And best wishes for a healthy, happy, and peaceful New Year.',
    'Wishing you a joyous Christmas and a prosperous New Year.',
    'Best wishes for the Holidays, and for health and happiness throughout the coming year.',
    'Warmest wishes for a happy Christmas and a wonderful New Year.',
    'Merry Christmas from all of us at WTM Switzerland. We hope you have a very happy Holidays and we wish you all the best for the New Year.',
    'May this Christmas end the present year on a cheerful note and make way for a fresh and bright New Year. Here’s wishing you a Merry Christmas and a Happy New Year!',
    'May the good times and treasures of the present become the golden memories of tomorrow. Wishing you lots of love, joy and happiness. Merry Christmas!',
    'May your Christmas sparkle with moments of love, laughter and goodwill, And may the year ahead be full of contentment and joy. Have a Merry Christmas.',
    'May the Christmas season fill your home with joy, your heart with love, and your life with laughter.',
    'We should try to hold on to the Christmas spirit, not just one day a year, but all 365.',
    '\“Christmas is most truly Christmas when we celebrate it by giving the light of love to those who need it most.\”—Ruth Carter Stapleton',
    'May the peace and blessings of Christmas be yours; And may the coming year be filled with happiness.',
    'May all the sweet magic of Christmas conspire to gladden your heart and fill every desire.',
    'May the peace and joy of Christmas live in your heart all year long.',
    'May the blessings of peace, good will, and happiness be with you at Christmas and always.',
    'Me: \“I want a magical Unicorn for Christmas\”\nSanta: \“Be realistic\”\nMe: \“Okay. I want 5 minutes to myself each day to drink my coffee hot and pee in peace.\”\nSanta: “What color Unicorn would you like?\”'
  ];

  static var poems = {
    4: Poem(
        title: 'Let Every Day Be Christmas',
        content: 'Christmas is forever, not for just one day,\n'
            'for loving, sharing, giving, are not to put away\n'
            'like bells and lights and tinsel, in some box upon a shelf.\n'
            'The good you do for others is good you do yourself.',
        author: 'Norman W. Brooks'),
    7: Poem(
        title: 'Christmas',
        content: 'Christmas is more than a day in December\n'
            'It\’s all of those things that we love to remember\n'
            'Its carolers singing familiar refrains\n'
            'Bright colored stockings and shiny toy trains\n'
            'Streamers of tinsel and glass satin balls\n'
            'Laughter that rings through the house and its halls\n'
            'Christmas is more than a day in December\n'
            'Its the magic and the love\n'
            'That we\’ll always remember',
        author: 'M.E. Miro'),
    13: Poem(
      title: 'Falling Snow\n',
      content: 'See the pretty snowflakes\n'
          'Falling from the sky;\n'
          'On the walk and housetops\n'
          'Soft and thick they lie.\n'
          'On the window-ledges\n'
          'On the branches bare;\n'
          'Now how fast they gather,\n'
          'Filling all the air.\n'
          'Look into the garden,\n'
          'Where the grass was green;\n'
          'Covered by the snowflakes,\n'
          'Not a blade is seen.\n'
          'Now the bare black bushes\n'
          'All look soft and white.\n'
          'Every twig is laden-\n'
          'What a pretty sight!',
      author: '',
    ),
  };

  static var stories = {
    19: Story(
        title: 'The Fir Tree',
        content: 'There was a young tree in a very enchanted forest. '
            'The tree was very tiny and had not grown much and it was '
            'flourishing and blooming. However, the tree was quite unhappy. '
            'The reason which made the tree unhappy was that all the companions '
            'of the tree were tall and all grown up. The tree wanted to be tall '
            'and grown like his other companions and did not want to stay in the '
            'stage he was now. The birds, the hare, the sun beam, the flowers and '
            'the fruits, all of them as ked the tree to be happy in the '
            'situation he was, for he had a long way to getting old. They asked '
            'him to enjoy the age and moment he is in, for these moments were '
            'not going to return. But the tree was persistent on growing fast '
            'and not being in the same situation he is. One day he saw the '
            'taller trees being cut down and taken somewhere by the woodcutters. '
            'The fir tree asked the passing sparrows where the trees being '
            'taken. The sparrows replied that the taller trees were being '
            'taken to the sea. The fir tree asked the sparrows how the sea '
            'looked and what it was. The sparrows could not answer that. This '
            'created more curiosity in the fir tree to grow tall so that he '
            'could also be taken in the sea in a ship. A few days later, '
            'when the tree had grown a little taller, the woodcutters came and cut '
            'very young trees of the forest. The fir tree again was disappointed as now '
            'he could not be taken by the woodcutters because he had grown tall. '
            'He was still not satisfied with his present status. He asked '
            'the rain pouring by as to where the trees were being taken by the woodcutters. '
            'The rain told the fir tree that when they were pouring in the city, '
            'they had seen that these trees were being put up in a warm room and set up '
            'with the prettiest decorations. Everyone who saw them, appreciated them.'
            ' The fir tree also wanted to be one the trees that was decorated with all '
            'sorts of pretty items and place in a warm place and receive all the compliments.\n\n'
            'A few days later, the fate of the tree had come. The tree who had not '
            'enjoyed a single moment in his present feared the future instead of waiting '
            'for it. The woodcutters had come to cut the tall trees for '
            'Christmas decoration. The trees had to be cut down from the roots and '
            'taken through the sea to the warm houses, which the fir tree had been '
            'waiting for. The fir tree was scared about how he will be cut now as now '
            'he had grown up to be a tall tree that he always wanted. The fir tree no '
            'more wanted to go to the seas and be a part of the warm houses.\n\n'
            'Only if he had enjoyed the moments of his youth in the forest with his '
            'fellow companions, the nesting birds, surrounding flowers, fruits '
            'and tiny animals, he would have not regretted how he felt now.'),
    22: Story(
        title: 'History of the first Christmas Cards',
        content: 'Christmas is not just about sending special Christmas gifts, '
            'shopping corporate Christmas baskets and hampers and decorating '
            'your house with different Christmas ornaments and decorations. '
            'It\’s also about thinking about the real essence of the Christmas '
            'celebration. There are also different feature of Christmas you '
            'should consider – like Christmas cards. Know the history of '
            'Christmas with the following facts and Christmas trivia.\n\n'
            'The first Christmas card was printed in 1843 in '
            'England. The card was printed on stiff cardboard '
            'measuring 3 ¼ x 5 1⁄8 inches. The card depicted a family '
            'having a party with the greeting \“Merry Christmas and '
            'A Happy New Year to You\” written below using sepia. '
            'Sepia was a dark brown ink made from the excretions of '
            'cuttlefish. The cards cost 1 shilling each. The first mass '
            'production of cards was recorded in 1860 by the company of '
            'Charles Goodall & Sons. They printed the message of the '
            'season on 3 x 2 inch cards which were referred to as '
            'visiting cards. The cards were similar to the current '
            'business cards with a similar purpose.')
  };

  static const musicUrlList = <String>[
    'https://www.youtube.com/watch?v=lylWDAo9hFw',
    'https://www.youtube.com/watch?v=aSynDh_K0EE',
    'https://www.youtube.com/watch?v=tReKR_ar5Ls',
    'https://www.youtube.com/watch?v=UV8x7H3DD8Y',
    'https://www.youtube.com/watch?v=_6xNuUEnh2g',
    'https://www.youtube.com/watch?v=crFQpOCDfEc', //?
    'https://www.youtube.com/watch?v=3KK6sMo8NBY',
    'https://www.youtube.com/watch?v=IbRtGMm96F8',
    'https://www.youtube.com/watch?v=VFGfCn5rKIM',
    'https://www.youtube.com/watch?v=BtUK4AyHeTw',
    'https://www.youtube.com/watch?v=mN7LW0Y00kE',
    'https://www.youtube.com/watch?v=dxHL36aJvGU',
    'https://www.youtube.com/watch?v=EvDxSW8mzvU',
    'https://www.youtube.com/watch?v=apoFZv5J6xo',
    'https://www.youtube.com/watch?v=zifGp5KTBKg',
    'https://www.youtube.com/watch?v=KmddeUJJEuU',
    'https://www.youtube.com/watch?v=73UqDX_quk0',
    'https://www.youtube.com/watch?v=hwacxSnc4tI',
    'https://www.youtube.com/watch?v=w9QLn7gM-hY',
    'https://www.youtube.com/watch?v=5BRVkgaIcaE',
    'https://www.youtube.com/watch?v=V9BZDpni56Y',
    'https://www.youtube.com/watch?v=5vyMuxxLsD0',
    'https://www.youtube.com/watch?v=yXQViqx6GMY',
    'https://www.youtube.com/watch?v=E8gmARGvPlI',
  ];
}

class Poem {
  String title;
  String content;
  String author;

  Poem({@required this.content, @required this.title, this.author})
      : assert(content != null && content.isNotEmpty),
        assert(title != null && title.isNotEmpty);
}

class Story {
  String title;
  String content;

  Story({@required this.title, @required this.content})
      : assert(title != null && title.isNotEmpty),
        assert(content != null && content.isNotEmpty);
}
