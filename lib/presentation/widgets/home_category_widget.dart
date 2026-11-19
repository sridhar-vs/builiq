import 'package:material_ui/material_ui.dart';

class HomeCategoryWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final List<String> images;
  final List<String> gridTitles;
  const new({
    super.key,
    required this.title,
    required this.subTitle,
    required this.images,
    required this.gridTitles,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 11,
      children: [
        Row(
          crossAxisAlignment: .start,
          children: [
            Expanded(
              child: Column(
                spacing: 4,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFF263445),
                      fontSize: 16,
                      fontWeight: .w600,
                    ),
                    textAlign: .left,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: Color(0xFF64748B),
                      fontSize: 12,
                      fontWeight: .w400,
                    ),
                  ),
                ],
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(50, 20),
                tapTargetSize: .shrinkWrap,
                alignment: .centerRight,
              ),
              iconAlignment: .end,
              onPressed: () {},
              icon: Icon(
                Icons.arrow_right_alt_sharp,
                color: Color(0xFF245B8F),
                size: 12,
              ),
              label: Text(
                "View All",
                style: TextStyle(
                  color: Color(0xFF245B8F),
                  fontSize: 8,
                  fontWeight: .w400,
                ),
              ),
            ),
          ],
        ),
        Row(
          spacing: 8,
          children: List.generate(
            images.length,
            (index) => gridBox(image: images[index], title: gridTitles[index]),
          ),
        ),
      ],
    );
  }
}

Widget gridBox({required String image, required String title}) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      width: 110,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE2E8F0)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        spacing: 4,
        crossAxisAlignment: .center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: Color(0xFFF3F6FA),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(image, height: 80, fit: BoxFit.cover),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF263445),
              fontWeight: .w600,
            ),
          ),
        ],
      ),
    ),
  );
}
