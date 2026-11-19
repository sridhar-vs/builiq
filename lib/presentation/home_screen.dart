import 'package:int_task/core/constraints/app_images.dart';
import 'package:int_task/presentation/widgets/home_category_widget.dart';
import 'package:material_ui/material_ui.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  @override
  void initState() {
    changeLoading();
    super.initState();
  }

  Future<void> changeLoading() async {
    await Future.delayed(Duration(milliseconds: 700));
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      ignoreContainers: false,
      enabled: isLoading,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          centerTitle: false,
          leading: Container(
            margin: EdgeInsets.only(left: 14),
            height: 40,
            width: 54,
            decoration: BoxDecoration(color: Color(0xFFFFCB14), shape: .circle),
            child: Center(
              child: Text(
                "A",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: .bold,
                ),
                textAlign: .center,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "Hello, Alex",
                  style: TextStyle(
                    color: Color(0xFF092746),
                    fontSize: 16,
                    fontWeight: .w600,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: RichText(
                        overflow: .ellipsis,
                        maxLines: 1,
                        text: TextSpan(
                          text: "Office -",
                          style: TextStyle(
                            color: Color(0xFF092746),
                            fontSize: 10,
                            fontWeight: .w600,
                          ),
                          children: [
                            TextSpan(
                              text: " 402, Royal Crest Apartments, 80 Ft Rd, Koraman",
                              style: TextStyle(
                                color: Color(0xFF092746),
                                fontSize: 10,
                                fontWeight: .w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xFF263445),
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 14, 16, 16.0),
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText:
                        "Search materials, services, brands & properties...",
                    hintStyle: TextStyle(
                      color: Color(0xFFC5D2E0),
                      fontSize: 12,
                      fontWeight: .w400,
                    ),
                    prefixIcon: Icon(Icons.search, color: Color(0xFFC5D2E0)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE2E8F0)),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE2E8F0)),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE2E8F0)),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: isLoading
                    ? NeverScrollableScrollPhysics()
                    : AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 0, 16, 16.0),
                      child: Column(
                        crossAxisAlignment: .start,
                        spacing: 8,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              "Brand of the day",
                              style: TextStyle(fontSize: 18, fontWeight: .w600),
                            ),
                          ),
                          Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF1F7),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Row(
                              spacing: 9,
                              children: [
                                Image.asset(
                                  AppImages.brandImage1,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    mainAxisAlignment: .spaceBetween,
                                    children: [
                                      Text(
                                        "Brand Name",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: .w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Tagline",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: .w400,
                                          color: Color(0xFF263445),
                                        ),
                                      ),
                                      Row(
                                        spacing: 5,
                                        children: [
                                          Text(
                                            "Explore Brand",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: .w600,
                                              color: Color(0xFF245B8F),
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_outlined,
                                            color: Color(0xFF245B8F),
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: HomeCategoryWidget(
                        title: "Featured Construction Service",
                        subTitle: "Find contractors  & professionals",
                        gridTitles: ["Firm", "Contractor", "Builder"],
                        images: [
                          AppImages.firm,
                          AppImages.contractor,
                          AppImages.builder,
                        ],
                      ),
                    ),
                    SizedBox(height: 21),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: HomeCategoryWidget(
                        title: "Popular Materials & Products",
                        subTitle: "Explore popular construction products",
                        gridTitles: ["Cement", "Steel", "Brick"],
                        images: [
                          AppImages.cement,
                          AppImages.steel,
                          AppImages.brick,
                        ],
                      ),
                    ),
                    SizedBox(height: 21),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: HomeCategoryWidget(
                        title: "Featured Real Estate",
                        subTitle: "Discover land, plots and properties",
                        gridTitles: ["Agent", "Btocker", "Valuer"],
                        images: [
                          AppImages.agent,
                          AppImages.broker,
                          AppImages.valuer,
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 18, 16, 0),
                      child: Column(
                        crossAxisAlignment: .start,
                        spacing: 8,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              "Brand of the day",
                              style: TextStyle(fontSize: 18, fontWeight: .w600),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(14, 7, 24, 15),
                            decoration: BoxDecoration(
                              color: Color(0xFFEAF1F7),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        spacing: 3,
                                        crossAxisAlignment: .start,
                                        children: [
                                          Text(
                                            "Special Deals",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: .w600,
                                              color: Color(0xFF092746),
                                            ),
                                          ),
                                          Text(
                                            "Offers across materials, services and real estate.",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: .w400,
                                              color: Color(0xFF263446),
                                            ),
                                          ),
                                          Row(
                                            spacing: 5,
                                            children: [
                                              Text(
                                                "Explore Offers",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: .w500,
                                                  color: Color(0xFF245B8F),
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_outlined,
                                                color: Color(0xFF245B8F),
                                                size: 16,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Image.asset(AppImages.emptyCart),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 21),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: HomeCategoryWidget(
                        title: "New Arrivals",
                        subTitle: "Discover the latest listings ",
                        gridTitles: ["Admixtures", "Surveyor", "Soil"],
                        images: [
                          AppImages.admixtures,
                          AppImages.surveyor,
                          AppImages.soil,
                        ],
                      ),
                    ),
                    SizedBox(height: 21),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: HomeCategoryWidget(
                        title: "Near by Business",
                        subTitle: "Explore business around your location",
                        gridTitles: [
                          "Adhesives",
                          "Installer",
                          "Legal Consultant",
                        ],
                        images: [
                          AppImages.adhesives,
                          AppImages.installer,
                          AppImages.legalConsultant,
                        ],
                      ),
                    ),
                    SizedBox(height: 120),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        floatingActionButton: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Row(
            spacing: 10,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(16),
                  child: Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xFFF3F6FA),
                    ),
                    child: BottomNavigationBar(
                      unselectedLabelStyle: TextStyle(color: Colors.black),
                      unselectedIconTheme: IconThemeData(
                        color: Color(0xFF263445),
                      ),
                      fixedColor: Color(0xFF263445),
                      unselectedItemColor: Color(0xFF263445),
                      selectedLabelStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: .w600,
                        color: Color(0xFF263445),
                      ),
                      currentIndex: 0,
                      showSelectedLabels: true,
                      showUnselectedLabels: true,
                      backgroundColor: Color(0xFFF3F6FA),
                      onTap: (value) {
                        if (value != 0) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  "Signup/login to access these features.",
                                ),
                                actions: [
                                  FilledButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("Ok"),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home, color: Color(0xFF263445)),
                          label: "Home",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.explore),
                          label: "Explore",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.calculate, color: Color(0xFF263445)),
                          label: "Calculate",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.chat, color: Color(0xFF263445)),
                          label: "Chat",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFF3F6FA),
                ),
                child: Center(
                  child: Image.asset("assets/images/image_logo.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
