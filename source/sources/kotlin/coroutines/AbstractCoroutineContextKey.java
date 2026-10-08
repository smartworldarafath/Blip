package kotlin.coroutines;

import kotlin.Deprecated;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.CoroutineContext.Element;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public abstract class AbstractCoroutineContextKey<B extends CoroutineContext.Element, E extends B> implements CoroutineContext.Key<E> {
    public final Function1 j;
    public final CoroutineContext.Key k;

    public AbstractCoroutineContextKey(CoroutineContext.Key key, Function1 function1) {
        key.getClass();
        this.j = function1;
        this.k = key instanceof AbstractCoroutineContextKey ? ((AbstractCoroutineContextKey) key).k : key;
    }
}
