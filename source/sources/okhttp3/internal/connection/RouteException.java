package okhttp3.internal.connection;

import java.io.IOException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RouteException extends RuntimeException {
    public final IOException j;
    public IOException k;

    public RouteException(IOException iOException) {
        super(iOException);
        this.j = iOException;
        this.k = iOException;
    }
}
