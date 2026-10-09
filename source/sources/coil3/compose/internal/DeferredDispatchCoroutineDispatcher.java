package coil3.compose.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DeferredDispatchCoroutineDispatcher extends CoroutineDispatcher {
    public static final /* synthetic */ AtomicIntegerFieldUpdater n = AtomicIntegerFieldUpdater.newUpdater(DeferredDispatchCoroutineDispatcher.class, "m");
    public final CoroutineDispatcher l;
    public volatile /* synthetic */ int m = 1;

    public DeferredDispatchCoroutineDispatcher(CoroutineDispatcher coroutineDispatcher) {
        this.l = coroutineDispatcher;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void b1(CoroutineContext coroutineContext, Runnable runnable) {
        f1().b1(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void c1(CoroutineContext coroutineContext, Runnable runnable) {
        f1().c1(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final boolean d1(CoroutineContext coroutineContext) {
        return f1().d1(coroutineContext);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher e1(int i) {
        return f1().e1(i);
    }

    public final CoroutineDispatcher f1() {
        if (n.get(this) == 1) {
            return Dispatchers.b;
        }
        return this.l;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return "DeferredDispatchCoroutineDispatcher(delegate=" + this.l + ")";
    }
}
