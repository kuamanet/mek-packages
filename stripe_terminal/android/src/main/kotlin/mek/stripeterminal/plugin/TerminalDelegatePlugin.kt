package mek.stripeterminal.plugin

import com.stripe.stripeterminal.external.callable.ConnectionTokenCallback
import com.stripe.stripeterminal.external.callable.ConnectionTokenProvider
import com.stripe.stripeterminal.external.callable.TerminalListener
import com.stripe.stripeterminal.external.models.ConnectionStatus
import com.stripe.stripeterminal.external.models.ConnectionTokenException
import com.stripe.stripeterminal.external.models.PaymentStatus
import com.stripe.stripeterminal.external.models.Reader
import mek.stripeterminal.api.PlatformException
import mek.stripeterminal.api.StripeTerminalHandlersApi
import mek.stripeterminal.api.toApi
import mek.stripeterminal.runOnMainThread

class TerminalDelegatePlugin(
    private val _handlers: StripeTerminalHandlersApi
) : ConnectionTokenProvider, TerminalListener {

    override fun fetchConnectionToken(callback: ConnectionTokenCallback) = runOnMainThread {
        _handlers.requestConnectionToken({ code, message, details ->
            val exception = PlatformException(code, message, details)
            callback.onFailure(ConnectionTokenException("", exception))
        }, { token ->
            callback.onSuccess(token)
        })
    }

    //region Terminal listeners
    override fun onConnectionStatusChange(status: ConnectionStatus) = runOnMainThread {
        _handlers.connectionStatusChange(status.toApi())
    }

    override fun onUnexpectedReaderDisconnect(reader: Reader) = runOnMainThread {
        _handlers.unexpectedReaderDisconnect(reader.toApi())
    }

    override fun onPaymentStatusChange(status: PaymentStatus) = runOnMainThread {
        _handlers.paymentStatusChange(status.toApi())
    }
    //endregion
}