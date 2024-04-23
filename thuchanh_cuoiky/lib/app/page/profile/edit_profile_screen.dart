// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import 'package:thuchanh_cuoiky/app/page/profile/edit_item_profile_wiget.dart';

// class EditProfileScreen extends StatefulWidget {
//   const EditProfileScreen({super.key});

//   @override
//   State<EditProfileScreen> createState() => _EditProfileScreenState();
// }

// class _EditProfileScreenState extends State<EditProfileScreen> {
//   var gender = "Male";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(LineAwesomeIcons.angle_left),
//         ),
//         leadingWidth: 100,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 10),
//             child: IconButton(
//               onPressed: () {},
//               style: IconButton.styleFrom(
//                 backgroundColor: Colors.lightBlueAccent,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 fixedSize: const Size(60, 50),
//                 elevation: 3,
//               ),
//               icon: const Icon(
//                 Ionicons.checkmark,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(30),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 "Account",
//                 style: TextStyle(
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 40),
//               EditItemProfile(
//                 title: "Photo",
//                 widget: Column(
//                   children: [
//                     SizedBox(
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(100),
//                         child: const Image(
//                           image: NetworkImage(
//                               'https://scontent.fsgn8-4.fna.fbcdn.net/v/t39.30808-6/432788417_1536047803640685_8267216718282393433_n.jpg?stp=cp6_dst-jpg&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHZOGLe7DfM11bxKYOHHi2XzCcRWQf5BV7MJxFZB_kFXhtCIDHgAQiQRU9FiijfV8b_-K3J2-7hwbnKsHvBZ9h5&_nc_ohc=6ah_IWWAv8gAb5AmhzS&_nc_ht=scontent.fsgn8-4.fna&oh=00_AfDwaUDUqaWlG3gQAtqc_rIRxikqdZqNkL31zuy4DVE96w&oe=661EE80C'),
//                           height: 100,
//                           width: 100,
//                         ),
//                       ),
//                     ),
//                     TextButton(
//                       onPressed: () {},
//                       style: TextButton.styleFrom(
//                           foregroundColor: Colors.lightBlueAccent),
//                       child: const Text('Upload image'),
//                     ),
//                   ],
//                 ),
//               ),
//               const EditItemProfile(
//                 title: "Name",
//                 widget: TextField(),
//               ),
//               const SizedBox(height: 40),
//               EditItemProfile(
//                 title: "Gender",
//                 widget: Row(
//                   children: [
//                     IconButton(
//                       onPressed: () {
//                         setState(() {
//                           gender = "Male";
//                         });
//                       },
//                       style: IconButton.styleFrom(
//                         backgroundColor: gender == "Male"
//                             ? Colors.blue
//                             : Colors.grey.shade200,
//                         fixedSize: const Size(50, 50),
//                       ),
//                       icon: Icon(
//                         Ionicons.male,
//                         color: gender == "Male" ? Colors.white : Colors.black,
//                         size: 18,
//                       ),
//                     ),
//                     const SizedBox(width: 40),
//                     IconButton(
//                       onPressed: () {
//                         setState(() {
//                           gender = "Female";
//                         });
//                       },
//                       style: IconButton.styleFrom(
//                         backgroundColor: gender == "Female"
//                             ? Colors.pink
//                             : Colors.grey.shade200,
//                         fixedSize: const Size(50, 50),
//                       ),
//                       icon: Icon(
//                         Ionicons.female,
//                         color: gender == "Female" ? Colors.white : Colors.black,
//                         size: 18,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 40),
//               const EditItemProfile(
//                 widget: TextField(),
//                 title: "Age",
//               ),
//               const SizedBox(height: 40),
//               const EditItemProfile(
//                 widget: TextField(),
//                 title: "School",
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:thuchanh_cuoiky/app/config/const.dart';
import 'package:thuchanh_cuoiky/app/model/user.dart';
import 'package:thuchanh_cuoiky/app/page/profile/appbar.dart';
import 'package:thuchanh_cuoiky/app/page/profile/circular_image.dart';
import 'package:thuchanh_cuoiky/app/page/profile/edit_profile_menu.dart';
import 'package:thuchanh_cuoiky/app/page/profile/section_heading.dart';

import 'sizes.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
    return Scaffold(
      //appBar: const TAppBar(showBackArrow: true, title: Text('Edit Profile')),
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(image: avt, width: 100, height: 100),
                    TextButton(onPressed: () {}, child: const Text('Sửa')),
                  ],
                ),
              ),

              //Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              //Heading profile info
              const SectionHeading(
                  title: 'Thông tin cá nhân', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              EditProfileMenu(
                title: 'Full Name',
                value: "${user.fullName}",
              ),
              EditProfileMenu(
                title: 'Phone Number',
                value: "${user.phoneNumber}",
              ),
              EditProfileMenu(
                title: 'Gender',
                value: "${user.gender}",
              ),
              EditProfileMenu(
                title: 'BirthDay',
                value: "${user.birthDay}",
              ),
              EditProfileMenu(
                title: 'Number ID',
                value: "${user.idNumber}",
                icon: Iconsax.copy,
              ),
              EditProfileMenu(
                title: 'SchoolYear',
                value: "${user.schoolYear}",
              ),
              EditProfileMenu(
                title: 'SchoolKey',
                value: "${user.schoolKey}",
              ),
              const SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Đóng tài khoản',
                    style: TextStyle(color: Colors.red),
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
