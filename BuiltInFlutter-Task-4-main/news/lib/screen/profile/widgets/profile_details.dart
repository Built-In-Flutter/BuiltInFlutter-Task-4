import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../config/var/var.dart';
import 'data.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          child: Text(
            "Edit Profile",
            style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
            ),
          ),
          alignment: Alignment.topLeft,
        ),
        const SizedBox(height: 10),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 3,
                blurRadius: 15,
                offset: Offset(0, 5),
              )
            ],
          ),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(profileImage),
            radius: 70,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        // UserName
        Data(label: "Username", text: "Shalimtomz"),
        const Spacer(),
        const Divider(
          color: Colors.black12,
          thickness: 2,
        ),
        const Spacer(),
        // Email
        Data(label: "Email", text: "shalimshali46@gmail.com"),
        const Spacer(),
        const Divider(
          color: Colors.black12,
          thickness: 2,
        ),
        const Spacer(),
        // Phone
        Data(label: "Phone", text: "9048371387"),
        const Spacer(),
        const Divider(
          color: Colors.black12,
          thickness: 2,
        ),
        const Spacer(),
        // DOB
        Data(label: "Date of Birth", text: "22/07/2002"),
        const Spacer(),
        const Divider(
          color: Colors.black12,
          thickness: 2,
        ),
        const Spacer(),
        // Address
        Data(label: "Address", text: "GCE Kanuur"),
        const Spacer(),
        const Divider(
          color: Colors.black12,
          thickness: 2,
        ),
      ],
    );
  }
}
