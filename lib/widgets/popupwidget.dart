import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/views/cartpage.dart';
import 'package:holytea_slicing_ui/widgets/checkedboxwidget.dart';
import 'package:holytea_slicing_ui/widgets/counterwidget.dart';
import 'package:holytea_slicing_ui/widgets/loveWidget.dart';
import '../controller/CartController.dart';
import '../controller/controller_counter.dart';
import '../model/cartmodel.dart';
import '../model/model.dart';

class MyCustomPopUp extends StatefulWidget {
  final HolyteaModel product;
  final CounterController controller = Get.put(CounterController());

  MyCustomPopUp({required this.product});

  @override
  _MyCustomPopUpState createState() => _MyCustomPopUpState();
}

class _MyCustomPopUpState extends State<MyCustomPopUp> {
  int totalPrice = 0;
  int selectedQuantity = 1;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.product.price;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.93,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: primaryTextColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: NetworkImage(widget.product.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.product.name,
                    style: primaryTextBl,
                  ),
                  Transform.scale(
                    scale: 1,
                    child: Container(
                      padding: EdgeInsets.only(right: 16, top: 5),
                      width: 55,
                      height: 40,
                      child: FavoriteIcon(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CounterWidget(
                    onChanged: (value) {
                      setState(() {
                        selectedQuantity = value;
                        totalPrice = widget.product.price * selectedQuantity;
                      });
                    },
                  ),
                  Text(
                    "Rp " + totalPrice.toString(),
                    style: contentTextVer2Grey,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add a topping?",
                  style: primaryTextBl,
                ),
              ),
              CustomCheckbox(
                title: "Pearl",
                subTitle: "Subtitle Text",
              ),
              CustomCheckbox(title: "Extra ice", subTitle: "subTitle"),
              CustomCheckbox(title: "Less ice", subTitle: "subTitle"),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {
                    addToCart(widget.product);
                  },
                  style: customButtonStyle,
                  child: Text(
                    "Add to cart",
                    style: btnlogin,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void addToCart(HolyteaModel product) {
    final cartController = Get.put(CartController());
    cartController.addToCart(CartItem(
      productName: product.name,
      price: product.price,
      quantity: selectedQuantity, // Use the selectedQuantity
      productImage: product.image,
    ));
    Get.to(() => CartPage());
  }
}


void showCustomModalForItem(HolyteaModel product) {
  showCustomModal(Get.context!, product);
}

void showCustomModal(BuildContext context, HolyteaModel product) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => MyCustomPopUp(product: product),
  );
}
