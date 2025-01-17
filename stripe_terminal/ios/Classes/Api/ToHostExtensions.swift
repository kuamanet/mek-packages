import Foundation
import StripeTerminal

extension PaymentIntentParametersApi {
    func toHost() -> PaymentIntentParameters {
        return PaymentIntentParameters(
            amount: UInt(amount),
            currency: currency,
            paymentMethodTypes: paymentMethodTypes.map { $0.toHost() },
            captureMethod: captureMethod.toHost()
        )
    }
}

extension PaymentMethodTypeApi {
    func toHost() -> String {
        switch (self) {
        case .cardPresent:
            return "card_present"
        case .card:
            return "card"
        case .interactPresent:
            return "interact_present"
        }
    }
}

extension CaptureMethodApi {
    func toHost() -> CaptureMethod {
        switch (self) {
        case .automatic:
            return .automatic
        case .manual:
            return .manual
        }
    }
}

extension DiscoveryMethodApi {
    func toHost() -> DiscoveryMethod? {
        switch self {
        case .bluetoothScan:
            return .bluetoothScan
        case .bluetoothProximity:
            return .bluetoothProximity
        case .internet:
            return .internet
        case .localMobile:
            return .localMobile
        case .handOff, .embedded, .usb:
            return nil
        }
    }
}

extension DeviceTypeApi {
    func toHost() -> DeviceType? {
        switch self {
        case .chipper2X:
            return .chipper2X
        case .verifoneP400:
            return .verifoneP400
        case .wisePad3:
            return .wisePad3
        case .stripeM2:
            return .stripeM2
        case .wisePosE:
            return .wisePosE
        case .wisePosEDevkit:
            return .wisePosEDevKit
        case .etna:
            return .etna
        case .chipper1X:
            return .chipper1X
        case .wiseCube:
            return .wiseCube
        case .stripeS700:
            return .stripeS700
        case .stripeS700Devkit:
            return .stripeS700DevKit
        case .appleBuiltIn:
            return .appleBuiltIn
        case .cotsDevice, .wisePad3s:
            return nil
        }
    }
}


extension CartApi {
    func toHost() -> Cart {
        return Cart(
            currency: currency,
            tax: tax,
            total: total
        )
    }
}

extension SetupIntentUsageApi {
    func toHost() -> SetupIntentUsage {
        switch self {
        case .offSession:
            return .offSession
        case .onSession:
            return .onSession
        }
    }
}
