package okhttp3.internal.connection;

import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.comparisons.NaturalOrderComparator;
import okhttp3.CipherSuite;
import okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1;
import okhttp3.ConnectionSpec;
import okhttp3.internal.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ConnectionSpecSelector {
    public final List a;
    public int b;
    public boolean c;
    public boolean d;

    public ConnectionSpecSelector(List list) {
        list.getClass();
        this.a = list;
    }

    /* JADX WARN: Type inference failed for: r13v7, types: [okhttp3.ConnectionSpec$Builder, java.lang.Object] */
    public final ConnectionSpec a(SSLSocket sSLSocket) {
        ConnectionSpec connectionSpec;
        int i;
        boolean z;
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        Comparator comparator;
        int i2 = this.b;
        List list = this.a;
        int size = list.size();
        while (true) {
            if (i2 < size) {
                connectionSpec = (ConnectionSpec) list.get(i2);
                if (connectionSpec.b(sSLSocket)) {
                    this.b = i2 + 1;
                    break;
                }
                i2++;
            } else {
                connectionSpec = null;
                break;
            }
        }
        if (connectionSpec != null) {
            int i3 = this.b;
            int size2 = list.size();
            while (true) {
                i = 0;
                if (i3 < size2) {
                    if (((ConnectionSpec) list.get(i3)).b(sSLSocket)) {
                        z = true;
                        break;
                    }
                    i3++;
                } else {
                    z = false;
                    break;
                }
            }
            this.c = z;
            boolean z2 = this.d;
            String[] strArr = connectionSpec.d;
            String[] strArr2 = connectionSpec.c;
            if (strArr2 != null) {
                String[] enabledCipherSuites2 = sSLSocket.getEnabledCipherSuites();
                enabledCipherSuites2.getClass();
                enabledCipherSuites = Util.m(enabledCipherSuites2, strArr2, CipherSuite.c);
            } else {
                enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
            }
            if (strArr != null) {
                String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
                enabledProtocols2.getClass();
                comparator = NaturalOrderComparator.j;
                enabledProtocols = Util.m(enabledProtocols2, strArr, comparator);
            } else {
                enabledProtocols = sSLSocket.getEnabledProtocols();
            }
            String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
            supportedCipherSuites.getClass();
            CipherSuite$Companion$ORDER_BY_NAME$1 cipherSuite$Companion$ORDER_BY_NAME$1 = CipherSuite.c;
            byte[] bArr = Util.a;
            int length = supportedCipherSuites.length;
            while (true) {
                if (i < length) {
                    if (cipherSuite$Companion$ORDER_BY_NAME$1.compare(supportedCipherSuites[i], "TLS_FALLBACK_SCSV") == 0) {
                        break;
                    }
                    i++;
                } else {
                    i = -1;
                    break;
                }
            }
            if (z2 && i != -1) {
                enabledCipherSuites.getClass();
                String str = supportedCipherSuites[i];
                str.getClass();
                enabledCipherSuites = (String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length + 1);
                enabledCipherSuites[enabledCipherSuites.length - 1] = str;
            }
            ?? obj = new Object();
            obj.a = connectionSpec.a;
            obj.b = strArr2;
            obj.c = strArr;
            obj.d = connectionSpec.b;
            enabledCipherSuites.getClass();
            obj.b((String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length));
            enabledProtocols.getClass();
            obj.d((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length));
            ConnectionSpec a = obj.a();
            if (a.c() != null) {
                sSLSocket.setEnabledProtocols(a.d);
            }
            if (a.a() != null) {
                sSLSocket.setEnabledCipherSuites(a.c);
            }
            return connectionSpec;
        }
        StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
        sb.append(this.d);
        sb.append(", modes=");
        sb.append(list);
        String[] enabledProtocols3 = sSLSocket.getEnabledProtocols();
        enabledProtocols3.getClass();
        String arrays = Arrays.toString(enabledProtocols3);
        arrays.getClass();
        sb.append(", supported protocols=");
        sb.append(arrays);
        throw new UnknownServiceException(sb.toString());
    }
}
