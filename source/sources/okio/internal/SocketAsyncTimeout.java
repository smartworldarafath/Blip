package okio.internal;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.text.StringsKt;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SocketAsyncTimeout extends AsyncTimeout {
    public final Socket n;

    public SocketAsyncTimeout(Socket socket) {
        this.n = socket;
    }

    @Override // okio.AsyncTimeout
    public final void j() {
        boolean z;
        Socket socket = this.n;
        try {
            socket.close();
        } catch (AssertionError e) {
            Logger logger = _JavaIoKt.a;
            boolean z2 = false;
            if (e.getCause() != null) {
                String message = e.getMessage();
                if (message != null) {
                    z = StringsKt.i(message, "getsockname failed", false);
                } else {
                    z = false;
                }
                if (z) {
                    z2 = true;
                }
            }
            if (z2) {
                _JavaIoKt.a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e);
                return;
            }
            throw e;
        } catch (Exception e2) {
            _JavaIoKt.a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
        }
    }

    public final IOException k(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }
}
