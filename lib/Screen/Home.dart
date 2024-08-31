import 'package:farmer_ecommerce/Utilities/Search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'dart:math' as math;


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isNotificationSelected = false;
  bool _isMenuSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 30,
              child: Image.asset('Assets/Logo/Logo.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: <Widget>[
                    const RotatedBox(quarterTurns: 180),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isNotificationSelected = !_isNotificationSelected;
                        });
                      },
                      child: Icon(
                        size: 30,
                        _isNotificationSelected
                            ? IconlyBold.notification
                            : IconlyBroken.notification,
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: -7,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          '!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isMenuSelected = !_isMenuSelected;
                    });
                  },
                  child: Icon(
                    size: 30,
                    _isMenuSelected
                        ? HugeIcons.strokeRoundedMenu03
                        : HugeIcons.strokeRoundedMenu03,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.89,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        color: const Color(0xfffdc8bc),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              "There’s a Plant \nfor everyone",
                              style: GoogleFonts.philosopher(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 8),
                            child: Text("Get your 1st plant \n@ 40% off",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -35,
                  right: 5,
                  bottom: 0,
                  child: SizedBox(
                    height: 250, // Set the height of the image
                    child: Image.asset('Assets/hmoe_banner_Image.png'),
                  ),
                ),
              ],
            ),

            // Search Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Search(),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,          // Border width
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const SizedBox(
                      width: 42,
                      height: 46,
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedPreferenceHorizontal,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ),
                  ),
                )

              ],
            ),

            const SizedBox(height: 20),

            HorizontalScrollWidget(),

            // Custom Container
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 60 ),
                  child: Stack(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width*0.73,
                          height: MediaQuery.of(context).size.height*0.2,
                          child: ClipPath(
                            clipper: RoundedTrapezoidClipper(),
                            child: Container(
                              width: 100,
                              height: 100,
                              color: const Color(0xff9CE5CB),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('Air Purifier',
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                        Transform.rotate(
                                          angle: -30 * math.pi/180,
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 30, top: 10),
                                            child: Icon(Icons.pets,
                                              color: Color(0xff0D986A),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text('Peperomia',
                                      style: GoogleFonts.poppins(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('₹ 4,000',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(IconlyBroken.heart,
                                            color: Color(0xff002140),
                                            size: 36
                                        ),
                                        const SizedBox(width: 20),
                                        SizedBox(
                                          height: 54,
                                          width: 54,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xff0D986A),
                                                borderRadius: BorderRadius.circular(18)
                                            ),
                                            child: Icon(HugeIcons.strokeRoundedShoppingBag01,
                                              color: Color(0xffFFFFFF).withOpacity(0.6),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 40,
                    right: -80,
                    child: SizedBox(
                        height: 150,
                        child: Image.asset('Assets/Gallary/837e5b679f90f053d34aa4af5a47a218.png'))
                )
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 40 ),
                  child: Stack(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width*0.73,
                          height: MediaQuery.of(context).size.height*0.2,
                          child: ClipPath(
                            clipper: RoundedTrapezoidClipper(),
                            child: Container(
                              width: 100,
                              height: 100,
                              color: const Color(0xffFFE899),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('Air Purifier',
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                        Transform.rotate(
                                          angle: -30 * math.pi/180,
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 30, top: 10),
                                            child: Icon(Icons.pets,
                                              color: Color(0xff0D986A),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text('Peperomia',
                                      style: GoogleFonts.poppins(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('₹ 4,000',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(IconlyBroken.heart,
                                            color: Color(0xff002140),
                                            size: 36
                                        ),
                                        const SizedBox(width: 20),
                                        SizedBox(
                                          height: 54,
                                          width: 54,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xff0D986A),
                                                borderRadius: BorderRadius.circular(18)
                                            ),
                                            child: Icon(HugeIcons.strokeRoundedShoppingBag01,
                                              color: Color(0xffFFFFFF).withOpacity(0.6),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 40,
                    right: -80,
                    child: SizedBox(
                        height: 150,
                        child: Image.asset('Assets/Gallary/837e5b679f90f053d34aa4af5a47a218.png'))
                )
              ],
            ),


            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.89,
                      height: MediaQuery.of(context).size.height*0.16,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff8CEC8A).withOpacity(0.3),
                            borderRadius: BorderRadius.circular(18)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text("Invite a Friend and \nearn Plantify rewards",
                                  style: GoogleFonts.philosopher(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text('Redeem them to get \ninstant discounts',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        right: -10,
                        bottom: -20,
                        child: SizedBox(
                          height: 100,
                            child: Image.asset('Assets/Gallary/logo.png')
                        )
                    ),
                    Positioned(
                        right: 17,
                        bottom: 70,
                        child: SizedBox(
                            height: 14,
                            width: 14,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff0D986A),
                                borderRadius: BorderRadius.circular(25)
                              ),
                            )
                        )
                    ),
                    Positioned(
                        right: 65,
                        bottom: 70,
                        child: SizedBox(
                            height: 11,
                            width: 11,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff0D986A),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                            )
                        )
                    ),
                    Positioned(
                        right: 38,
                        bottom: 95,
                        child: SizedBox(
                            height: 17,
                            width: 17,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff0D986A),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                            )
                        )
                    ),
                    Positioned(
                        right: 20,
                        bottom: 120,
                        child: SizedBox(
                            height: 11,
                            width: 11,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff0D986A),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                            )
                        )
                    ),
                    Positioned(
                        right: 40,
                        top: 10,
                        child: SizedBox(
                            height: 5,
                            width: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff0D986A),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                            )
                        )
                    ),
                    Positioned(
                        left: 15,
                        top: 7,
                        child: SizedBox(
                            height: 13,
                            width: 13,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff0D986A),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                            )
                        )
                    ),
                    Positioned(
                        left: 5,
                        top: 45,
                        child: SizedBox(
                            height: 7,
                            width: 7,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff0D986A),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                            )
                        )
                    ),

                  ],
                ),
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 40 ),
                  child: Stack(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width*0.73,
                          height: MediaQuery.of(context).size.height*0.2,
                          child: ClipPath(
                            clipper: RoundedTrapezoidClipper(),
                            child: Container(
                              width: 100,
                              height: 100,
                              color: const Color(0xff56D1A7).withOpacity(0.6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('Air Purifier',
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                        Transform.rotate(
                                          angle: -30 * math.pi/180,
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 30, top: 10),
                                            child: Icon(Icons.pets,
                                              color: Color(0xff0D986A),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text('Peperomia',
                                      style: GoogleFonts.poppins(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('₹ 4,000',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(IconlyBroken.heart,
                                            color: Color(0xff002140),
                                            size: 36
                                        ),
                                        const SizedBox(width: 20),
                                        SizedBox(
                                          height: 54,
                                          width: 54,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xff0D986A),
                                                borderRadius: BorderRadius.circular(18)
                                            ),
                                            child: Icon(HugeIcons.strokeRoundedShoppingBag01,
                                              color: Color(0xffFFFFFF).withOpacity(0.6),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 40,
                    right: -80,
                    child: SizedBox(
                        height: 150,
                        child: Image.asset('Assets/Gallary/837e5b679f90f053d34aa4af5a47a218.png'))
                )
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 40 ),
                  child: Stack(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width*0.73,
                          height: MediaQuery.of(context).size.height*0.2,
                          child: ClipPath(
                            clipper: RoundedTrapezoidClipper(),
                            child: Container(
                              width: 100,
                              height: 100,
                              color: const Color(0xffB2E28D).withOpacity(0.9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('Air Purifier',
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                        Transform.rotate(
                                          angle: -30 * math.pi/180,
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 30, top: 10),
                                            child: Icon(Icons.pets,
                                              color: Color(0xff0D986A),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text('Peperomia',
                                      style: GoogleFonts.poppins(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('₹ 4,000',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(IconlyBroken.heart,
                                            color: Color(0xff002140),
                                            size: 36
                                        ),
                                        const SizedBox(width: 20),
                                        SizedBox(
                                          height: 54,
                                          width: 54,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xff0D986A),
                                                borderRadius: BorderRadius.circular(18)
                                            ),
                                            child: Icon(HugeIcons.strokeRoundedShoppingBag01,
                                              color: Color(0xffFFFFFF).withOpacity(0.6),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 40,
                    right: -80,
                    child: SizedBox(
                        height: 150,
                        child: Image.asset('Assets/Gallary/837e5b679f90f053d34aa4af5a47a218.png'))
                )
              ],
            ),

            // New Blog
            Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.89,
                          height: MediaQuery.of(context).size.height * 0.22,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                // Add constraints to the image
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'Assets/Gallary/Blog.png',
                                      fit: BoxFit.cover,  // Ensures the image fits within the available space
                                      width: double.infinity, // Ensures the image takes up the full width
                                      height: double.infinity, // Ensures the image takes up the full height
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                      child: Text(
                        "Caring for plants should be fun. That’s why we offer 1-on-1 virtual consultations from the comfort of your home or office.",
                        softWrap: true,
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          height: 1.4, // Line height to control spacing between lines
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                    top: MediaQuery.of(context).size.width*0.25,
                    left: MediaQuery.of(context).size.width*0.5,
                    child: Icon(Icons.play_circle_outline,
                      color: Colors.white,
                      size: 42,
                    )
                ),

                //Read More Link
                Positioned(
                  bottom: -2,
                    right: 30,
                    child: GestureDetector(
                      onTap: () {
                        // Handle "Learn More" tap here
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 2, // Set the height of the line to match the text height
                            width: 20, // The width of the line
                            color: Color(0xFF28A745), // The color of the line
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Learn More",
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF28A745), // Green color for the link
                            ),
                          ),
                        ],
                      ),
                    ),
                )
              ],
            ),

            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 30 ),
                  child: Stack(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width*0.73,
                          height: MediaQuery.of(context).size.height*0.2,
                          child: ClipPath(
                            clipper: RoundedTrapezoidClipper(),
                            child: Container(
                              width: 100,
                              height: 100,
                              color: const Color(0xffDEEC8A).withOpacity(0.9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('Air Purifier',
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                        Transform.rotate(
                                          angle: -30 * math.pi/180,
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 30, top: 10),
                                            child: Icon(Icons.pets,
                                              color: Color(0xff0D986A),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text('Peperomia',
                                      style: GoogleFonts.poppins(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('₹ 4,000',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(IconlyBroken.heart,
                                            color: Color(0xff002140),
                                            size: 36
                                        ),
                                        const SizedBox(width: 20),
                                        SizedBox(
                                          height: 54,
                                          width: 54,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xff0D986A),
                                                borderRadius: BorderRadius.circular(18)
                                            ),
                                            child: Icon(HugeIcons.strokeRoundedShoppingBag01,
                                              color: Color(0xffFFFFFF).withOpacity(0.6),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 40,
                    right: -80,
                    child: SizedBox(
                        height: 150,
                        child: Image.asset('Assets/Gallary/837e5b679f90f053d34aa4af5a47a218.png'))
                )
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 40 ),
                  child: Stack(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width*0.73,
                          height: MediaQuery.of(context).size.height*0.2,
                          child: ClipPath(
                            clipper: RoundedTrapezoidClipper(),
                            child: Container(
                              width: 100,
                              height: 100,
                              color: const Color(0xffF5EDA8).withOpacity(0.9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('Air Purifier',
                                            style: GoogleFonts.poppins(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        ),
                                        Transform.rotate(
                                          angle: -30 * math.pi/180,
                                          child: const Padding(
                                            padding: EdgeInsets.only(left: 30, top: 10),
                                            child: Icon(Icons.pets,
                                              color: Color(0xff0D986A),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text('Peperomia',
                                      style: GoogleFonts.poppins(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text('₹ 4,000',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(IconlyBroken.heart,
                                            color: Color(0xff002140),
                                            size: 36
                                        ),
                                        const SizedBox(width: 20),
                                        SizedBox(
                                          height: 54,
                                          width: 54,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xff0D986A),
                                                borderRadius: BorderRadius.circular(18)
                                            ),
                                            child: Icon(HugeIcons.strokeRoundedShoppingBag01,
                                              color: Color(0xffFFFFFF).withOpacity(0.6),
                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 40,
                    right: -80,
                    child: SizedBox(
                        height: 150,
                        child: Image.asset('Assets/Gallary/837e5b679f90f053d34aa4af5a47a218.png'))
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40, top:40),
              child: Container(
                width: 38,
                height: 3,
                color: Color(0xff002140),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Plant a Life',
                    style: GoogleFonts.poppins(
                      color:Color(0xff002140),
                      fontSize: 36,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  Text('Live amongst Living',
                    style: GoogleFonts.poppins(
                        color: Color(0xff002140).withOpacity(0.8),
                        fontSize: 28,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text('Spread the joy',
                    style: GoogleFonts.poppins(
                        color: Color(0xff002140).withOpacity(0.5),
                        fontSize: 24,
                        fontWeight: FontWeight.w700
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}

// Shape for the container
class RoundedTrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 40.0; // Radius for the rounded corners

    var path = Path();
    path.moveTo(radius, 0); // Start with a small move from the top-left corner
    path.lineTo(size.width - radius, 20); // Line to the top-right corner minus radius
    path.quadraticBezierTo(size.width, 20, size.width, 20 + radius); // Top-right corner

    path.lineTo(size.width, size.height - radius); // Line to the bottom-right corner minus radius
    path.quadraticBezierTo(size.width, size.height, size.width - radius, size.height); // Bottom-right corner

    path.lineTo(radius, size.height); // Line to the bottom-left corner minus radius
    path.quadraticBezierTo(0, size.height, 0, size.height - radius); // Bottom-left corner

    path.lineTo(0, radius); // Line to the top-left corner minus radius
    path.quadraticBezierTo(0, 0, radius, 0); // Top-left corner

    path.close(); // Close the path to complete the shape

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// Horizontal Scroll Menu
class HorizontalScrollWidget extends StatefulWidget {
  @override
  _HorizontalScrollWidgetState createState() => _HorizontalScrollWidgetState();
}

class _HorizontalScrollWidgetState extends State<HorizontalScrollWidget> {
  int _selectedIndex = 0; // Track the selected index

  final List<String> _menuItems = [
    'Top Pick',
    'Flour',
    'Rice',
    'Seed',
    'Organic Vegetable',
    'Edible Oil'
  ]; // Different menu item texts

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: List.generate(_menuItems.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    _selectedIndex = index; // Update the selected index
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _menuItems[index], // Use different text for each item
                      style: GoogleFonts.poppins(
                        fontSize: _selectedIndex == index ? 16 : 14,
                        fontWeight: _selectedIndex == index
                            ? FontWeight.w700
                            : FontWeight.normal,
                        color: _selectedIndex == index
                            ? const Color(0xff0D986A)
                            : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Active underline bar
                    Container(
                      height: 2,
                      width: 30,
                      color: _selectedIndex == index
                          ? const Color(0xff0D986A)
                          : Colors.transparent,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

