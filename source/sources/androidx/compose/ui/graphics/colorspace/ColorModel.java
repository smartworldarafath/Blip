package androidx.compose.ui.graphics.colorspace;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ColorModel {
    public static final boolean a(long j, long j2) {
        if (j == j2) {
            return true;
        }
        return false;
    }

    public static String b(long j) {
        if (a(j, 12884901888L)) {
            return "Rgb";
        }
        if (a(j, 12884901889L)) {
            return "Xyz";
        }
        if (a(j, 12884901890L)) {
            return "Lab";
        }
        if (a(j, 17179869187L)) {
            return "Cmyk";
        }
        return "Unknown";
    }
}
