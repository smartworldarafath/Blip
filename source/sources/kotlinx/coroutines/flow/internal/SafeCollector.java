package kotlinx.coroutines.flow.internal;

import defpackage.d;
import defpackage.z6;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SafeCollector<T> extends ContinuationImpl implements FlowCollector<T>, CoroutineStackFrame {
    public final FlowCollector m;
    public final CoroutineContext n;
    public final int o;
    public CoroutineContext p;
    public Continuation q;

    public SafeCollector(FlowCollector flowCollector, CoroutineContext coroutineContext) {
        super(NoOpContinuation.j, EmptyCoroutineContext.j);
        this.m = flowCollector;
        this.n = coroutineContext;
        this.o = ((Number) coroutineContext.P0(0, new z6(19))).intValue();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame d() {
        Continuation continuation = this.q;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.Continuation
    public final CoroutineContext o() {
        CoroutineContext coroutineContext = this.p;
        if (coroutineContext == null) {
            return EmptyCoroutineContext.j;
        }
        return coroutineContext;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object r(Object obj, Continuation continuation) {
        try {
            Object x = x(continuation, obj);
            if (x == CoroutineSingletons.j) {
                return x;
            }
            return Unit.a;
        } catch (Throwable th) {
            this.p = new DownstreamExceptionContext(th, continuation.o());
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final StackTraceElement u() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Throwable a = Result.a(obj);
        if (a != null) {
            this.p = new DownstreamExceptionContext(a, o());
        }
        Continuation continuation = this.q;
        if (continuation != null) {
            continuation.g(obj);
        }
        return CoroutineSingletons.j;
    }

    public final Object x(Continuation continuation, Object obj) {
        CoroutineContext o = continuation.o();
        JobKt.c(o);
        CoroutineContext coroutineContext = this.p;
        if (coroutineContext != o) {
            if (!(coroutineContext instanceof DownstreamExceptionContext)) {
                if (((Number) o.P0(0, new d(18, this))).intValue() == this.o) {
                    this.p = o;
                } else {
                    throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.n + ",\n\t\tbut emission happened in " + o + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
                }
            } else {
                throw new IllegalStateException(StringsKt.V("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((DownstreamExceptionContext) coroutineContext).k + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
        }
        this.q = continuation;
        Function3 function3 = SafeCollectorKt.a;
        FlowCollector flowCollector = this.m;
        flowCollector.getClass();
        Object f = function3.f(flowCollector, obj, this);
        if (!Intrinsics.a(f, CoroutineSingletons.j)) {
            this.q = null;
        }
        return f;
    }
}
