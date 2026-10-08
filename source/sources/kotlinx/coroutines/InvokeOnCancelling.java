package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class InvokeOnCancelling extends JobNode {
    public static final /* synthetic */ AtomicIntegerFieldUpdater o = AtomicIntegerFieldUpdater.newUpdater(InvokeOnCancelling.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile;
    public final Function1 n;

    public InvokeOnCancelling(Function1 function1) {
        this.n = function1;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean m() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void n(Throwable th) {
        if (o.compareAndSet(this, 0, 1)) {
            ((JobKt__JobKt$invokeOnCompletion$1) this.n).b(th);
        }
    }
}
