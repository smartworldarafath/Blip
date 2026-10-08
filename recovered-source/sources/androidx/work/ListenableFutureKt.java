package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.concurrent.futures.ResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.e;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ListenableFutureKt {
    public static ListenableFuture a(final CoroutineContext coroutineContext, final Function2 function2) {
        final CoroutineStart coroutineStart = CoroutineStart.j;
        coroutineContext.getClass();
        return CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: androidx.work.a
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object e(CallbackToFutureAdapter.Completer completer) {
                Job.Key key = Job.Key.j;
                CoroutineContext coroutineContext2 = CoroutineContext.this;
                e eVar = new e(10, (Job) coroutineContext2.v(key));
                DirectExecutor directExecutor = DirectExecutor.j;
                ResolvableFuture resolvableFuture = completer.c;
                if (resolvableFuture != null) {
                    resolvableFuture.a(eVar, directExecutor);
                }
                return BuildersKt.c(CoroutineScopeKt.a(coroutineContext2), null, coroutineStart, new ListenableFutureKt$launchFuture$1$2(function2, completer, null), 1);
            }
        });
    }
}
