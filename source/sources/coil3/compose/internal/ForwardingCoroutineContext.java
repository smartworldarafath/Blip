package coil3.compose.internal;

import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ForwardingCoroutineContext implements CoroutineContext {
    public final CoroutineContext j;

    public ForwardingCoroutineContext(CoroutineContext coroutineContext) {
        this.j = coroutineContext;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext A(CoroutineContext coroutineContext) {
        CoroutineDispatcher coroutineDispatcher;
        CoroutineContext A = this.j.A(coroutineContext);
        int i = UtilsKt.b;
        ContinuationInterceptor.Key key = ContinuationInterceptor.Key.j;
        CoroutineContext.Element v = v(key);
        CoroutineDispatcher coroutineDispatcher2 = null;
        if (v instanceof CoroutineDispatcher) {
            coroutineDispatcher = (CoroutineDispatcher) v;
        } else {
            coroutineDispatcher = null;
        }
        CoroutineContext.Element v2 = A.v(key);
        if (v2 instanceof CoroutineDispatcher) {
            coroutineDispatcher2 = (CoroutineDispatcher) v2;
        }
        if ((coroutineDispatcher instanceof DeferredDispatchCoroutineDispatcher) && coroutineDispatcher != coroutineDispatcher2) {
            ((DeferredDispatchCoroutineDispatcher) coroutineDispatcher).m = 0;
        }
        return new ForwardingCoroutineContext(A);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object P0(Object obj, Function2 function2) {
        return this.j.P0(obj, function2);
    }

    public final boolean equals(Object obj) {
        return Intrinsics.a(this.j, obj);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext g0(CoroutineContext.Key key) {
        CoroutineDispatcher coroutineDispatcher;
        CoroutineContext g0 = this.j.g0(key);
        int i = UtilsKt.b;
        ContinuationInterceptor.Key key2 = ContinuationInterceptor.Key.j;
        CoroutineContext.Element v = v(key2);
        CoroutineDispatcher coroutineDispatcher2 = null;
        if (v instanceof CoroutineDispatcher) {
            coroutineDispatcher = (CoroutineDispatcher) v;
        } else {
            coroutineDispatcher = null;
        }
        CoroutineContext.Element v2 = g0.v(key2);
        if (v2 instanceof CoroutineDispatcher) {
            coroutineDispatcher2 = (CoroutineDispatcher) v2;
        }
        if ((coroutineDispatcher instanceof DeferredDispatchCoroutineDispatcher) && coroutineDispatcher != coroutineDispatcher2) {
            ((DeferredDispatchCoroutineDispatcher) coroutineDispatcher).m = 0;
        }
        return new ForwardingCoroutineContext(g0);
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public final String toString() {
        return "ForwardingCoroutineContext(delegate=" + this.j + ")";
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element v(CoroutineContext.Key key) {
        return this.j.v(key);
    }
}
