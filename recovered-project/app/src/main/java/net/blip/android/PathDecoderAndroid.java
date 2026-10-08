package net.blip.android;

import kotlin.text.StringsKt;
import net.blip.libblip.PathUtil;
import net.blip.libblip.SystemPaths;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PathDecoderAndroid {
    public final SystemPaths a;

    public PathDecoderAndroid(SystemPathsAndroid systemPathsAndroid) {
        systemPathsAndroid.getClass();
        this.a = systemPathsAndroid;
    }

    public final String a(String str) {
        String B = StringsKt.B(str, "documents://");
        String str2 = null;
        if (B.equals(str)) {
            B = null;
        }
        SystemPaths systemPaths = this.a;
        if (B != null) {
            ((SystemPathsAndroid) systemPaths).getClass();
            str = PathUtil.a(SystemPathsAndroid.c, new String[]{B});
        } else {
            String B2 = StringsKt.B(str, "downloads://");
            if (!B2.equals(str)) {
                str2 = B2;
            }
            if (str2 != null) {
                ((SystemPathsAndroid) systemPaths).getClass();
                str = PathUtil.a(SystemPathsAndroid.b, new String[]{str2});
            }
        }
        if (StringsKt.J(str, "/", false)) {
            return "file://".concat(str);
        }
        return str;
    }
}
