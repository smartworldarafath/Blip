package okhttp3;

import java.util.LinkedHashMap;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CipherSuite {
    public static final Companion b;
    public static final CipherSuite$Companion$ORDER_BY_NAME$1 c;
    public static final LinkedHashMap d;
    public static final CipherSuite e;
    public static final CipherSuite f;
    public static final CipherSuite g;
    public static final CipherSuite h;
    public static final CipherSuite i;
    public static final CipherSuite j;
    public static final CipherSuite k;
    public static final CipherSuite l;
    public static final CipherSuite m;
    public static final CipherSuite n;
    public static final CipherSuite o;
    public static final CipherSuite p;
    public static final CipherSuite q;
    public static final CipherSuite r;
    public static final CipherSuite s;
    public static final CipherSuite t;
    public final String a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final CipherSuite a(Companion companion, String str) {
            CipherSuite cipherSuite = new CipherSuite(str);
            CipherSuite.d.put(str, cipherSuite);
            return cipherSuite;
        }

        public final synchronized CipherSuite b(String str) {
            CipherSuite cipherSuite;
            String str2;
            try {
                str.getClass();
                LinkedHashMap linkedHashMap = CipherSuite.d;
                cipherSuite = (CipherSuite) linkedHashMap.get(str);
                if (cipherSuite == null) {
                    if (StringsKt.J(str, "TLS_", false)) {
                        str2 = "SSL_".concat(str.substring(4));
                    } else if (StringsKt.J(str, "SSL_", false)) {
                        str2 = "TLS_".concat(str.substring(4));
                    } else {
                        str2 = str;
                    }
                    cipherSuite = (CipherSuite) linkedHashMap.get(str2);
                    if (cipherSuite == null) {
                        cipherSuite = new CipherSuite(str);
                    }
                    linkedHashMap.put(str, cipherSuite);
                }
            } catch (Throwable th) {
                throw th;
            }
            return cipherSuite;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, okhttp3.CipherSuite$Companion] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1] */
    static {
        ?? obj = new Object();
        b = obj;
        c = new Object();
        d = new LinkedHashMap();
        Companion.a(obj, "SSL_RSA_WITH_NULL_MD5");
        Companion.a(obj, "SSL_RSA_WITH_NULL_SHA");
        Companion.a(obj, "SSL_RSA_EXPORT_WITH_RC4_40_MD5");
        Companion.a(obj, "SSL_RSA_WITH_RC4_128_MD5");
        Companion.a(obj, "SSL_RSA_WITH_RC4_128_SHA");
        Companion.a(obj, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");
        Companion.a(obj, "SSL_RSA_WITH_DES_CBC_SHA");
        e = Companion.a(obj, "SSL_RSA_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");
        Companion.a(obj, "SSL_DHE_DSS_WITH_DES_CBC_SHA");
        Companion.a(obj, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");
        Companion.a(obj, "SSL_DHE_RSA_WITH_DES_CBC_SHA");
        Companion.a(obj, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");
        Companion.a(obj, "SSL_DH_anon_WITH_RC4_128_MD5");
        Companion.a(obj, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");
        Companion.a(obj, "SSL_DH_anon_WITH_DES_CBC_SHA");
        Companion.a(obj, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_KRB5_WITH_DES_CBC_SHA");
        Companion.a(obj, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_KRB5_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_KRB5_WITH_DES_CBC_MD5");
        Companion.a(obj, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5");
        Companion.a(obj, "TLS_KRB5_WITH_RC4_128_MD5");
        Companion.a(obj, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");
        Companion.a(obj, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA");
        Companion.a(obj, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");
        Companion.a(obj, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5");
        f = Companion.a(obj, "TLS_RSA_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_128_CBC_SHA");
        g = Companion.a(obj, "TLS_RSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_RSA_WITH_NULL_SHA256");
        Companion.a(obj, "TLS_RSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_RSA_WITH_AES_256_CBC_SHA256");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA");
        Companion.a(obj, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA");
        Companion.a(obj, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_256_CBC_SHA256");
        Companion.a(obj, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA");
        Companion.a(obj, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA");
        Companion.a(obj, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA");
        Companion.a(obj, "TLS_PSK_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_PSK_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_PSK_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_PSK_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_RSA_WITH_SEED_CBC_SHA");
        h = Companion.a(obj, "TLS_RSA_WITH_AES_128_GCM_SHA256");
        i = Companion.a(obj, "TLS_RSA_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_128_GCM_SHA256");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV");
        Companion.a(obj, "TLS_FALLBACK_SCSV");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_NULL_SHA");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_NULL_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_NULL_SHA");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_RSA_WITH_NULL_SHA");
        Companion.a(obj, "TLS_ECDHE_RSA_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");
        j = Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        k = Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_anon_WITH_NULL_SHA");
        Companion.a(obj, "TLS_ECDH_anon_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");
        Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");
        l = Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        m = Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");
        n = Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        o = Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA");
        p = Companion.a(obj, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        q = Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
        Companion.a(obj, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        Companion.a(obj, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256");
        r = Companion.a(obj, "TLS_AES_128_GCM_SHA256");
        s = Companion.a(obj, "TLS_AES_256_GCM_SHA384");
        t = Companion.a(obj, "TLS_CHACHA20_POLY1305_SHA256");
        Companion.a(obj, "TLS_AES_128_CCM_SHA256");
        Companion.a(obj, "TLS_AES_128_CCM_8_SHA256");
    }

    public CipherSuite(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
