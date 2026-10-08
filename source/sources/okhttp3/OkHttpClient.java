package okhttp3;

import defpackage.fe;
import defpackage.k8;
import defpackage.u2;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.proxy.NullProxySelector;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class OkHttpClient implements Cloneable, Call.Factory {
    public static final List I = Util.i(Protocol.HTTP_2, Protocol.HTTP_1_1);
    public static final List J = Util.i(ConnectionSpec.e, ConnectionSpec.f);
    public final List A;
    public final HostnameVerifier B;
    public final CertificatePinner C;
    public final CertificateChainCleaner D;
    public final int E;
    public final int F;
    public final int G;
    public final RouteDatabase H;
    public final Dispatcher j;
    public final ConnectionPool k;
    public final List l;
    public final List m;
    public final EventListener.Factory n;
    public final boolean o;
    public final Authenticator p;
    public final boolean q;
    public final boolean r;
    public final CookieJar s;
    public final Dns t;
    public final ProxySelector u;
    public final Authenticator v;
    public final SocketFactory w;
    public final SSLSocketFactory x;
    public final X509TrustManager y;
    public final List z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final Dispatcher a = new Dispatcher();
        public final ConnectionPool b = new ConnectionPool();
        public final ArrayList c = new ArrayList();
        public final ArrayList d = new ArrayList();
        public final fe e = new fe(18);
        public final boolean f = true;
        public final Authenticator g;
        public final boolean h;
        public final boolean i;
        public final CookieJar j;
        public final Dns k;
        public final Authenticator l;
        public final SocketFactory m;
        public final List n;
        public final List o;
        public final OkHostnameVerifier p;
        public final CertificatePinner q;
        public final int r;
        public final int s;
        public final int t;

        public Builder() {
            Authenticator authenticator = Authenticator.a;
            this.g = authenticator;
            this.h = true;
            this.i = true;
            this.j = CookieJar.a;
            this.k = Dns.a;
            this.l = authenticator;
            SocketFactory socketFactory = SocketFactory.getDefault();
            socketFactory.getClass();
            this.m = socketFactory;
            this.n = OkHttpClient.J;
            this.o = OkHttpClient.I;
            this.p = OkHostnameVerifier.a;
            this.q = CertificatePinner.c;
            this.r = 10000;
            this.s = 10000;
            this.t = 10000;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0142  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public OkHttpClient() {
        List list;
        Builder builder = new Builder();
        this.j = builder.a;
        this.k = builder.b;
        this.l = Util.t(builder.c);
        this.m = Util.t(builder.d);
        this.n = builder.e;
        this.o = builder.f;
        this.p = builder.g;
        this.q = builder.h;
        this.r = builder.i;
        this.s = builder.j;
        this.t = builder.k;
        ProxySelector proxySelector = ProxySelector.getDefault();
        this.u = proxySelector == null ? NullProxySelector.a : proxySelector;
        this.v = builder.l;
        this.w = builder.m;
        List list2 = builder.n;
        this.z = list2;
        this.A = builder.o;
        this.B = builder.p;
        this.E = builder.r;
        this.F = builder.s;
        this.G = builder.t;
        this.H = new RouteDatabase();
        if (list2 == null || !list2.isEmpty()) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                if (((ConnectionSpec) it.next()).a) {
                    Platform platform = Platform.a;
                    X509TrustManager m = Platform.a.m();
                    this.y = m;
                    this.x = Platform.a.l(m);
                    CertificateChainCleaner b = Platform.a.b(m);
                    this.D = b;
                    CertificatePinner certificatePinner = builder.q;
                    this.C = Intrinsics.a(certificatePinner.b, b) ? certificatePinner : new CertificatePinner(certificatePinner.a, b);
                    X509TrustManager x509TrustManager = this.y;
                    CertificateChainCleaner certificateChainCleaner = this.D;
                    SSLSocketFactory sSLSocketFactory = this.x;
                    List list3 = this.m;
                    list = this.l;
                    list.getClass();
                    if (list.contains(null)) {
                        list3.getClass();
                        if (!list3.contains(null)) {
                            List list4 = this.z;
                            if (list4 == null || !list4.isEmpty()) {
                                Iterator it2 = list4.iterator();
                                while (it2.hasNext()) {
                                    if (((ConnectionSpec) it2.next()).a) {
                                        if (sSLSocketFactory != null) {
                                            if (certificateChainCleaner != null) {
                                                if (x509TrustManager == null) {
                                                    u2.l("x509TrustManager == null");
                                                    throw null;
                                                }
                                                return;
                                            }
                                            u2.l("certificateChainCleaner == null");
                                            throw null;
                                        }
                                        u2.l("sslSocketFactory == null");
                                        throw null;
                                    }
                                }
                            }
                            if (sSLSocketFactory == null) {
                                if (certificateChainCleaner == null) {
                                    if (x509TrustManager == null) {
                                        if (Intrinsics.a(this.C, CertificatePinner.c)) {
                                            return;
                                        }
                                        u2.l("Check failed.");
                                        throw null;
                                    }
                                    u2.l("Check failed.");
                                    throw null;
                                }
                                u2.l("Check failed.");
                                throw null;
                            }
                            u2.l("Check failed.");
                            throw null;
                        }
                        k8.s(list3, "Null network interceptor: ");
                        throw null;
                    }
                    k8.s(list, "Null interceptor: ");
                    throw null;
                }
            }
        }
        this.x = null;
        this.D = null;
        this.y = null;
        this.C = CertificatePinner.c;
        X509TrustManager x509TrustManager2 = this.y;
        CertificateChainCleaner certificateChainCleaner2 = this.D;
        SSLSocketFactory sSLSocketFactory2 = this.x;
        List list32 = this.m;
        list = this.l;
        list.getClass();
        if (list.contains(null)) {
        }
    }

    public final Object clone() {
        return super.clone();
    }
}
