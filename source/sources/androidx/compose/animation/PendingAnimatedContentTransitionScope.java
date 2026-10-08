package androidx.compose.animation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PendingAnimatedContentTransitionScope<S> implements AnimatedContentTransitionScope<S> {
    public final /* synthetic */ AnimatedContentTransitionScope a;
    public final Object b;
    public final Object c;

    public PendingAnimatedContentTransitionScope(AnimatedContentTransitionScope animatedContentTransitionScope, Object obj, Object obj2) {
        this.a = animatedContentTransitionScope;
        this.b = obj;
        this.c = obj2;
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public final Object a() {
        return this.b;
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public final boolean b(Object obj, Object obj2) {
        return this.a.b(obj, obj2);
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public final Object c() {
        return this.c;
    }
}
