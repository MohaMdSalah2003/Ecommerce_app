import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/Home/data/Models/all_proudcts_model/product_model.dart';
import 'package:flutter/material.dart';

class ItemInfoViewBody extends StatefulWidget {
  const ItemInfoViewBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  State<ItemInfoViewBody> createState() => _ItemInfoViewBodyState();
}

class _ItemInfoViewBodyState extends State<ItemInfoViewBody> {
  int selectedIndex = -1;
  String itemsize = "";
  List<String> sizelist = ["S", "M", "L", "XL", "2XL"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 395,
          child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(widget.productModel.image!)),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 20.0,
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Price(
                  productModel: widget.productModel,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Size",
                      style: Styles.text17SemiBold,
                    ),
                    Text(
                      "Size Guide",
                      style: Styles.text15Regular,
                    )
                  ],
                ),
                Wrap(
                    direction: Axis.horizontal,
                    children: List.generate(5, (index) {
                      return InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                            itemsize = sizelist[selectedIndex];
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, left: 8.0),
                          child: Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? const Color(0xFF9775FA)
                                    : const Color(0xFF6E93F4),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              sizelist[index],
                              style: Styles.text17SemiBold,
                            )),
                          ),
                        ),
                      );
                    })),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Description",
                  style: Styles.text17SemiBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${widget.productModel.description}..",
                  style: Styles.text15Regular,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Price extends StatelessWidget {
  const Price({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Men's Printed Pullover Hoodie",
            style: Styles.text13Regular,
          ),
          Text(
            "Price",
            style: Styles.text13Regular,
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${productModel.name}',
            style: Styles.text22SemiBold,
          ),
          Text(
            "\${${productModel.price}}",
            style: Styles.text22SemiBold,
          )
        ],
      )
    ]);
  }
}
