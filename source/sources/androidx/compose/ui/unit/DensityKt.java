package androidx.compose.ui.unit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DensityKt {
    public static final Density a(float f, float f2) {
        return new DensityImpl(f, f2);
    }

    public static Density b(float f) {
        return new DensityImpl(f, 1.0f);
    }
}
