package androidx.compose.animation.core;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class KeyframeBaseEntity<T> {
    public final Float a;
    public Easing b;

    public KeyframeBaseEntity(Float f, Easing easing) {
        this.a = f;
        this.b = easing;
    }
}
