import 'package:basicapp/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      extendBody: true,
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
            // SizedBox(
            //   width: double.infinity,
            //   child: Obx(
            //     () => ListView.builder(
            //       shrinkWrap: true,
            //       itemCount: controller.foundContacts.length,
            //       itemBuilder: (context, index) =>
            //           Text(controller.foundContacts[index]),
            //     ),
            //   ),
            // ),
            SizedBox(
              width: double.infinity,
              height: height(size, 542),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: users.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () => Get.toNamed('/primarychatWindow'),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    trailing:
                        Text(userData[users[index]]["recent-msg"]["date"]),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 11.0),
                      child: Text(
                        users[index],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                    subtitle: Text(
                      userData[users[index]]["recent-msg"]["msg"],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    leading: SizedBox(
                      width: size.width * 0.12,
                      height: size.height * 0.06,
                      child: SvgPicture.asset(
                        userData[users[index]]["profile"],
                        fit: BoxFit.fill,
                      ),
                    ),
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
