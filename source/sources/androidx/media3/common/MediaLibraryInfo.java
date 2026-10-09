package androidx.media3.common;

import java.util.HashSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MediaLibraryInfo {
    public static final HashSet a = new HashSet();
    public static String b = "media3.common";

    public static synchronized void a(String str) {
        synchronized (MediaLibraryInfo.class) {
            if (a.add(str)) {
                b += ", " + str;
            }
        }
    }
}
