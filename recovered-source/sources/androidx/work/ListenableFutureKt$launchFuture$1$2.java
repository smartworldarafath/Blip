package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.work.ListenableFutureKt$launchFuture$1$2", f = "ListenableFuture.kt", l = {42}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ListenableFutureKt$launchFuture$1$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Function2 p;
    public final /* synthetic */ CallbackToFutureAdapter.Completer q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListenableFutureKt$launchFuture$1$2(Function2 function2, CallbackToFutureAdapter.Completer completer, Continuation continuation) {
        super(2, continuation);
        this.p = function2;
        this.q = completer;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ListenableFutureKt$launchFuture$1$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ListenableFutureKt$launchFuture$1$2 listenableFutureKt$launchFuture$1$2 = new ListenableFutureKt$launchFuture$1$2(this.p, this.q, continuation);
        listenableFutureKt$launchFuture$1$2.o = obj;
        return listenableFutureKt$launchFuture$1$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        CallbackToFutureAdapter.Completer completer = this.q;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.o;
                Function2 function2 = this.p;
                this.n = 1;
                obj = function2.n(coroutineScope, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            completer.a(obj);
        } catch (CancellationException unused) {
            completer.b();
        } catch (Throwable th) {
            completer.c(th);
        }
        return Unit.a;
    }
}
