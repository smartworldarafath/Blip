package coil3.compose.internal;

import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DeferredDispatchKt {
    public static final Job a(CoroutineScope coroutineScope, Function2 function2) {
        CoroutineDispatcher coroutineDispatcher;
        CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
        int i = UtilsKt.b;
        CoroutineContext.Element v = coroutineContext.v(ContinuationInterceptor.Key.j);
        if (v instanceof CoroutineDispatcher) {
            coroutineDispatcher = (CoroutineDispatcher) v;
        } else {
            coroutineDispatcher = null;
        }
        if (coroutineDispatcher != null && !coroutineDispatcher.equals(Dispatchers.b)) {
            return BuildersKt.b(CoroutineScopeKt.a(new ForwardingCoroutineContext(coroutineScope.getCoroutineContext())), new DeferredDispatchCoroutineDispatcher(coroutineDispatcher), CoroutineStart.m, function2);
        }
        return BuildersKt.b(coroutineScope, Dispatchers.b, CoroutineStart.m, function2);
    }
}
