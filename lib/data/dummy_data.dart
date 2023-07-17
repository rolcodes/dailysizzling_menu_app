import 'package:flutter/material.dart';

import 'package:dailysizzling_meals/models/category.dart';
import 'package:dailysizzling_meals/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Sizzling',
    color: Colors.purple,
    imageUrl:
        'https://scontent.fcrk1-3.fna.fbcdn.net/v/t39.30808-6/358685413_7027524403943923_6259021508011067252_n.jpg?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeGOTyBjUvsrrPZFFcWQ3XJ2lmAEwR4NZqSWYATBHg1mpGUu3i7WRCmO1V7OdEMy48uGE0cH1nVvEkW_nGdzIJJs&_nc_ohc=h8WpSzfIULMAX957q8q&_nc_ht=scontent.fcrk1-3.fna&oh=00_AfCJudEwmS2ed5fjK2K0ZlsvVD8Nsq3UCVGYnoXyc6PJrg&oe=64B9611B',
  ),
  Category(
    id: 'c2',
    title: 'Silog',
    color: Colors.red,
    imageUrl:
        'https://scontent.fcrk1-4.fna.fbcdn.net/v/t39.30808-6/358677742_7027524507277246_7579104502726047493_n.jpg?_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFry_oYwWJQlxG-vIjUZRI5WJB63BQzKDNYkHrcFDMoMzibGoFnXO85WJto3CaizoIk0Z0aKI84MkNKIGUPDd8D&_nc_ohc=jWouJIu434kAX_13Ggv&_nc_ht=scontent.fcrk1-4.fna&oh=00_AfCxRq3lSYg1RbM5b0Lc6VgYIm4P29yUt6MmSs8fmjag6A&oe=64BA0749',
  ),
  Category(
    id: 'c3',
    title: 'Siomai',
    color: Colors.orange,
    imageUrl:
        'https://scontent.fcrk1-4.fna.fbcdn.net/v/t39.30808-6/357543091_248959991213751_515899148376389621_n.jpg?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHPLRNih6wDxFv6z1Mj8qAR-__4tutGNGr7__i260Y0akzbKKEyAUJP7VO_O7sxMfPcaqoEYPQ1DqaxYO4Ma9YZ&_nc_ohc=nUwpM-FW7PoAX_ThWJT&_nc_ht=scontent.fcrk1-4.fna&oh=00_AfDIkhLXHqnfFDq7xjfecw1wuAriFcLB9Aj_eb0j1Vhehg&oe=64BA5C8A',
  ),
  Category(
    id: 'c4',
    title: 'Snacks',
    color: Colors.amber,
    imageUrl:
        'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/329957999_5408938309206480_1614611118642935354_n.jpg?_nc_cat=104&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFr0r3TpcI_Bb8VntTGU0ZwIedd1LBUlzYh513UsFSXNrbR9HqgoOhAv-ybZ8O5d9pIQoxQZzkSkCtHMkOz_BR0&_nc_ohc=Hz4Zdb3S0wAAX-WpSLz&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfDTzgXEDXKqueqsxq5SIZPAc4fk2hcK_4LVj0XijYiH0w&oe=64B9DE52',
  ),
  Category(
    id: 'c5',
    title: 'Drinks',
    color: Colors.blue,
    imageUrl:
        'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/360161248_7041481009214929_595748338610561046_n.jpg?_nc_cat=105&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeHAyZZ0YYcg8eyMiO3bkcfErlZGpuoTHIyuVkam6hMcjImePMj4v3Y-qi5oBrQJIhfUXs9D9_TWAKBF-cg9lOOX&_nc_ohc=D9XKwvj7_bEAX8GbAh_&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfCCgUTQ2jISam7jwJAOIUhp66HZSWlj-fPcC2qd-tVmwA&oe=64B95C1E',
  ),
  Category(
    id: 'c6',
    title: 'Coffee',
    color: Colors.green,
    imageUrl:
        'https://scontent.fcrk1-1.fna.fbcdn.net/v/t39.30808-6/361623613_7041472715882425_3148063919497897899_n.jpg?_nc_cat=108&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeH20P8ZaPxky4QiV4_0-ZuUA22d3YxZsIoDbZ3djFmwilmXONs47ZWQ_VN6h1eqDWREClXceZFOq6x95g5gzFBC&_nc_ohc=JOs5KKJPJq8AX-UTzLf&_nc_ht=scontent.fcrk1-1.fna&oh=00_AfCo16TuPAJGwtODGaoe9rW0nk-5Zw89sECzsjOo_UfBWw&oe=64BA6EB2',
  ),
  Category(
    id: 'c7',
    title: 'Tea',
    color: Colors.lightBlue,
    imageUrl:
        'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/361592874_7041472755882421_3926216502139039361_n.jpg?_nc_cat=103&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFvJEyjGxeQI2Xw33u_InF7QEoDffpt_TNASgN9-m39M0fsm9XNfpquQszuzhy-xTw5Zh393wkJvdpVja2c0Rmg&_nc_ohc=UYF9JZjwqSIAX8fRdCs&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfBvHv0KRyOwszN4vweomUddl-ZX-MSZ_6CLKsKMMuW3dA&oe=64BA0B97',
  ),
  Category(
    id: 'c8',
    title: 'Soup',
    color: Colors.lightGreen,
    imageUrl:
        'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/361617313_7041472832549080_4947524778356612681_n.jpg?_nc_cat=103&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeE-Ov56n94A48B_8Wck8VZ3ZgdZI712odBmB1kjvXah0JNp0wNg26KVLRAlpA_nNj-GMRWzvWi5I97n6ggz0xCw&_nc_ohc=f4ZHOasiKCsAX_aj_6T&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfClYHy6hk5ejTNIYDGlsvPxJxsfZheQrQihhRn7uZ0sZQ&oe=64B951E5',
  ),
  Category(
    id: 'c9',
    title: 'Desserts',
    color: Colors.pink,
    imageUrl:
        'https://scontent.fcrk1-3.fna.fbcdn.net/v/t39.30808-6/361604609_7041472872549076_7280894296141031115_n.jpg?_nc_cat=101&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFdVquPaP_YBnCIr7jvyvPj_YnutvHry_r9ie628evL-qSU_vPCnRF46PD0WH33YTCVFZqgmDc8rAm82GArqXNH&_nc_ohc=vbRyV9cwwRAAX9WE07P&_nc_ht=scontent.fcrk1-3.fna&oh=00_AfA2HawE00UGmaXbg0ka10S4upE2WmySgXstkUvQ4nWAfg&oe=64B9D85A',
  ),
  Category(
    id: 'c10',
    title: 'Sides',
    color: Colors.teal,
    imageUrl:
        'https://scontent.fcrk1-4.fna.fbcdn.net/v/t39.30808-6/361607442_7041472742549089_4426400083943124569_n.jpg?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEjzVtha_WCrmLgx_eAX7-1kcqVpmddIsCRypWmZ10iwKCuIjEEy_u542Wo_j1PYEaHVagxwIp1u6GoOTb7ceL3&_nc_ohc=mdIwmqubipYAX_kFdKN&_nc_ht=scontent.fcrk1-4.fna&oh=00_AfBY50yd_gFm7Ge0YitkAmKGo3FQy6jzyPT-B5E4G4SidQ&oe=64BAB881',
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c2',
    ],
    title: 'Beef Tapa',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/358679080_7027524450610585_6212530806191360432_n.jpg?_nc_cat=105&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeG0V-mP3V918PaIkaeax-G-A5NSHbb77QcDk1IdtvvtB3y1D3r6n8NwpATk6hjkrmP1serY2aEQhc6UmW3vB6Ys&_nc_ohc=ZN4sY50VgK8AX_Mcs5m&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfAJemVxvS_BIqvJb4cdk0BeBgKZ_1JD7vsjOppFO7W_Vw&oe=64B933F4',
    duration: 12,
    price: 99,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Tocino',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://scontent.fcrk1-4.fna.fbcdn.net/v/t39.30808-6/358677742_7027524507277246_7579104502726047493_n.jpg?_nc_cat=102&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFry_oYwWJQlxG-vIjUZRI5WJB63BQzKDNYkHrcFDMoMzibGoFnXO85WJto3CaizoIk0Z0aKI84MkNKIGUPDd8D&_nc_ohc=jWouJIu434kAX_13Ggv&_nc_ht=scontent.fcrk1-4.fna&oh=00_AfCxRq3lSYg1RbM5b0Lc6VgYIm4P29yUt6MmSs8fmjag6A&oe=64BA0749',
    duration: 10,
    price: 99,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
    ],
    title: 'Pork Chop',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://scontent.fcrk1-4.fna.fbcdn.net/v/t39.30808-6/358668419_7027526453943718_5656309565413302864_n.jpg?_nc_cat=111&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEBCPYhg8mS9RdtGHB6VPfUOqLg9IyLIzk6ouD0jIsjOdjJtYhvNkQI0L-zaB9fcQMBJ7yrWG498a1REVym59Vt&_nc_ohc=Y8NRF0bTc74AX9mStEE&_nc_ht=scontent.fcrk1-4.fna&oh=00_AfAARMUjGsXlwcuhJUuvCW2BsAKAxKiLTztG-aKzPNOYuw&oe=64B967C4',
    duration: 45,
    price: 99,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'Pork Sisig',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://scontent.fcrk1-3.fna.fbcdn.net/v/t39.30808-6/358685413_7027524403943923_6259021508011067252_n.jpg?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeGOTyBjUvsrrPZFFcWQ3XJ2lmAEwR4NZqSWYATBHg1mpGUu3i7WRCmO1V7OdEMy48uGE0cH1nVvEkW_nGdzIJJs&_nc_ohc=h8WpSzfIULMAX957q8q&_nc_ht=scontent.fcrk1-3.fna&oh=00_AfCJudEwmS2ed5fjK2K0ZlsvVD8Nsq3UCVGYnoXyc6PJrg&oe=64B9611B',
    duration: 60,
    price: 99,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c1',
    ],
    title: 'Pork Steak',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://scontent.fcrk1-2.fna.fbcdn.net/v/t39.30808-6/358673403_7027524577277239_8893172909489008188_n.jpg?_nc_cat=110&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeG4T-QjLNkUdytDvB9TQcmbgVYz34i6jZSBVjPfiLqNlGQ08ryw3bWxPtjsSuEALR2c6CtRNcvTlln8J8aOhwLs&_nc_ohc=Adfb8PDACS0AX-7gkFK&_nc_ht=scontent.fcrk1-2.fna&oh=00_AfA4ILmM9NQSM296AIIVcwKZVSibAlJdjZ4UghBn8JaN6w&oe=64B9D166',
    duration: 15,
    price: 99,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c1',
    ],
    title: 'Burger Steak',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://scontent.fcrk1-3.fna.fbcdn.net/v/t39.30808-6/358673081_7027525917277105_9140998591760710486_n.jpg?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEJWELdnzE06emqh0-bqsfWlB11zoyf_7OUHXXOjJ__s3zs_4A6vUGZeaBR37xcKpxSy017zi67cgsmH08v_FHN&_nc_ohc=3LOaOcnjEHAAX9uoXQU&_nc_ht=scontent.fcrk1-3.fna&oh=00_AfBpEfsqBvv-2cGGqFEzZQGnAgHpWm91beZG1xP26_L1Ow&oe=64B95CBB',
    duration: 240,
    price: 99,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'Siomai Rice',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://scontent.fcrk1-4.fna.fbcdn.net/v/t39.30808-6/357543091_248959991213751_515899148376389621_n.jpg?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHPLRNih6wDxFv6z1Mj8qAR-__4tutGNGr7__i260Y0akzbKKEyAUJP7VO_O7sxMfPcaqoEYPQ1DqaxYO4Ma9YZ&_nc_ohc=nUwpM-FW7PoAX_ThWJT&_nc_ht=scontent.fcrk1-4.fna&oh=00_AfDIkhLXHqnfFDq7xjfecw1wuAriFcLB9Aj_eb0j1Vhehg&oe=64BA5C8A',
    duration: 5,
    price: 99,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    price: 99,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    price: 99,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    price: 99,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
