package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ThreadContextElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ThreadLocalElement<T> implements ThreadContextElement<T> {
    public final Object j;
    public final ThreadLocal k;
    public final ThreadLocalKey l;

    public ThreadLocalElement(Object obj, ThreadLocal threadLocal) {
        this.j = obj;
        this.k = threadLocal;
        this.l = new ThreadLocalKey(threadLocal);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext A(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.c(this, coroutineContext);
    }

    @Override // kotlinx.coroutines.ThreadContextElement
    public final void K0(Object obj) {
        this.k.set(obj);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object P0(Object obj, Function2 function2) {
        return function2.n(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext g0(CoroutineContext.Key key) {
        if (this.l.equals(key)) {
            return EmptyCoroutineContext.j;
        }
        return this;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return this.l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.ThreadContextElement
    public final Object o0() {
        ThreadLocal threadLocal = this.k;
        Object obj = threadLocal.get();
        threadLocal.set(this.j);
        return obj;
    }

    public final String toString() {
        return "ThreadLocal(value=" + this.j + ", threadLocal = " + this.k + ')';
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element v(CoroutineContext.Key key) {
        if (this.l.equals(key)) {
            return this;
        }
        return null;
    }
}
