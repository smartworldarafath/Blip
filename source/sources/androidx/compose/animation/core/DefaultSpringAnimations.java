package androidx.compose.animation.core;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultSpringAnimations implements Animations {
    public static final DefaultSpringAnimations a = new Object();
    public static final FloatSpringSpec b = new FloatSpringSpec(1.0f, 1500.0f);

    @Override // androidx.compose.animation.core.Animations
    public final FloatAnimationSpec get(int i) {
        return b;
    }
}
