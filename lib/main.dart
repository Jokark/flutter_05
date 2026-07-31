class Order {
  String name;
  int orderNumber;
  double price;

  Order(this.name, this.orderNumber, this.price);

  double getSubTotal() {
    return orderNumber * price;
  }
  double getDiscount() {
    double subTotal = getSubTotal();
    if (subTotal >= 1000000) {
      return subTotal * 0.10;
    } else if (subTotal >= 500000) {
      return subTotal * 0.05;
    }
    return 0;
  }
  double getVat() {
    double afterDiscount = getSubTotal() - getDiscount();
    return afterDiscount * 0.08;
  }
  double getTotal() {
    return getSubTotal() - getDiscount() + getVat();
  }
  void introduce() {
    print("Tên sản phẩm: $name");
    print("Số lượng: $orderNumber");
    print("Đơn giá: $price");
    print("Tổng tiền: ${getSubTotal()}");
    print("Chiết khấu: ${getDiscount()}");
    print("VAT: ${getVat()}");
    print("Tổng thanh toán: ${getTotal()}");
  }
}

void main() {
  Order order = Order("Điện thoại", 5, 250000);
  order.introduce();
}