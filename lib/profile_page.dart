import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:rating_dialog/rating_dialog.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void showRating() {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return RatingDialog(
            title: const Text("rating"),
            onSubmitted: (rating) {
              print("rating submittted $rating");
            },
            submitButtonText: "submit",
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        actions: const [
          Text(
            "Edit",
            style: TextStyle(),
          ),
          SizedBox(
            width: 20,
          )
        ],
        title: const Text(
          "My Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 0,
            ),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                  "ios/images/D6241E51-2FB9-4ED1-8D5A-455CB32E4C50_1_105_c.jpeg"),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "Barsha Acharya",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white),
            ),
            const Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
                Text(
                  "Ghorahi Dang",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.white),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            /*RatingBar.builder(
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.orange,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
              itemCount: 5,
              initialRating: 4,
              minRating: 1,
            ),*/
            GestureDetector(
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange.withOpacity(0.4),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              onTap: showRating,
            ),
            const Text(
              "(2 available)",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
              child: const Column(
                children: [
                  Text(
                    "14 ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 60,
                      height: 0,
                    ),
                  ),
                  Text(
                    "POINTS",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 20,
                      height: 0.5,
                    ),
                  )
                ],
              ),
              color: Colors.cyan,
              padding: const EdgeInsets.all(20),
            ),
            const SizedBox(height: 45,),
            const Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "1",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 28),
                    ),
                    Text(
                      "Dart",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 28),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "2",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 28),
                    ),
                    Text(
                      "Flutter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 28),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "3",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 28),
                    ),
                    Text(
                      "Firebase",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 28
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
