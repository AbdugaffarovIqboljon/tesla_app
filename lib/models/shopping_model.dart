import 'dart:async';

class ShoppingProcess {
  String _price;
  int carPrice = 55700;
  int exteriorPrice = 0;
  int interiorPrice = 0;
  int autopilotPrice = 0;


  final streamController = StreamController<String>();
  late Stream<String> streamBroadcast;

  ShoppingProcess({
    String price = '\$55,700',
  }) : _price = price {
    streamBroadcast = streamController.stream.asBroadcastStream();
  }

  Stream<String> get stream {
    reload();
    return streamBroadcast;
  }

  void reload() {
    final total = carPrice + exteriorPrice + interiorPrice + autopilotPrice;
    streamController.sink.add(total.toString());
  }

  set price(String value) {
    streamController.sink.add(value);
    reload();
  }

  static void formatter(double price){}
}

