package kotlinx.coroutines;

import defpackage.a7;
import kotlin.Deprecated;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.LimitedDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CoroutineDispatcher extends AbstractCoroutineContextElement implements ContinuationInterceptor {
    public static final Key k = new AbstractCoroutineContextKey(ContinuationInterceptor.Key.j, new a7(0));

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @Deprecated
    /* loaded from: classes.dex */
    public static final class Key extends AbstractCoroutineContextKey<ContinuationInterceptor, CoroutineDispatcher> {
    }

    public CoroutineDispatcher() {
        super(ContinuationInterceptor.Key.j);
    }

    public abstract void b1(CoroutineContext coroutineContext, Runnable runnable);

    public void c1(CoroutineContext coroutineContext, Runnable runnable) {
        DispatchedContinuationKt.b(this, coroutineContext, runnable);
    }

    public boolean d1(CoroutineContext coroutineContext) {
        return !(this instanceof Unconfined);
    }

    public CoroutineDispatcher e1(int i) {
        LimitedDispatcherKt.a(i);
        return new LimitedDispatcher(this, i);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public final CoroutineContext g0(CoroutineContext.Key key) {
        key.getClass();
        if (key instanceof AbstractCoroutineContextKey) {
            AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
            CoroutineContext.Key key2 = this.j;
            if (key2 != abstractCoroutineContextKey && abstractCoroutineContextKey.k != key2) {
                return this;
            }
            if (((CoroutineContext.Element) abstractCoroutineContextKey.j.b(this)) == null) {
                return this;
            }
        } else if (ContinuationInterceptor.Key.j != key) {
            return this;
        }
        return EmptyCoroutineContext.j;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + DebugStringsKt.a(this);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element v(CoroutineContext.Key key) {
        CoroutineContext.Element element;
        key.getClass();
        if (key instanceof AbstractCoroutineContextKey) {
            AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
            CoroutineContext.Key key2 = this.j;
            if ((key2 == abstractCoroutineContextKey || abstractCoroutineContextKey.k == key2) && (element = (CoroutineContext.Element) abstractCoroutineContextKey.j.b(this)) != null) {
                return element;
            }
        } else if (ContinuationInterceptor.Key.j == key) {
            return this;
        }
        return null;
    }
}
