double height(size, x) => (size.height * x) / 812.0;
double width(size, x) => (size.width * x) / 375.0;
List<String> contacts = [
  "vignesh",
  "ruchitha",
  "usha",
  "anil",
  "pratyaksh",
  "vamshi",
  "prasanna"
];
List<String> users = [
  "Andrew Parker",
  "Karen Castillo",
  "Maisy Humphrey",
  "Martha Craig",
  "Maximillian Jacobson",
  "Tabitha Potter",
  "Andrew Parker",
  "Karen Castillo",
  "Maisy Humphrey"
];
Map<String, dynamic> userData = {
  "vignesh": "rgukt",
  "Kieron Dotson": {
    "profile": "assets/images/avatar2.svg",
    "recent-msg": {
      "msg": "What kind of strategy is better?",
      "date": "11/16/19"
    },
    "msgs": {
      "Andrew Parker": [
        {
          "msg": "My Networklog on and password is that what you need",
          "date": 1,
        },
        {
          "msg":
              "Ok. This is very sensitive information. Are you sure it is safe",
          "date": 3,
        },
        {
          "msg":
              "they can withdraw the amount directly from my savings account",
          "date": 4,
        },
      ],
    }
  },
  "Andrew Parker": {
    "profile": "assets/images/avatar3.svg",
    "recent-msg": {
      "msg": "What kind of strategy is better?",
      "date": "11/16/19"
    },
    "msgs": {
      "Kieron Dotson": [
        {
          "msg": "yes",
          "date": 2,
        },
        {
          "msg": "But nobody can use it",
          "date": 5,
        },
        {
          "msg": "To your phone number",
          "date": 6,
        },
        {
          "msg": "nobody will have the details",
          "date": 7,
        },
      ]
    }
  },
  "Karen Castillo": {
    "profile": "assets/images/avatar7.svg",
    "recent-msg": {"msg": "Ok, have a good trip!", "date": "11/15/19"},
    "msgs": {}
  },
  "Maisy Humphrey": {
    "profile": "assets/images/avatar4.svg",
    "recent-msg": {
      "msg": "Welcome, to make design process",
      "date": "10/30/19"
    },
    "msgs": {}
  },
  "Martha Craig": {
    "profile": "assets/images/avatar.svg",
    "recent-msg": {
      "msg":
          "Actually I wanted to check with you about your online business plan on our…",
      "date": "10/28/19"
    },
    "msgs": {}
  },
  "Maximillian Jacobson": {
    "profile": "assets/images/avatar1.svg",
    "recent-msg": {"msg": "Bro, I have a good idea! ", "date": "8/25/19"},
    "msgs": {}
  },
  "Tabitha Potter": {
    "profile": "assets/images/avatar6.svg",
    "recent-msg": {
      "msg":
          "Actually I wanted to check with you about your online business plan on our…",
      "date": "7/29/19"
    },
    "msgs": {}
  },
};
