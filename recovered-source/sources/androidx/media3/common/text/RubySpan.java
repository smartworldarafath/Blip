package androidx.media3.common.text;

import androidx.media3.common.util.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RubySpan implements LanguageFeatureSpan {
    public static final String c;
    public static final String d;
    public final String a;
    public final int b;

    static {
        String str = Util.a;
        c = Integer.toString(0, 36);
        d = Integer.toString(1, 36);
    }

    public RubySpan(String str, int i) {
        this.a = str;
        this.b = i;
    }
}
