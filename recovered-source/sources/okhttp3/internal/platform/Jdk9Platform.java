package okhttp3.internal.platform;

import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import kotlin.text.StringsKt;
import okhttp3.internal.platform.Platform;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Jdk9Platform extends Platform {
    public static final boolean c;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
    
        if (r0.intValue() >= 9) goto L10;
     */
    static {
        Integer num;
        String property = System.getProperty("java.specification.version");
        if (property != null) {
            num = StringsKt.S(property);
        } else {
            num = null;
        }
        boolean z = false;
        if (num == null) {
            try {
                SSLSocket.class.getMethod("getApplicationProtocol", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        z = true;
        c = z;
    }

    @Override // okhttp3.internal.platform.Platform
    public final void d(SSLSocket sSLSocket, String str, List list) {
        list.getClass();
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        sSLParameters.setApplicationProtocols((String[]) Platform.Companion.a(list).toArray(new String[0]));
        sSLSocket.setSSLParameters(sSLParameters);
    }

    @Override // okhttp3.internal.platform.Platform
    public final String f(SSLSocket sSLSocket) {
        String applicationProtocol;
        boolean equals;
        try {
            applicationProtocol = sSLSocket.getApplicationProtocol();
            if (applicationProtocol == null) {
                equals = true;
            } else {
                equals = applicationProtocol.equals("");
            }
            if (!equals) {
                return applicationProtocol;
            }
            return null;
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }
}
