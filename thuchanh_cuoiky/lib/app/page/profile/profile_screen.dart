import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:thuchanh_cuoiky/app/page/auth/login.dart';
import 'package:thuchanh_cuoiky/app/page/profile/edit_profile_screen.dart';
import 'package:thuchanh_cuoiky/app/page/profile/forward_btn_widget.dart';
import 'package:thuchanh_cuoiky/app/page/profile/setting_items_widget.dart';
import '../../model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  // khi dùng tham số truyền vào phải khai báo biến trùng tên require
  User user = User.userEmpty();
  getDataUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String strUser = pref.getString('user')!;

    user = User.fromJson(jsonDecode(strUser));
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataUser();
  }

  @override
  Widget build(BuildContext context) {
    // create style
    TextStyle mystyle = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    // return Scaffold(
    //   body: SingleChildScrollView(
    //     child: Center(
    //       child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    //         Image(
    //           image: NetworkImage(user.imageURL!),
    //           height: 200,
    //           width: 200,
    //         ),
    //         Text("NumberID: ${user.idNumber}", style: mystyle),
    //         Text("Fullname: ${user.fullName}", style: mystyle),
    //         Text("Phone Number: ${user.phoneNumber}", style: mystyle),
    //         Text("Gender: ${user.gender}", style: mystyle),
    //         Text("birthDay: ${user.birthDay}", style: mystyle),
    //         Text("schoolYear: ${user.schoolYear}", style: mystyle),
    //         Text("schoolKey: ${user.schoolKey}", style: mystyle),
    //         Text("dateCreated: ${user.dateCreated}", style: mystyle),
    //       ]),
    //     ),
    //   ),
    // );

    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: const Icon(LineAwesomeIcons.angle_left),
      //   ),
      //   leadingWidth: 100,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Profile Account",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 30,
              ),
              const Text("Account",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                          image: NetworkImage(
                              'https://scontent.fsgn8-4.fna.fbcdn.net/v/t39.30808-6/432788417_1536047803640685_8267216718282393433_n.jpg?stp=cp6_dst-jpg&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=bfjUXgK21n8Ab5dUGZ3&_nc_ht=scontent.fsgn8-4.fna&oh=00_AfCW__hjOn2lnKf5RH9m3a-xsmZ_cH3_DynIvJlNrb8rug&oe=662DA0CC'),
                          height: 70,
                          width: 70,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${user.fullName}", style: mystyle),
                        const SizedBox(height: 10),
                        Text("${user.schoolKey}",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 65, 64, 64))),
                      ],
                    ),
                    const Spacer(),
                    ForwardButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditProfileScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text("Settings",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 20,
              ),
              SettingItem(
                title: "Language",
                icon: Iconsax.user,
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                value: "English",
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Notifications",
                icon: Iconsax.notification,
                bgColor: Colors.blue.shade100,
                iconColor: Colors.blue,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Bill Details",
                icon: Icons.checklist_outlined,
                bgColor: Colors.yellow.shade100,
                iconColor: Colors.orange,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Help",
                icon: Iconsax.message_question,
                bgColor: Colors.purple.shade100,
                iconColor: Colors.purple,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text('Đăng xuất'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
