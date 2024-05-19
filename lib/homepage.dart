import 'dart:math';

import 'package:flutter/material.dart';


class RecipeHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbbccdd),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight+MediaQuery.of(context).padding.top/2),
        child: Padding(
          padding:  EdgeInsets.only(top:MediaQuery.of(context).padding.top*1.5, left: 10, right: 10),
          child: Container(
            height: kToolbarHeight,
            decoration: BoxDecoration(
              color: Color(0xff002244),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.restaurant_menu, size: 32, color:  Color(0xffffffff)),
                    const Text('Remy\'z cookbook', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22, color: Color(0xffffffff))),
                    Icon(Icons.restaurant_menu, size: 32, color:  Color(0xffffffff)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: RecipeSearch(),
    );
  }
}

class RecipeSearch extends StatefulWidget {
  @override
  _RecipeSearchState createState() => _RecipeSearchState();
}

class _RecipeSearchState extends State<RecipeSearch> {
  TextEditingController _searchController = TextEditingController();
  List recipes = [
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
    {
      "id": 640352,
      "title": "Cranberry Apple Crisp",
      "image": "https://img.spoonacular.com/recipes/640352-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 9078,
          "amount": 2.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "cranberries",
          "original": "2 cups fresh cranberries",
          "originalName": "fresh cranberries",
          "meta": [
            "fresh"
          ],
          "extendedName": "fresh cranberries",
          "image": "https://img.spoonacular.com/ingredients_100x100/cranberries.jpg"
        },
        {
          "id": 1145,
          "amount": 4.0,
          "unit": "Tbs",
          "unitLong": "Tbs",
          "unitShort": "Tbs",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "1/2 stick (4 Tbs) unsalted butter, cut into cubes",
          "originalName": "1/2 stick unsalted butter, cut into cubes",
          "meta": [
            "unsalted",
            "cut into cubes"
          ],
          "extendedName": "unsalted butter",
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 8120,
          "amount": 1.5,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Cereal",
          "name": "regular oats",
          "original": "1 1/2 cups regular oats (not quick-cooking)",
          "originalName": "regular oats (not quick-cooking)",
          "meta": [
            "(not quick-cooking)"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/rolled-oats.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 1089003,
          "amount": 4.0,
          "unit": "cups",
          "unitLong": "cups",
          "unitShort": "cup",
          "aisle": "Produce",
          "name": "granny smith apples",
          "original": "4 cups Granny Smith apples, chopped into ½ inch chunks",
          "originalName": "Granny Smith apples, chopped into ½ inch chunks",
          "meta": [
            "chopped"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/grannysmith-apple.png"
        }
      ],
      "unusedIngredients": [],
      "likes": 11
    },
    {
      "id": 641803,
      "title": "Easy & Delish! ~ Apple Crumble",
      "image": "https://img.spoonacular.com/recipes/641803-312x231.jpg",
      "imageType": "jpg",
      "usedIngredientCount": 1,
      "missedIngredientCount": 3,
      "missedIngredients": [
        {
          "id": 1001,
          "amount": 0.75,
          "unit": "stick",
          "unitLong": "sticks",
          "unitShort": "stick",
          "aisle": "Milk, Eggs, Other Dairy",
          "name": "butter",
          "original": "3/4 stick of butter",
          "originalName": "butter",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/butter-sliced.jpg"
        },
        {
          "id": 2011,
          "amount": 1.0,
          "unit": "Dash",
          "unitLong": "Dash",
          "unitShort": "Dash",
          "aisle": "Spices and Seasonings",
          "name": "ground cloves",
          "original": "Dash of ground cloves",
          "originalName": "ground cloves",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/cloves.jpg"
        },
        {
          "id": 9156,
          "amount": 1.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "lemon zest",
          "original": "1 Zest of lemon",
          "originalName": "Zest of lemon",
          "meta": [],
          "image": "https://img.spoonacular.com/ingredients_100x100/zest-lemon.jpg"
        }
      ],
      "usedIngredients": [
        {
          "id": 9003,
          "amount": 3.0,
          "unit": "",
          "unitLong": "",
          "unitShort": "",
          "aisle": "Produce",
          "name": "apples",
          "original": "3 apples – sliced",
          "originalName": "apples – sliced",
          "meta": [
            "sliced"
          ],
          "image": "https://img.spoonacular.com/ingredients_100x100/apple.jpg"
        }
      ],
      "unusedIngredients": [],
      "likes": 1
    },
  ];
  // List recipes = [];

