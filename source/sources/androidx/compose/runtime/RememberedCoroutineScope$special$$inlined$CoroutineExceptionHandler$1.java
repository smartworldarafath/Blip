package androidx.compose.runtime;

import androidx.compose.runtime.tooling.ComposeStackTraceKt;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import defpackage.p0;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ CompositionErrorContextImpl k;
    public final /* synthetic */ RememberedCoroutineScope l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(CompositionErrorContextImpl compositionErrorContextImpl, RememberedCoroutineScope rememberedCoroutineScope) {
        super(CoroutineExceptionHandler.Key.j);
        this.k = compositionErrorContextImpl;
        this.l = rememberedCoroutineScope;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void Z0(Throwable th, CoroutineContext coroutineContext) {
        CompositionErrorContextImpl compositionErrorContextImpl = this.k;
        RememberedCoroutineScope rememberedCoroutineScope = this.l;
        ComposeStackTraceKt.a(th, new p0(9, compositionErrorContextImpl, rememberedCoroutineScope));
        CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) rememberedCoroutineScope.j.v(CoroutineExceptionHandler.Key.j);
        if (coroutineExceptionHandler != null) {
            coroutineExceptionHandler.Z0(th, coroutineContext);
            return;
        }
        throw th;
    }
}
