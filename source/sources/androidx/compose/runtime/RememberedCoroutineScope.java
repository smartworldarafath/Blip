package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RememberedCoroutineScope implements CoroutineScope, RememberObserver {
    public static final CoroutineContext m = new Object();
    public final CoroutineContext j;
    public final RememberedCoroutineScope k = this;
    public volatile CoroutineContext l;

    public RememberedCoroutineScope(CoroutineContext coroutineContext) {
        this.j = coroutineContext;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void a() {
        d();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void b() {
        d();
    }

    public final void d() {
        synchronized (this.k) {
            try {
                CoroutineContext coroutineContext = this.l;
                if (coroutineContext == null) {
                    this.l = m;
                } else {
                    JobKt.b(coroutineContext, new ForgottenCoroutineScopeException());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        CoroutineContext coroutineContext;
        CoroutineContext coroutineContext2;
        CoroutineContext coroutineContext3 = this.l;
        if (coroutineContext3 == null || coroutineContext3 == m) {
            CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) this.j.v(CompositionErrorContextImpl.k);
            if (compositionErrorContextImpl != null) {
                coroutineContext = new RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(compositionErrorContextImpl, this);
            } else {
                coroutineContext = EmptyCoroutineContext.j;
            }
            synchronized (this.k) {
                try {
                    CoroutineContext coroutineContext4 = this.l;
                    if (coroutineContext4 == null) {
                        CoroutineContext coroutineContext5 = this.j;
                        coroutineContext2 = coroutineContext5.A(new JobImpl((Job) coroutineContext5.v(Job.Key.j))).A(EmptyCoroutineContext.j).A(coroutineContext);
                    } else if (coroutineContext4 == m) {
                        CoroutineContext coroutineContext6 = this.j;
                        JobImpl jobImpl = new JobImpl((Job) coroutineContext6.v(Job.Key.j));
                        jobImpl.x(new ForgottenCoroutineScopeException());
                        coroutineContext2 = coroutineContext6.A(jobImpl).A(EmptyCoroutineContext.j).A(coroutineContext);
                    } else {
                        coroutineContext2 = coroutineContext4;
                    }
                    this.l = coroutineContext2;
                } catch (Throwable th) {
                    throw th;
                }
            }
            coroutineContext3 = coroutineContext2;
        }
        coroutineContext3.getClass();
        return coroutineContext3;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void c() {
    }
}
