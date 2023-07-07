import 'package:basicapp/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/data.dart';

class PrimaryChat extends StatefulWidget {
  const PrimaryChat({
    super.key,
  });
  @override
  State<PrimaryChat> createState() => PrimaryChatState();
}

class PrimaryChatState extends State<PrimaryChat> {
  Controller controller = Get.put(Controller());
  void filterContact(String value) {
    if (value.isEmpty) {
      controller.foundContacts.value = [];
    } else {
      controller.foundContacts.value = contacts
          .where(
              (contact) => contact.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 18),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Messages',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: height(size, 18),
            ),
            Container(
              height: height(size, 63),
              padding: EdgeInsets.symmetric(horizontal: width(size, 10)),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                onChanged: (value) => filterContact(value),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: width(size, 10),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 24,
                    ),
                    prefixIconColor: Color(0xFFB2B2B2),
                    border: InputBorder.none,
                    hintText: 'Search'),
              ),
            ),
            SizedBox(
              height: height(size, 18),
            ),
            SizedBox(
              width: double.infinity,
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.foundContacts.length,
                  itemBuilder: (context, index) =>
                      Text(controller.foundContacts[index]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
