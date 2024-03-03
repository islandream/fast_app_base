import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:flutter/material.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 16, 16, 16),
            actions: [
              ImageButton(
                      onTap: () {
                        Nav.push(const SearchStockFragment());
                      },
                      height: 26,
                      width: 26,
                      imagePath: "icon/stock_search.png")
                  .p(10),
              ImageButton(onTap: () {}, height: 26, width: 26, imagePath: "icon/stock_calendar.png").p(10),
              ImageButton(onTap: () {}, height: 26, width: 26, imagePath: "icon/stock_settings.png").p(10),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  final VoidCallback onTap;
  final double width;
  final double height;
  final String imagePath;

  const ImageButton({super.key, required this.onTap, required this.width, required this.height, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: onTap,
      child: Image.asset("$basePath/$imagePath", height: height, width: width),
    );
  }
}
