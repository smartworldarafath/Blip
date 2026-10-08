package androidx.compose.ui.graphics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ColorFilter {
    public final android.graphics.ColorFilter a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static BlendModeColorFilter a(long j) {
            return new BlendModeColorFilter(5, j);
        }
    }

    public ColorFilter(android.graphics.ColorFilter colorFilter) {
        this.a = colorFilter;
    }
}
