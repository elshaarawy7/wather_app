import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wather_app2/model/Wather_modal.dart';
import 'package:wather_app2/pages/wather_ui_page.dart';
import 'package:wather_app2/services/wather_services.dart';

class SearchCity extends StatefulWidget {
  const SearchCity({super.key});

  @override
  State<SearchCity> createState() => _SearchCityState();
}

class _SearchCityState extends State<SearchCity> {
  String cityName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Search for your city",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    cityName = value;
                  });
                },
                decoration: const InputDecoration(
                  hintText: " search for your city ",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ElevatedButton(
  onPressed: () async {
    if (cityName.isNotEmpty) {
      WeatherModel weatherModel = await WatherServcies(Dio())
          .getCurrntWather(cityName: cityName);
      log(weatherModel.cityName);

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const WeatherAppUI();
      }));
    }
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, // لون الزر
    foregroundColor: Colors.white, // لون النص
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // المسافات الداخلية
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), // تدوير الحواف
    ),
    elevation: 5, // تأثير الظل
    shadowColor: Colors.grey, // لون الظل
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  child: const Text("Get Weather"),
),
          ]
        ),
      ),
    );
  }
}
