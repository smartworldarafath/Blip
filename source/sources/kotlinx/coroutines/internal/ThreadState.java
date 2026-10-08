package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ThreadContextElement;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ThreadState {
    public final CoroutineContext a;
    public final Object[] b;
    public final ThreadContextElement[] c;
    public int d;

    public ThreadState(int i, CoroutineContext coroutineContext) {
        this.a = coroutineContext;
        this.b = new Object[i];
        this.c = new ThreadContextElement[i];
    }
}
