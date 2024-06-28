import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zapos/customWidegets/custom_appbar.dart';
import 'package:zapos/const/all_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      child: Scaffold(
        appBar: customAppbar(
            context: context,
            leadingIcon: Icons.menu,
            actionIcon: Icons.shopping_bag_outlined),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: AllColors.blackColor),
                      ),
                      Text("Welcome to zapos!",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: AllColors.greyColor))
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //Search Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: SearchBar(
                        leading: const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.search,
                            color: AllColors.greyColor,
                          ),
                        ),
                        hintText: "Search...",
                        hintStyle: const WidgetStatePropertyAll(TextStyle(
                            color: AllColors.greyColor, fontSize: 15)),
                        elevation: const WidgetStatePropertyAll(0.00),
                        backgroundColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 228, 228, 233)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.00))),
                      ),
                    ),
                    const SizedBox(
                      width: 10.00,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: AllColors.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Icon(
                        Icons.mic_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Choose Brand",
                      style: TextStyle(
                          color: AllColors.blackColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text("View All",
                          style: TextStyle(
                              color: AllColors.greyColor,
                              fontSize: 13,
                              fontWeight: FontWeight.normal)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 54,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          width: 115,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: const BoxDecoration(
                              color: Color(0xffF5F6FA),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    color: AllColors.whiteColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/nike.png",
                                  ),
                                ),
                              ),
                              const Text(
                                "Adidas",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        );
                      }),
                ),

                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "New Arraival",
                      style: TextStyle(
                          color: AllColors.blackColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text("View All",
                          style: TextStyle(
                              color: AllColors.greyColor,
                              fontSize: 13,
                              fontWeight: FontWeight.normal)),
                    )
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 1,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 1.1),
                    ),
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Image.asset(
                                "assets/images/p.png",
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.favorite_outline_outlined,
                                  color: AllColors.greyColor,
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 110,
                            padding: const EdgeInsets.only(left: 5),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Nike Sportswear Club Fle",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: AllColors.blackColor),
                                  ),
                                ),
                                Text("\$99",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: AllColors.blackColor,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          )
                        ],
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
