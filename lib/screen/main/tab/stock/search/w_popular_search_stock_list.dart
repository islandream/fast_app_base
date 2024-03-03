import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/popular_stock_dummy.dart';

class PopularSearchStockList extends StatelessWidget {
  const PopularSearchStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "인기 검색".text.white.size(20).make(),
        const Height(10),
        Container(
            width: double.infinity,
            height: 300,
            color: Colors.black,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return PopularStockItemWidget(index: index);
              },
            )),
      ],
    );
  }
}

class PopularStockItemWidget extends StatelessWidget {
  final int index;
  const PopularStockItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${index + 1}",
            style: const TextStyle(color: Colors.white60),
          ),
          const Width(20),
          Text(
            popularStockList[index].name,
            style: const TextStyle(color: Colors.white60),
          ),
          const EmptyExpanded(),
          Text(
            popularStockList[index].percentage >= 0
                ? "+${popularStockList[index].percentage} %"
                : "${popularStockList[index].percentage} %",
            style: TextStyle(
              color: popularStockList[index].percentage >= 0 ? Colors.red : Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
