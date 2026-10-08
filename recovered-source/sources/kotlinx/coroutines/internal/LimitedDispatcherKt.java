package kotlinx.coroutines.internal;

import defpackage.fe;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LimitedDispatcherKt {
    public static final void a(int i) {
        if (i >= 1) {
            return;
        }
        fe.l(q.g(i, "Expected positive parallelism level, but got "));
    }
}
