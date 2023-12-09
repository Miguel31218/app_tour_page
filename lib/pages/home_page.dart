import 'package:tour_app/widgets/country_widget.dart';
import 'package:tour_app/widgets/popular_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          children: [
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.rocket,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Discount Tour",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Country",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 8,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryWidget(),
                  CountryWidget(),
                  CountryWidget(),
                  CountryWidget(),
                  CountryWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Popular Tours",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PopularTours(),
                    PopularTours(),
                    PopularTours(),
                    PopularTours(),
                    PopularTours(),
                    PopularTours(),
                    PopularTours(),
                    PopularTours(),
                    PopularTours(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
