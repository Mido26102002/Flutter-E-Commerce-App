

class TPricingCalculator {
  // Tính toán giá tiền dựa trên tax và tiền shipping

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Tính toán tiền ship

  static String calculateShippingCost(String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Tính toán tax

  static String calculateTax(String location, double productPrice) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 5.0;
  }

  // tính toán  giá trị giỏ hàng và trả về tổng giá trị
  // static double calculateTotalPrice(CartModel cart) {
  //   return cart.items.map((e)=> e.price).fold(0, (previousPrice,  currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
