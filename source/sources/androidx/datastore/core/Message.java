package androidx.datastore.core;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Message<T> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Update<T> extends Message<T> {
        public final Function2 a;
        public final CompletableDeferred b;
        public final State c;
        public final CoroutineContext d;

        public Update(Function2 function2, CompletableDeferred completableDeferred, State state, CoroutineContext coroutineContext) {
            coroutineContext.getClass();
            this.a = function2;
            this.b = completableDeferred;
            this.c = state;
            this.d = coroutineContext;
        }
    }
}
