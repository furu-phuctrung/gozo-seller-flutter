import 'package:gozo_flutter/Widgets/DashboardScreen/Models/OrderLineItem.dart';
import 'package:gozo_flutter/Widgets/DashboardScreen/Repositorties/BaseRepository.dart';

class OrderLineItemRepository extends BaseRepository<OrderLineItem> {
  OrderLineItemRepository()
      : super(
            'https://5fb6559836e2fa00166a541a.mockapi.io/api/mock/shop/1/booking/1/product');

  @override
  OrderLineItem parseJson(Map<String, dynamic> json) {
    return OrderLineItem.fromJson(json);
  }
}
