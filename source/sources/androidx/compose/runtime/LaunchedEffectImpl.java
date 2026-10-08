package androidx.compose.runtime;

import androidx.compose.runtime.tooling.ComposeStackTraceKt;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import defpackage.p0;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LaunchedEffectImpl implements RememberObserver, CoroutineExceptionHandler {
    public final CoroutineContext j;
    public final Function2 k;
    public final ContextScope l;
    public Job m;

    public LaunchedEffectImpl(CoroutineContext coroutineContext, Function2 function2) {
        this.j = coroutineContext;
        this.k = function2;
        this.l = CoroutineScopeKt.a(coroutineContext.A(this));
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext A(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.c(this, coroutineContext);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object P0(Object obj, Function2 function2) {
        return function2.n(obj, this);
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void Z0(Throwable th, CoroutineContext coroutineContext) {
        CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) coroutineContext.v(CompositionErrorContextImpl.k);
        if (compositionErrorContextImpl != null) {
            ComposeStackTraceKt.a(th, new p0(9, compositionErrorContextImpl, this));
        }
        CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) this.j.v(CoroutineExceptionHandler.Key.j);
        if (coroutineExceptionHandler != null) {
            coroutineExceptionHandler.Z0(th, coroutineContext);
            return;
        }
        throw th;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void a() {
        Job job = this.m;
        if (job != null) {
            job.n(new LeftCompositionCancellationException());
        }
        this.m = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void b() {
        Job job = this.m;
        if (job != null) {
            job.n(new LeftCompositionCancellationException());
        }
        this.m = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void c() {
        Job job = this.m;
        if (job != null) {
            CancellationException cancellationException = new CancellationException("Old job was still running!");
            cancellationException.initCause(null);
            ((JobSupport) job).n(cancellationException);
        }
        this.m = BuildersKt.c(this.l, null, null, this.k, 3);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext g0(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return CoroutineExceptionHandler.Key.j;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element v(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.a(this, key);
    }
}
