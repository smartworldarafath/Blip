package net.blip.shared;

import defpackage.jb;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class String_formatAsKt {
    public static final String a(long j) {
        String str;
        int i;
        if (j <= 0) {
            return "0 B";
        }
        double d = j;
        int log10 = (int) (Math.log10(d) / Math.log10(1024.0d));
        String[] strArr = {"B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"};
        if (log10 >= 0 && log10 < 9) {
            str = strArr[log10];
        } else {
            str = null;
        }
        if (str == null) {
            return "<out of bounds>";
        }
        double pow = d / Math.pow(1024.0d, log10);
        if (!str.equals("B") && !str.equals("KB")) {
            i = 1;
        } else {
            i = 0;
        }
        return jb.g(kotlin.text.StringsKt.C(String.format(jb.d("%.", i, "f"), Arrays.copyOf(new Object[]{Float.valueOf((float) pow)}, 1)), ".0"), " ", str);
    }
}
