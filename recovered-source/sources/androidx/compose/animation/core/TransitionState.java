package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransitionState<S> {
    public final MutableState a = SnapshotStateKt.g(Boolean.FALSE);

    public abstract Object a();

    public abstract Object b();

    public abstract void c(Object obj);

    public abstract void d(Transition transition);

    public abstract void e();
}
