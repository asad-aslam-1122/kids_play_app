class Blog {
  String headline, title1, image1, image2, title2, description;
  int color1, color2;

  Blog(this.headline, this.title1, this.image1, this.image2, this.title2,
      this.description, this.color1, this.color2);

  static List<Blog> listOfBlog = [
    Blog('Recomended', 'Benifits of\nApple', 'Assets/Images/applev.png','Assets/Images/apple.jpg',
        '8 Impressive Health Benefits of Apples',
        'With over 7,000 different cultivars available worldwide, it’s no surprise that apples are the most widely consumed fruit globally'
  '\n\nFrom sweet red varieties, like Red Delicious, Fuji or Gala, to tangy green ones, like Granny Smith — my personal favorite that I enjoy with lime juice and a little salt when I want a savory snack — there sure is an apple for everyone.'
  '\n\nThey’re commonly used in recipes, like pies, cookies, muffins, jam, salads, oatmeal, or smoothies. They also make a great snack on their own or wedged and smeared with nut butter.'
        , 0xff77CCFF,0xff0044ff),
    Blog('Recomended', 'Benifits\nPear', 'Assets/Images/pearv.png','Assets/Images/pear.jpg',
        '3 Big (and Surprising) Health Benefits from Pears',
        'Heart disease is the number one cause of death in the US, but a healthy diet can go far in helping to combat it. That includes incorporating fiber-rich foods (like pears) into your daily food plan. Believed to play a role in decreasing blood pressure and cholesterol, a diet high in fiber decreases your risk of developing heart disease, making them great to snack on or add to salads.\n\n'
            'The vitamins in pears (particularly vitamin C, an antioxidant) help to fight off free radicals that put your cells under oxidative stress and lead to chronic disease. Foods that are high in antioxidants (like pears) help reduce your risk of developing cancer (which, after heart disease, is the number one cause of deaths in the US). And the antioxidants in pears don’t just stop there – they also help lower your risk of developing diabetes and Alzheimer’s Disease as well.\n\n'
            'Boasting 6 grams of fiber per serving (that’s more than you’ll find in a cup of kale), pears help you feel full and satisfied, which in turn helps you maintain a healthy weight. Maintaining a healthy weight helps reduce your risk of developing Type II Diabetes, which has grown more prevalent in western culture. Plus, the sweetness of pears helps cut your craving for processed sweets and treats. Also, a diet high in fiber is essential for healthy digestion, which in turn lowers your risk of developing colon cancer and other gastrointestinal disorders.'
        , 0xffFFAF42,0xffFF8303),
    Blog('Recomended', 'Benifits\nBanana', 'Assets/Images/Banana (2).png','Assets/Images/bananai.jpg',
        'Health Benefits of Bananas',
        '27g carbohydrates of which 14g is in the form of sugars (5.9 g glucose, 5.7 g fructose, and 2.8 g sucrose\n\n'
            'Dietary fiber of 3.1 g, of which 2.1g is soluble and 1g insoluble. Fibers are a form of insoluble starch composed of multiple sugars bonded by chemical linkages, which are resistant to chemical hydrolysis within the gut. Thus, they reach the colon intact and are subjected to microbial fermentation by gut bacteria. This not only produces better stool volume by binding water but results in the formation of some essential short-chain fatty acids (SCFAs) which are absorbed and used as energy sources. Fiber thus comprises not only dietary fiber which is mainly mechanical in effect but functional fiber which has a positive effect upon health. The sources of fiber which yield 5 g per serving are called excellent, and good if they give 2.5 g per serving. Under this classification, bananas are good sources of fiber.\n\n'
            'Resistant starch is slow to be digested by alpha-amylase and thus prevents a spike in the blood glucose.'
        , 0xffFF0000,0xff77CCFF),
    Blog('Recomended', 'Benifits of\nApple', 'Assets/Images/applev.png','Assets/Images/apple.jpg',
        '8 Impressive Health Benefits of Apples',
        'With over 7,000 different cultivars available worldwide, it’s no surprise that apples are the most widely consumed fruit globally'
            '\n\nFrom sweet red varieties, like Red Delicious, Fuji or Gala, to tangy green ones, like Granny Smith — my personal favorite that I enjoy with lime juice and a little salt when I want a savory snack — there sure is an apple for everyone.'
            '\n\nThey’re commonly used in recipes, like pies, cookies, muffins, jam, salads, oatmeal, or smoothies. They also make a great snack on their own or wedged and smeared with nut butter.'
        , 0xffd4ffb2,0xff45f248),
    Blog('Recomended', 'Benifits\nPear', 'Assets/Images/pearv.png','Assets/Images/pear.jpg',
        '3 Big (and Surprising) Health Benefits from Pears',
        'Heart disease is the number one cause of death in the US, but a healthy diet can go far in helping to combat it. That includes incorporating fiber-rich foods (like pears) into your daily food plan. Believed to play a role in decreasing blood pressure and cholesterol, a diet high in fiber decreases your risk of developing heart disease, making them great to snack on or add to salads.\n\n'
            'The vitamins in pears (particularly vitamin C, an antioxidant) help to fight off free radicals that put your cells under oxidative stress and lead to chronic disease. Foods that are high in antioxidants (like pears) help reduce your risk of developing cancer (which, after heart disease, is the number one cause of deaths in the US). And the antioxidants in pears don’t just stop there – they also help lower your risk of developing diabetes and Alzheimer’s Disease as well.\n\n'
            'Boasting 6 grams of fiber per serving (that’s more than you’ll find in a cup of kale), pears help you feel full and satisfied, which in turn helps you maintain a healthy weight. Maintaining a healthy weight helps reduce your risk of developing Type II Diabetes, which has grown more prevalent in western culture. Plus, the sweetness of pears helps cut your craving for processed sweets and treats. Also, a diet high in fiber is essential for healthy digestion, which in turn lowers your risk of developing colon cancer and other gastrointestinal disorders.'
        , 0xffFFAF42,0xffFF8303),
    Blog('Recomended', 'Benifits\nBanana', 'Assets/Images/Banana (2).png','Assets/Images/bananai.jpg',
        'Health Benefits of Bananas',
        '27g carbohydrates of which 14g is in the form of sugars (5.9 g glucose, 5.7 g fructose, and 2.8 g sucrose\n\n'
            'Dietary fiber of 3.1 g, of which 2.1g is soluble and 1g insoluble. Fibers are a form of insoluble starch composed of multiple sugars bonded by chemical linkages, which are resistant to chemical hydrolysis within the gut. Thus, they reach the colon intact and are subjected to microbial fermentation by gut bacteria. This not only produces better stool volume by binding water but results in the formation of some essential short-chain fatty acids (SCFAs) which are absorbed and used as energy sources. Fiber thus comprises not only dietary fiber which is mainly mechanical in effect but functional fiber which has a positive effect upon health. The sources of fiber which yield 5 g per serving are called excellent, and good if they give 2.5 g per serving. Under this classification, bananas are good sources of fiber.\n\n'
            'Resistant starch is slow to be digested by alpha-amylase and thus prevents a spike in the blood glucose.'
        , 0xffFF0000,0xff77CCFF),



  ];
}
