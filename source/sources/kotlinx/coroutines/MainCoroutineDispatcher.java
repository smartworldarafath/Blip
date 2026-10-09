package kotlinx.coroutines;

import kotlinx.coroutines.internal.LimitedDispatcherKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MainCoroutineDispatcher extends CoroutineDispatcher {
    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher e1(int i) {
        LimitedDispatcherKt.a(i);
        return this;
    }
}
