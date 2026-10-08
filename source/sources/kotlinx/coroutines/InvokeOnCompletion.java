package kotlinx.coroutines;

import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InvokeOnCompletion extends JobNode {
    public final Function1 n;

    public InvokeOnCompletion(Function1 function1) {
        this.n = function1;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean m() {
        return false;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void n(Throwable th) {
        this.n.b(th);
    }
}
