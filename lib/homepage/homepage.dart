import 'package:flutter/material.dart';

import '../constants.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> _pages = [
    MainHomePage(),
    MainHomePage(),
    MainHomePage(),
    MainHomePage(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: SizedBox(
          height: 54,
          // width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar(
                  icon: Icons.home,
                  text: "Home",
                  selected: _selectedIndex == 0,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
                IconBottomBar(
                  icon: Icons.restaurant,
                  text: "Restaurant",
                  selected: _selectedIndex == 1,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
                IconBottomBar(
                  icon: Icons.map,
                  text: "Map",
                  selected: _selectedIndex == 2,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
                IconBottomBar(
                  icon: Icons.person,
                  text: "Profile",
                  selected: _selectedIndex == 3,
                  onTap: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Text(
      //     "Current Tab Index: $_selectedIndex",
      //     style: const TextStyle(fontSize: 24),
      //   ),
      // ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const IconBottomBar({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: selected ? Colors.purple[700] : Colors.grey),
          Text(
            text,
            style: TextStyle(
              color: selected ? Colors.purple[700] : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 83, 69, 164),
            const Color.fromARGB(255, 66, 53, 165).withValues(alpha: 0.8),
            const Color.fromARGB(255, 75, 53, 165).withValues(alpha: 0.6),
            const Color.fromARGB(255, 121, 112, 159).withValues(alpha: 0.4),
            const Color.fromARGB(255, 70, 53, 165).withValues(alpha: 0.2),
            const Color(0xFF6F35A5).withValues(alpha: 0.1),
            const Color(0xFF6F35A5).withValues(alpha: (0.05)),
            const Color(0xFF6F35A5).withValues(alpha: (0.025)),
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            SearchInput(),
            PromoCard(),
            Headline(),
            SizedBox(height: Height.height * 0.01),
            CardListView(),
            SHeadline(),
            SizedBox(height: Height.height * 0.01),
            MenuListView(),
            Container(
              padding: EdgeInsets.only(top: 15, right: 25, bottom: 15),
              width: Height.width / 1.1,
              child: Text(
                "Eat what makes you happy",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              // padding: EdgeInsets.all(5.0),
              height: Height.height / 2,
              width: Height.width,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    foodItemList[index].name,
                    foodItemList[index].imageUrl,
                    "20 min away",
                  );
                },
                itemCount: foodItemList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Add this new widget, for example, in the same file or a separate one

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find Your\nFavourite Food",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(12, 26),
                      blurRadius: 50,
                      spreadRadius: 0,
                      color: Colors.grey.withValues(alpha: 0.25),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.food_bank,
                    size: 25,
                    color: Color(0xFF6F35A5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, top: 0, bottom: 0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(12, 26),
              blurRadius: 50,
              spreadRadius: 0,
              color: Colors.grey.withValues(alpha: 0.15),
            ),
          ],
        ),
        child: TextField(
          onChanged: (value) {},
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white,
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
          ),
        ),
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150, // Likely a typo — changed from 15 to 150
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 52, 120, 78), Color(0xFF6F35A5)],
          ),
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: .5,
              child: Image.asset(
                "assets/images/promoCard.png",
                fit: BoxFit.cover,
              ),
            ),
            Image.asset("assets/images/icecream.png"),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  "Want some\nicecream?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nearest Restaurants",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "The best food close to you",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "View All",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: Colors.purple[700],
            ),
          ),
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String subtitle;

  const RestaurantCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(subtitle, style: const TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            RestaurantCard(
              title: "Vegan",
              imageUrl: "assets/images/vegan.png",
              subtitle: "8 min away",
            ),
            RestaurantCard(
              title: "Italian",
              imageUrl: "assets/images/italian.jpeg",
              subtitle: "12 min away",
            ),
            RestaurantCard(
              title: "South Indian",
              imageUrl: "assets/images/southIndian.png",
              subtitle: "15 min away",
            ),
            RestaurantCard(
              title: "Punjabi",
              imageUrl: "assets/images/punjabi.jpeg",
              subtitle: "15 min away",
            ),
          ],
        ),
      ),
    );
  }
}

class SHeadline extends StatelessWidget {
  const SHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular Menu",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              Text(
                "The best food for you",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[800],
                ),
              ),
              Text(
                "View More",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.purple[700],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuListView extends StatelessWidget {
  const MenuListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 175,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Card("Biryani", "assets/images/biryani.jpeg", "15 min away"),
            Card("Pizza", "assets/images/pizza.jpeg", "12 min away"),
            Card(
              "South Indian",
              "assets/images/southIndian.png",
              "15 min away",
            ),
            Card("Punjabi", "assets/images/punjabi.jpeg", "15 min away"),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;

  Card(this.text, this.imageUrl, this.subtitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 15),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
              offset: const Offset(10, 20),
              blurRadius: 10,
              spreadRadius: 0,
              color: Colors.grey.withValues(alpha: 0.05),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              height: 80,
              fit: BoxFit.cover,
              frameBuilder:
                  (
                    BuildContext context,
                    Widget child,
                    int? frame,
                    bool? wasSynchronouslyLoaded,
                  ) {
                    if (wasSynchronouslyLoaded!) {
                      return child;
                    }
                    return AnimatedOpacity(
                      child: child,
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOut,
                    );
                  },
            ),
            // const Spacer(),
            // SizedBox(height: 10.0),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 10,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
