package okhttp3;

import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.NaturalOrderComparator;
import okhttp3.TlsVersion;
import okhttp3.internal.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ConnectionSpec {
    public static final ConnectionSpec e;
    public static final ConnectionSpec f;
    public final boolean a;
    public final boolean b;
    public final String[] c;
    public final String[] d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public boolean a;
        public String[] b;
        public String[] c;
        public boolean d;

        public Builder(boolean z) {
            this.a = z;
        }

        public final ConnectionSpec a() {
            return new ConnectionSpec(this.a, this.d, this.b, this.c);
        }

        public final void b(String... strArr) {
            if (this.a) {
                if (strArr.length != 0) {
                    this.b = (String[]) strArr.clone();
                    return;
                } else {
                    u2.g("At least one cipher suite is required");
                    return;
                }
            }
            u2.g("no cipher suites for cleartext connections");
        }

        public final void c(CipherSuite... cipherSuiteArr) {
            if (this.a) {
                ArrayList arrayList = new ArrayList(cipherSuiteArr.length);
                for (CipherSuite cipherSuite : cipherSuiteArr) {
                    arrayList.add(cipherSuite.a);
                }
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                b((String[]) Arrays.copyOf(strArr, strArr.length));
                return;
            }
            u2.g("no cipher suites for cleartext connections");
        }

        public final void d(String... strArr) {
            if (this.a) {
                if (strArr.length != 0) {
                    this.c = (String[]) strArr.clone();
                    return;
                } else {
                    u2.g("At least one TLS version is required");
                    return;
                }
            }
            u2.g("no TLS versions for cleartext connections");
        }

        public final void e(TlsVersion... tlsVersionArr) {
            if (this.a) {
                ArrayList arrayList = new ArrayList(tlsVersionArr.length);
                for (TlsVersion tlsVersion : tlsVersionArr) {
                    arrayList.add(tlsVersion.j);
                }
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                d((String[]) Arrays.copyOf(strArr, strArr.length));
                return;
            }
            u2.g("no TLS versions for cleartext connections");
        }
    }

    static {
        CipherSuite cipherSuite = CipherSuite.r;
        CipherSuite cipherSuite2 = CipherSuite.s;
        CipherSuite cipherSuite3 = CipherSuite.t;
        CipherSuite cipherSuite4 = CipherSuite.l;
        CipherSuite cipherSuite5 = CipherSuite.n;
        CipherSuite cipherSuite6 = CipherSuite.m;
        CipherSuite cipherSuite7 = CipherSuite.o;
        CipherSuite cipherSuite8 = CipherSuite.q;
        CipherSuite cipherSuite9 = CipherSuite.p;
        CipherSuite[] cipherSuiteArr = {cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9};
        CipherSuite[] cipherSuiteArr2 = {cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9, CipherSuite.j, CipherSuite.k, CipherSuite.h, CipherSuite.i, CipherSuite.f, CipherSuite.g, CipherSuite.e};
        Builder builder = new Builder(true);
        builder.c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr, 9));
        TlsVersion tlsVersion = TlsVersion.TLS_1_3;
        TlsVersion tlsVersion2 = TlsVersion.TLS_1_2;
        builder.e(tlsVersion, tlsVersion2);
        builder.d = true;
        builder.a();
        Builder builder2 = new Builder(true);
        builder2.c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, 16));
        builder2.e(tlsVersion, tlsVersion2);
        builder2.d = true;
        e = builder2.a();
        Builder builder3 = new Builder(true);
        builder3.c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, 16));
        builder3.e(tlsVersion, tlsVersion2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0);
        builder3.d = true;
        builder3.a();
        f = new Builder(false).a();
    }

    public ConnectionSpec(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.a = z;
        this.b = z2;
        this.c = strArr;
        this.d = strArr2;
    }

    public final List a() {
        String[] strArr = this.c;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(CipherSuite.b.b(str));
            }
            return CollectionsKt.X(arrayList);
        }
        return null;
    }

    public final boolean b(SSLSocket sSLSocket) {
        Comparator comparator;
        if (this.a) {
            String[] strArr = this.d;
            if (strArr != null) {
                String[] enabledProtocols = sSLSocket.getEnabledProtocols();
                comparator = NaturalOrderComparator.j;
                if (!Util.g(strArr, enabledProtocols, comparator)) {
                    return false;
                }
            }
            String[] strArr2 = this.c;
            if (strArr2 != null && !Util.g(strArr2, sSLSocket.getEnabledCipherSuites(), CipherSuite.c)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final List c() {
        String[] strArr = this.d;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(TlsVersion.Companion.a(str));
            }
            return CollectionsKt.X(arrayList);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ConnectionSpec) {
            if (obj != this) {
                ConnectionSpec connectionSpec = (ConnectionSpec) obj;
                boolean z = connectionSpec.a;
                boolean z2 = this.a;
                if (z2 == z) {
                    if (z2) {
                        if (!Arrays.equals(this.c, connectionSpec.c) || !Arrays.equals(this.d, connectionSpec.d) || this.b != connectionSpec.b) {
                            return false;
                        }
                        return true;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        if (this.a) {
            int i2 = 0;
            String[] strArr = this.c;
            if (strArr != null) {
                i = Arrays.hashCode(strArr);
            } else {
                i = 0;
            }
            int i3 = (527 + i) * 31;
            String[] strArr2 = this.d;
            if (strArr2 != null) {
                i2 = Arrays.hashCode(strArr2);
            }
            return ((i3 + i2) * 31) + (!this.b ? 1 : 0);
        }
        return 17;
    }

    public final String toString() {
        if (!this.a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + Objects.toString(a(), "[all enabled]") + ", tlsVersions=" + Objects.toString(c(), "[all enabled]") + ", supportsTlsExtensions=" + this.b + ')';
    }
}
