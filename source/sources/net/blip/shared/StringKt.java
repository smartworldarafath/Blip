package net.blip.shared;

import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StringKt {
    public static final String a(String str, String str2, List list) {
        str.getClass();
        int length = str.length();
        String str3 = "";
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (list.contains(Character.valueOf(charAt))) {
                str3 = str3.concat(str2);
            } else {
                str3 = str3 + charAt;
            }
        }
        return str3;
    }
}
