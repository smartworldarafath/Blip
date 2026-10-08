package okhttp3.internal.platform;

import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import kotlin.collections.ArraysKt;
import okhttp3.internal.platform.android.AndroidCertificateChainCleaner;
import okhttp3.internal.platform.android.AndroidSocketAdapter;
import okhttp3.internal.platform.android.BouncyCastleSocketAdapter;
import okhttp3.internal.platform.android.ConscryptSocketAdapter;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import okhttp3.internal.platform.android.SocketAdapter;
import okhttp3.internal.tls.BasicCertificateChainCleaner;
import okhttp3.internal.tls.CertificateChainCleaner;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Android10Platform extends Platform {
    public static final boolean d;
    public final ArrayList c;

    static {
        boolean z;
        if ("Dalvik".equals(System.getProperty("java.vm.name")) && Build.VERSION.SDK_INT >= 29) {
            z = true;
        } else {
            z = false;
        }
        d = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Android10Platform() {
        Object obj;
        if ("Dalvik".equals(System.getProperty("java.vm.name")) && Build.VERSION.SDK_INT >= 29) {
            obj = new Object();
        } else {
            obj = null;
        }
        ArrayList p = ArraysKt.p(new SocketAdapter[]{obj, new DeferredSocketAdapter(AndroidSocketAdapter.f), new DeferredSocketAdapter(ConscryptSocketAdapter.a), new DeferredSocketAdapter(BouncyCastleSocketAdapter.a)});
        ArrayList arrayList = new ArrayList();
        Iterator it = p.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((SocketAdapter) next).b()) {
                arrayList.add(next);
            }
        }
        this.c = arrayList;
    }

    @Override // okhttp3.internal.platform.Platform
    public final CertificateChainCleaner b(X509TrustManager x509TrustManager) {
        X509TrustManagerExtensions x509TrustManagerExtensions;
        AndroidCertificateChainCleaner androidCertificateChainCleaner = null;
        try {
            x509TrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
        } catch (IllegalArgumentException unused) {
            x509TrustManagerExtensions = null;
        }
        if (x509TrustManagerExtensions != null) {
            androidCertificateChainCleaner = new AndroidCertificateChainCleaner(x509TrustManager, x509TrustManagerExtensions);
        }
        if (androidCertificateChainCleaner != null) {
            return androidCertificateChainCleaner;
        }
        return new BasicCertificateChainCleaner(c(x509TrustManager));
    }

    @Override // okhttp3.internal.platform.Platform
    public final void d(SSLSocket sSLSocket, String str, List list) {
        Object obj;
        list.getClass();
        Iterator it = this.c.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((SocketAdapter) obj).a(sSLSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter != null) {
            socketAdapter.d(sSLSocket, str, list);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public final String f(SSLSocket sSLSocket) {
        Object obj;
        Iterator it = this.c.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((SocketAdapter) obj).a(sSLSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter == null) {
            return null;
        }
        return socketAdapter.c(sSLSocket);
    }

    @Override // okhttp3.internal.platform.Platform
    public final boolean h(String str) {
        str.getClass();
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }
}
