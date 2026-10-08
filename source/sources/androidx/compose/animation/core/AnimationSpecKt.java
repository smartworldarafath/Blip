package androidx.compose.animation.core;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AnimationSpecKt {
    public static InfiniteRepeatableSpec a(DurationBasedAnimationSpec durationBasedAnimationSpec, int i) {
        RepeatMode repeatMode = RepeatMode.k;
        if ((i & 2) != 0) {
            repeatMode = RepeatMode.j;
        }
        return new InfiniteRepeatableSpec(durationBasedAnimationSpec, repeatMode);
    }

    public static SpringSpec b(float f, float f2, Object obj, int i) {
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        if ((i & 2) != 0) {
            f2 = 1500.0f;
        }
        if ((i & 4) != 0) {
            obj = null;
        }
        return new SpringSpec(f, f2, obj);
    }

    public static TweenSpec c(int i, int i2, Easing easing, int i3) {
        if ((i3 & 1) != 0) {
            i = 300;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            easing = EasingKt.a;
        }
        return new TweenSpec(i, i2, easing);
    }
}
