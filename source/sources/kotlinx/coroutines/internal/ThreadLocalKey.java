package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ThreadLocalKey implements CoroutineContext.Key<ThreadLocalElement<?>> {
    public final ThreadLocal j;

    public ThreadLocalKey(ThreadLocal threadLocal) {
        this.j = threadLocal;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ThreadLocalKey) && Intrinsics.a(this.j, ((ThreadLocalKey) obj).j)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public final String toString() {
        return "ThreadLocalKey(threadLocal=" + this.j + ')';
    }
}
