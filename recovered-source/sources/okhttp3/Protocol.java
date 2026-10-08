package okhttp3;

import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public enum Protocol {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");

    public final String j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static Protocol a(String str) {
            if (str.equals("http/1.0")) {
                return Protocol.HTTP_1_0;
            }
            if (str.equals("http/1.1")) {
                return Protocol.HTTP_1_1;
            }
            if (str.equals("h2_prior_knowledge")) {
                return Protocol.H2_PRIOR_KNOWLEDGE;
            }
            if (str.equals("h2")) {
                return Protocol.HTTP_2;
            }
            if (str.equals("spdy/3.1")) {
                return Protocol.SPDY_3;
            }
            if (str.equals("quic")) {
                return Protocol.QUIC;
            }
            k8.j("Unexpected protocol: ".concat(str));
            return null;
        }
    }

    Protocol(String str) {
        this.j = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.j;
    }
}
