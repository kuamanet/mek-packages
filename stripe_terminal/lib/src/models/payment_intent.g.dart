// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_intent.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

mixin _$PaymentIntent {
  PaymentIntent get _self => this as PaymentIntent;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentIntent &&
          runtimeType == other.runtimeType &&
          _self.id == other.id &&
          _self.created == other.created &&
          _self.status == other.status &&
          _self.amount == other.amount &&
          _self.captureMethod == other.captureMethod &&
          _self.currency == other.currency &&
          $mapEquality.equals(_self.metadata, other.metadata) &&
          _self.paymentMethodId == other.paymentMethodId &&
          _self.amountTip == other.amountTip &&
          _self.statementDescriptor == other.statementDescriptor &&
          _self.statementDescriptorSuffix == other.statementDescriptorSuffix &&
          _self.amountCapturable == other.amountCapturable &&
          _self.amountReceived == other.amountReceived &&
          _self.application == other.application &&
          _self.applicationFeeAmount == other.applicationFeeAmount &&
          _self.cancellationReason == other.cancellationReason &&
          _self.canceledAt == other.canceledAt &&
          _self.clientSecret == other.clientSecret &&
          _self.confirmationMethod == other.confirmationMethod &&
          _self.customer == other.customer &&
          _self.description == other.description &&
          _self.invoice == other.invoice &&
          _self.onBehalfOf == other.onBehalfOf &&
          _self.review == other.review &&
          _self.receiptEmail == other.receiptEmail &&
          _self.setupFutureUsage == other.setupFutureUsage &&
          _self.transferGroup == other.transferGroup;
  @override
  int get hashCode {
    var hashCode = 0;
    hashCode = $hashCombine(hashCode, _self.id.hashCode);
    hashCode = $hashCombine(hashCode, _self.created.hashCode);
    hashCode = $hashCombine(hashCode, _self.status.hashCode);
    hashCode = $hashCombine(hashCode, _self.amount.hashCode);
    hashCode = $hashCombine(hashCode, _self.captureMethod.hashCode);
    hashCode = $hashCombine(hashCode, _self.currency.hashCode);
    hashCode = $hashCombine(hashCode, $mapEquality.hash(_self.metadata));
    hashCode = $hashCombine(hashCode, _self.paymentMethodId.hashCode);
    hashCode = $hashCombine(hashCode, _self.amountTip.hashCode);
    hashCode = $hashCombine(hashCode, _self.statementDescriptor.hashCode);
    hashCode = $hashCombine(hashCode, _self.statementDescriptorSuffix.hashCode);
    hashCode = $hashCombine(hashCode, _self.amountCapturable.hashCode);
    hashCode = $hashCombine(hashCode, _self.amountReceived.hashCode);
    hashCode = $hashCombine(hashCode, _self.application.hashCode);
    hashCode = $hashCombine(hashCode, _self.applicationFeeAmount.hashCode);
    hashCode = $hashCombine(hashCode, _self.cancellationReason.hashCode);
    hashCode = $hashCombine(hashCode, _self.canceledAt.hashCode);
    hashCode = $hashCombine(hashCode, _self.clientSecret.hashCode);
    hashCode = $hashCombine(hashCode, _self.confirmationMethod.hashCode);
    hashCode = $hashCombine(hashCode, _self.customer.hashCode);
    hashCode = $hashCombine(hashCode, _self.description.hashCode);
    hashCode = $hashCombine(hashCode, _self.invoice.hashCode);
    hashCode = $hashCombine(hashCode, _self.onBehalfOf.hashCode);
    hashCode = $hashCombine(hashCode, _self.review.hashCode);
    hashCode = $hashCombine(hashCode, _self.receiptEmail.hashCode);
    hashCode = $hashCombine(hashCode, _self.setupFutureUsage.hashCode);
    hashCode = $hashCombine(hashCode, _self.transferGroup.hashCode);
    return $hashFinish(hashCode);
  }

  @override
  String toString() => (ClassToString('PaymentIntent')
        ..add('id', _self.id)
        ..add('created', _self.created)
        ..add('status', _self.status)
        ..add('amount', _self.amount)
        ..add('captureMethod', _self.captureMethod)
        ..add('currency', _self.currency)
        ..add('metadata', _self.metadata)
        ..add('paymentMethodId', _self.paymentMethodId)
        ..add('amountTip', _self.amountTip)
        ..add('statementDescriptor', _self.statementDescriptor)
        ..add('statementDescriptorSuffix', _self.statementDescriptorSuffix)
        ..add('amountCapturable', _self.amountCapturable)
        ..add('amountReceived', _self.amountReceived)
        ..add('application', _self.application)
        ..add('applicationFeeAmount', _self.applicationFeeAmount)
        ..add('cancellationReason', _self.cancellationReason)
        ..add('canceledAt', _self.canceledAt)
        ..add('clientSecret', _self.clientSecret)
        ..add('confirmationMethod', _self.confirmationMethod)
        ..add('customer', _self.customer)
        ..add('description', _self.description)
        ..add('invoice', _self.invoice)
        ..add('onBehalfOf', _self.onBehalfOf)
        ..add('review', _self.review)
        ..add('receiptEmail', _self.receiptEmail)
        ..add('setupFutureUsage', _self.setupFutureUsage)
        ..add('transferGroup', _self.transferGroup))
      .toString();
}

mixin _$PaymentIntentParameters {
  PaymentIntentParameters get _self => this as PaymentIntentParameters;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentIntentParameters &&
          runtimeType == other.runtimeType &&
          _self.amount == other.amount &&
          _self.currency == other.currency &&
          _self.captureMethod == other.captureMethod &&
          $listEquality.equals(_self.paymentMethodTypes, other.paymentMethodTypes);
  @override
  int get hashCode {
    var hashCode = 0;
    hashCode = $hashCombine(hashCode, _self.amount.hashCode);
    hashCode = $hashCombine(hashCode, _self.currency.hashCode);
    hashCode = $hashCombine(hashCode, _self.captureMethod.hashCode);
    hashCode = $hashCombine(hashCode, $listEquality.hash(_self.paymentMethodTypes));
    return $hashFinish(hashCode);
  }

  @override
  String toString() => (ClassToString('PaymentIntentParameters')
        ..add('amount', _self.amount)
        ..add('currency', _self.currency)
        ..add('captureMethod', _self.captureMethod)
        ..add('paymentMethodTypes', _self.paymentMethodTypes))
      .toString();
}
