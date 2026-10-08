package okhttp3;

import defpackage.k8;
import defpackage.u2;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.TlsVersion;
import okhttp3.internal.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Handshake {
    public final TlsVersion a;
    public final CipherSuite b;
    public final List c;
    public final Lazy d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static Handshake a(SSLSession sSLSession) {
            boolean equals;
            final List list;
            Certificate[] localCertificates;
            Certificate[] peerCertificates;
            List list2 = EmptyList.j;
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite != null) {
                if (cipherSuite.equals("TLS_NULL_WITH_NULL_NULL")) {
                    equals = true;
                } else {
                    equals = cipherSuite.equals("SSL_NULL_WITH_NULL_NULL");
                }
                if (!equals) {
                    CipherSuite b = CipherSuite.b.b(cipherSuite);
                    String protocol = sSLSession.getProtocol();
                    if (protocol != null) {
                        if (!"NONE".equals(protocol)) {
                            TlsVersion a = TlsVersion.Companion.a(protocol);
                            try {
                                peerCertificates = sSLSession.getPeerCertificates();
                            } catch (SSLPeerUnverifiedException unused) {
                            }
                            if (peerCertificates != null) {
                                list = Util.i(Arrays.copyOf(peerCertificates, peerCertificates.length));
                                localCertificates = sSLSession.getLocalCertificates();
                                if (localCertificates != null) {
                                    list2 = Util.i(Arrays.copyOf(localCertificates, localCertificates.length));
                                }
                                return new Handshake(a, b, list2, new Function0<List<? extends Certificate>>() { // from class: okhttp3.Handshake$Companion$handshake$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object a() {
                                        return list;
                                    }
                                });
                            }
                            list = list2;
                            localCertificates = sSLSession.getLocalCertificates();
                            if (localCertificates != null) {
                            }
                            return new Handshake(a, b, list2, new Function0<List<? extends Certificate>>() { // from class: okhttp3.Handshake$Companion$handshake$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object a() {
                                    return list;
                                }
                            });
                        }
                        k8.j("tlsVersion == NONE");
                        return null;
                    }
                    u2.l("tlsVersion == null");
                    return null;
                }
                k8.j("cipherSuite == ".concat(cipherSuite));
                return null;
            }
            u2.l("cipherSuite == null");
            return null;
        }
    }

    public Handshake(TlsVersion tlsVersion, CipherSuite cipherSuite, List list, final Function0 function0) {
        this.a = tlsVersion;
        this.b = cipherSuite;
        this.c = list;
        this.d = LazyKt.b(new Function0<List<? extends Certificate>>() { // from class: okhttp3.Handshake$peerCertificates$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                try {
                    return (List) Function0.this.a();
                } catch (SSLPeerUnverifiedException unused) {
                    return EmptyList.j;
                }
            }
        });
    }

    public final List a() {
        return (List) this.d.getValue();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Handshake) {
            Handshake handshake = (Handshake) obj;
            if (handshake.a == this.a && handshake.b == this.b && Intrinsics.a(handshake.a(), a()) && handshake.c.equals(this.c)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((a().hashCode() + ((this.b.hashCode() + ((this.a.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String type;
        String type2;
        List<Certificate> a = a();
        ArrayList arrayList = new ArrayList(CollectionsKt.m(a, 10));
        for (Certificate certificate : a) {
            if (certificate instanceof X509Certificate) {
                type2 = ((X509Certificate) certificate).getSubjectDN().toString();
            } else {
                type2 = certificate.getType();
                type2.getClass();
            }
            arrayList.add(type2);
        }
        String obj = arrayList.toString();
        StringBuilder sb = new StringBuilder("Handshake{tlsVersion=");
        sb.append(this.a);
        sb.append(" cipherSuite=");
        sb.append(this.b);
        sb.append(" peerCertificates=");
        sb.append(obj);
        sb.append(" localCertificates=");
        List<Certificate> list = this.c;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.m(list, 10));
        for (Certificate certificate2 : list) {
            if (certificate2 instanceof X509Certificate) {
                type = ((X509Certificate) certificate2).getSubjectDN().toString();
            } else {
                type = certificate2.getType();
                type.getClass();
            }
            arrayList2.add(type);
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }
}
