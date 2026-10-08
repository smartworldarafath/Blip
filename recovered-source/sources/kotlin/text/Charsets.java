package kotlin.text;

import java.nio.charset.Charset;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Charsets {
    public static final Charset a;
    public static final Charset b;
    public static final Charset c;

    static {
        Charset forName = Charset.forName("UTF-8");
        forName.getClass();
        a = forName;
        Charset.forName("UTF-16").getClass();
        Charset.forName("UTF-16BE").getClass();
        Charset.forName("UTF-16LE").getClass();
        Charset forName2 = Charset.forName("US-ASCII");
        forName2.getClass();
        b = forName2;
        Charset forName3 = Charset.forName("ISO-8859-1");
        forName3.getClass();
        c = forName3;
    }
}
