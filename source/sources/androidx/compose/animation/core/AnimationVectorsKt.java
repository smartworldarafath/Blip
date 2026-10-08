package androidx.compose.animation.core;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AnimationVectorsKt {
    public static final AnimationVector a(AnimationVector animationVector) {
        AnimationVector c = animationVector.c();
        int b = c.b();
        for (int i = 0; i < b; i++) {
            c.e(i, animationVector.a(i));
        }
        return c;
    }
}
