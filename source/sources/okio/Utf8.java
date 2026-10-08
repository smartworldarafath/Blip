package okio;

import defpackage.fe;
import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Utf8 {
    public static long a(String str) {
        long j;
        char c;
        int length = str.length();
        str.getClass();
        long j2 = 0;
        if (length >= 0) {
            if (length <= str.length()) {
                int i = 0;
                while (i < length) {
                    char charAt = str.charAt(i);
                    if (charAt < 128) {
                        j2++;
                    } else {
                        if (charAt < 2048) {
                            j = 2;
                        } else if (charAt >= 55296 && charAt <= 57343) {
                            int i2 = i + 1;
                            if (i2 < length) {
                                c = str.charAt(i2);
                            } else {
                                c = 0;
                            }
                            if (charAt <= 56319 && c >= 56320 && c <= 57343) {
                                j2 += 4;
                                i += 2;
                            } else {
                                j2++;
                                i = i2;
                            }
                        } else {
                            j = 3;
                        }
                        j2 += j;
                    }
                    i++;
                }
                return j2;
            }
            StringBuilder j3 = jb.j("endIndex > string.length: ", length, " > ");
            j3.append(str.length());
            throw new IllegalArgumentException(j3.toString().toString());
        }
        fe.l(q.f(length, 0, "endIndex < beginIndex: ", " < "));
        return 0L;
    }
}
