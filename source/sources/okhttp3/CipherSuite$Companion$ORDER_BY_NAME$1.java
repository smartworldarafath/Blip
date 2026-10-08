package okhttp3;

import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CipherSuite$Companion$ORDER_BY_NAME$1 implements Comparator<String> {
    @Override // java.util.Comparator
    public final int compare(String str, String str2) {
        String str3 = str;
        String str4 = str2;
        str3.getClass();
        str4.getClass();
        int min = Math.min(str3.length(), str4.length());
        for (int i = 4; i < min; i++) {
            char charAt = str3.charAt(i);
            char charAt2 = str4.charAt(i);
            if (charAt != charAt2) {
                if (Intrinsics.b(charAt, charAt2) < 0) {
                    return -1;
                }
                return 1;
            }
        }
        int length = str3.length();
        int length2 = str4.length();
        if (length != length2) {
            if (length < length2) {
                return -1;
            }
            return 1;
        }
        return 0;
    }
}
