package okhttp3.internal.http;

import java.net.ProtocolException;
import kotlin.text.StringsKt;
import okhttp3.Protocol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StatusLine {
    public final Protocol a;
    public final int b;
    public final String c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static StatusLine a(String str) {
            int i;
            String str2;
            boolean J = StringsKt.J(str, "HTTP/1.", false);
            Protocol protocol = Protocol.HTTP_1_0;
            if (J) {
                i = 9;
                if (str.length() >= 9 && str.charAt(8) == ' ') {
                    int charAt = str.charAt(7) - '0';
                    if (charAt != 0) {
                        if (charAt == 1) {
                            protocol = Protocol.HTTP_1_1;
                        } else {
                            throw new ProtocolException("Unexpected status line: ".concat(str));
                        }
                    }
                } else {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
            } else if (StringsKt.J(str, "ICY ", false)) {
                i = 4;
            } else {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int i2 = i + 3;
            if (str.length() >= i2) {
                try {
                    int parseInt = Integer.parseInt(str.substring(i, i2));
                    if (str.length() > i2) {
                        if (str.charAt(i2) == ' ') {
                            str2 = str.substring(i + 4);
                        } else {
                            throw new ProtocolException("Unexpected status line: ".concat(str));
                        }
                    } else {
                        str2 = "";
                    }
                    return new StatusLine(protocol, parseInt, str2);
                } catch (NumberFormatException unused) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
            }
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }

    public StatusLine(Protocol protocol, int i, String str) {
        this.a = protocol;
        this.b = i;
        this.c = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.a == Protocol.HTTP_1_0) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.b);
        sb.append(' ');
        sb.append(this.c);
        return sb.toString();
    }
}