  searchRecipes(value)async{

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search recipes by ingredients',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Color(0xff6688aa), style: BorderStyle.solid, width: 0.5, strokeAlign: 1)
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Color(0xff6688aa), style: BorderStyle.solid, width: 0.5, strokeAlign: 1)
              ),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Color(0xff6688aa), style: BorderStyle.solid, width: 0.5, strokeAlign: 1)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Color(0xff6688aa), style: BorderStyle.solid, width: 0.5, strokeAlign: 1)
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            onSubmitted: searchRecipes,
          ),
        ),
        Expanded(
          child: RecipeList(recipes: recipes), // Display area for recipe results
        ),
      ],
    );
  }
}

class RecipeList extends StatefulWidget {
  final List recipes;

  RecipeList({super.key, required this.recipes});

  @override
  _RecipeListState createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    setState(() {
      recipes = widget.recipes.sublist(0,min(10, widget.recipes.length));
    });
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent && recipes.length<widget.recipes.length) {
      _loadMore();
    }
  }

  void _loadMore() {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });

      // Simulate loading more recipes
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          recipes.addAll(widget.recipes.sublist(recipes.length,min(widget.recipes.length, recipes.length+10)));
          _isLoading = false;
        });
      });
    }
  }

  // Placeholder for your list of recipes
  List recipes = [];



  @override
  Widget build(BuildContext context) {
    print(recipes);
    return ListView.builder(
      controller: _scrollController,
      itemCount: recipes.length + (_isLoading ? 1 : 0),
      itemBuilder: (context, index) {
    if (index < recipes.length) {
      return InkWell(
        onTap: (){
          Navigator.of(context).push(
            PageRouteBuilder(pageBuilder: (context, a, b)=>DetailRecipe(recipedata: recipes[index]))
          );
        },
        child: Container(
          margin: EdgeInsets.only(
            right: 16,
            left: 16,
            top: 8,
            bottom: 12
          ),
          width: MediaQuery.of(context).size.width,
          height: 175,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(recipes[index]["image"]),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(

                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.45),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.45),
                  ],
                )
            ),
            child: Container(
              decoration: BoxDecoration(

                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.85),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.55),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 18.0, bottom: 12.0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(recipes[index]["title"], style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800
                    ),),
                    Spacer(),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite, color: Colors.red),
                            SizedBox(width: 5,),
                            Text(recipes[index]["likes"].toString(), style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
    else{
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
      },
    );
  }
}

class DetailRecipe extends StatefulWidget {
  final Map recipedata;
  const DetailRecipe({super.key, required this.recipedata});

  @override
  State<DetailRecipe> createState() => _DetailRecipeState();
}

class _DetailRecipeState extends State<DetailRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbbccdd),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight+MediaQuery.of(context).padding.top/2),
        child: Padding(
          padding:  EdgeInsets.only(top:MediaQuery.of(context).padding.top*1.5, left: 10, right: 10),
          child: Container(
            height: kToolbarHeight,
            decoration: BoxDecoration(
              color: Color(0xff002244),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Text(widget.recipedata["title"].toString(), style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20, color: Color(0xffffffff))),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(
                right: 16,
                left: 16,
                top: 8,
                bottom: 12
            ),
            width: MediaQuery.of(context).size.width,
            height: 200,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.recipedata["image"]),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow:[
                BoxShadow(
                  color: Colors.black.withOpacity(0.35),
                  offset: Offset(5,5),
                  blurRadius: 6,
                  spreadRadius: 0.1,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.35),
                  offset: Offset(-5,-5),
                  blurRadius: 6,
                  spreadRadius: 0.1,
                ),
              ]
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:EdgeInsets.only(
                right: 16,
                left: 16,
                top: 0,
                bottom: 12
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red),
                    SizedBox(width: 5,),
                    Text(widget.recipedata["likes"].toString(), style: TextStyle(
                        color: Color(0xff002244),
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:EdgeInsets.only(
                right: 16,
                left: 16,
                top: 0,
                bottom: 12
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Text("Recipe", style: TextStyle(
                        color: Color(0xff002244),
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                    ),)
                  ],
                ),
              ],
            ),
          ),
        ]+(widget.recipedata["usedIngredients"]+widget.recipedata["missedIngredients"]).map((e)=>Padding(
          padding: EdgeInsets.only(
              right: 16,
              left: 16,
              top: 0,
              bottom: 12
          ),
          child: ListTile(
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            leading: Icon(Icons.restaurant),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${e["original"]}"),
              ],
            ),
          ),
        )).toList().cast<Widget>(),
      ),
    );
  }
}

