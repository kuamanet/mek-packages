import 'package:mek_data_class/mek_data_class.dart';
import 'package:mek_stripe_terminal/src/models/card.dart';
import 'package:mek_stripe_terminal/src/models/location.dart';

part 'payment_method.g.dart';

@DataClass()
class PaymentMethod with _$PaymentMethod {
  final String id;
  final CardDetails? card;
  final CardPresentDetails? cardPresent;
  final CardPresentDetails? interacPresent;
  final String? customer;
  final Map<String, String> metadata;

  const PaymentMethod({
    required this.id,
    required this.card,
    required this.cardPresent,
    required this.interacPresent,
    required this.customer,
    required this.metadata,
  });
}

@DataClass()
class BillingDetails with _$BillingDetails {
  final Address? address;
  final String? email;
  final String? name;
  final String? phone;

  const BillingDetails({
    required this.address,
    required this.email,
    required this.name,
    required this.phone,
  });
}
