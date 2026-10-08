package kotlinx.coroutines.flow;

import defpackage.u2;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StateFlowImpl<T> extends AbstractSharedFlow<StateFlowSlot> implements MutableStateFlow<T>, CancellableFlow<T>, FusibleFlow<T> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater o = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;
    public int n;

    public StateFlowImpl(Object obj) {
        this._state$volatile = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
    
        if (r14.equals(r15) != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f0, code lost:
    
        if (r9 == r1) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0074, code lost:
    
        if (r15 != r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007c A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0034, B:14:0x0074, B:16:0x007c, B:19:0x0083, B:20:0x0087, B:24:0x008a, B:26:0x00ab, B:29:0x00bb, B:30:0x00d7, B:36:0x00e7, B:32:0x00de, B:35:0x00e4, B:45:0x0090, B:48:0x0097, B:56:0x004b, B:58:0x0056, B:59:0x0064), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bb A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0034, B:14:0x0074, B:16:0x007c, B:19:0x0083, B:20:0x0087, B:24:0x008a, B:26:0x00ab, B:29:0x00bb, B:30:0x00d7, B:36:0x00e7, B:32:0x00de, B:35:0x00e4, B:45:0x0090, B:48:0x0097, B:56:0x004b, B:58:0x0056, B:59:0x0064), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00ba -> B:14:0x0074). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        StateFlowImpl$collect$1 stateFlowImpl$collect$1;
        CoroutineSingletons coroutineSingletons;
        int i;
        StateFlowSlot stateFlowSlot;
        FlowCollector flowCollector2;
        Job job;
        Object obj;
        Object andSet;
        Object obj2;
        Object obj3;
        try {
            if (continuation instanceof StateFlowImpl$collect$1) {
                stateFlowImpl$collect$1 = (StateFlowImpl$collect$1) continuation;
                int i2 = stateFlowImpl$collect$1.t;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    stateFlowImpl$collect$1.t = i2 - Integer.MIN_VALUE;
                    Object obj4 = stateFlowImpl$collect$1.r;
                    coroutineSingletons = CoroutineSingletons.j;
                    i = stateFlowImpl$collect$1.t;
                    if (i == 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i == 3) {
                                    obj = stateFlowImpl$collect$1.p;
                                    job = stateFlowImpl$collect$1.o;
                                    stateFlowSlot = (StateFlowSlot) stateFlowImpl$collect$1.n;
                                    flowCollector2 = stateFlowImpl$collect$1.m;
                                    ResultKt.b(obj4);
                                    obj2 = o.get(this);
                                    if (job != null && !job.h()) {
                                        throw job.R();
                                    }
                                    if (obj2 == NullSurrogateKt.a) {
                                        obj3 = null;
                                    } else {
                                        obj3 = obj2;
                                    }
                                    stateFlowImpl$collect$1.m = flowCollector2;
                                    stateFlowImpl$collect$1.n = stateFlowSlot;
                                    stateFlowImpl$collect$1.o = job;
                                    stateFlowImpl$collect$1.p = null;
                                    stateFlowImpl$collect$1.q = obj2;
                                    stateFlowImpl$collect$1.t = 2;
                                    if (flowCollector2.r(obj3, stateFlowImpl$collect$1) != coroutineSingletons) {
                                        obj = obj2;
                                        AtomicReference atomicReference = stateFlowSlot.a;
                                        Symbol symbol = StateFlowKt.a;
                                        andSet = atomicReference.getAndSet(symbol);
                                        andSet.getClass();
                                        if (andSet == StateFlowKt.b) {
                                            stateFlowImpl$collect$1.m = flowCollector2;
                                            stateFlowImpl$collect$1.n = stateFlowSlot;
                                            stateFlowImpl$collect$1.o = job;
                                            stateFlowImpl$collect$1.p = obj;
                                            stateFlowImpl$collect$1.q = null;
                                            stateFlowImpl$collect$1.t = 3;
                                            Unit unit = Unit.a;
                                            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(stateFlowImpl$collect$1));
                                            cancellableContinuationImpl.v();
                                            AtomicReference atomicReference2 = stateFlowSlot.a;
                                            while (true) {
                                                if (atomicReference2.compareAndSet(symbol, cancellableContinuationImpl)) {
                                                    break;
                                                }
                                                if (atomicReference2.get() != symbol) {
                                                    cancellableContinuationImpl.g(unit);
                                                    break;
                                                }
                                            }
                                            Object u = cancellableContinuationImpl.u();
                                            if (u == CoroutineSingletons.j) {
                                            }
                                        }
                                        obj2 = o.get(this);
                                        if (job != null) {
                                            throw job.R();
                                        }
                                        if (obj2 == NullSurrogateKt.a) {
                                        }
                                        stateFlowImpl$collect$1.m = flowCollector2;
                                        stateFlowImpl$collect$1.n = stateFlowSlot;
                                        stateFlowImpl$collect$1.o = job;
                                        stateFlowImpl$collect$1.p = null;
                                        stateFlowImpl$collect$1.q = obj2;
                                        stateFlowImpl$collect$1.t = 2;
                                        if (flowCollector2.r(obj3, stateFlowImpl$collect$1) != coroutineSingletons) {
                                        }
                                    } else {
                                        return coroutineSingletons;
                                    }
                                } else {
                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                            } else {
                                obj = stateFlowImpl$collect$1.q;
                                job = stateFlowImpl$collect$1.o;
                                stateFlowSlot = (StateFlowSlot) stateFlowImpl$collect$1.n;
                                flowCollector2 = stateFlowImpl$collect$1.m;
                                ResultKt.b(obj4);
                                AtomicReference atomicReference3 = stateFlowSlot.a;
                                Symbol symbol2 = StateFlowKt.a;
                                andSet = atomicReference3.getAndSet(symbol2);
                                andSet.getClass();
                                if (andSet == StateFlowKt.b) {
                                }
                                obj2 = o.get(this);
                                if (job != null) {
                                }
                                if (obj2 == NullSurrogateKt.a) {
                                }
                                stateFlowImpl$collect$1.m = flowCollector2;
                                stateFlowImpl$collect$1.n = stateFlowSlot;
                                stateFlowImpl$collect$1.o = job;
                                stateFlowImpl$collect$1.p = null;
                                stateFlowImpl$collect$1.q = obj2;
                                stateFlowImpl$collect$1.t = 2;
                                if (flowCollector2.r(obj3, stateFlowImpl$collect$1) != coroutineSingletons) {
                                }
                            }
                        } else {
                            stateFlowSlot = (StateFlowSlot) stateFlowImpl$collect$1.n;
                            flowCollector = stateFlowImpl$collect$1.m;
                            ResultKt.b(obj4);
                        }
                    } else {
                        ResultKt.b(obj4);
                        stateFlowSlot = (StateFlowSlot) c();
                    }
                    CoroutineContext coroutineContext = stateFlowImpl$collect$1.k;
                    coroutineContext.getClass();
                    flowCollector2 = flowCollector;
                    job = (Job) coroutineContext.v(Job.Key.j);
                    obj = null;
                    obj2 = o.get(this);
                    if (job != null) {
                    }
                    if (obj2 == NullSurrogateKt.a) {
                    }
                    stateFlowImpl$collect$1.m = flowCollector2;
                    stateFlowImpl$collect$1.n = stateFlowSlot;
                    stateFlowImpl$collect$1.o = job;
                    stateFlowImpl$collect$1.p = null;
                    stateFlowImpl$collect$1.q = obj2;
                    stateFlowImpl$collect$1.t = 2;
                    if (flowCollector2.r(obj3, stateFlowImpl$collect$1) != coroutineSingletons) {
                    }
                }
            }
            if (i == 0) {
            }
            CoroutineContext coroutineContext2 = stateFlowImpl$collect$1.k;
            coroutineContext2.getClass();
            flowCollector2 = flowCollector;
            job = (Job) coroutineContext2.v(Job.Key.j);
            obj = null;
            obj2 = o.get(this);
            if (job != null) {
            }
            if (obj2 == NullSurrogateKt.a) {
            }
            stateFlowImpl$collect$1.m = flowCollector2;
            stateFlowImpl$collect$1.n = stateFlowSlot;
            stateFlowImpl$collect$1.o = job;
            stateFlowImpl$collect$1.p = null;
            stateFlowImpl$collect$1.q = obj2;
            stateFlowImpl$collect$1.t = 2;
            if (flowCollector2.r(obj3, stateFlowImpl$collect$1) != coroutineSingletons) {
            }
        } catch (Throwable th) {
            g(stateFlowSlot);
            throw th;
        }
        stateFlowImpl$collect$1 = new StateFlowImpl$collect$1(this, continuation);
        Object obj42 = stateFlowImpl$collect$1.r;
        coroutineSingletons = CoroutineSingletons.j;
        i = stateFlowImpl$collect$1.t;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow b(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        if (((i < 0 || i >= 2) && i != -2) || bufferOverflow != BufferOverflow.k) {
            return SharedFlowKt.c(this, coroutineContext, i, bufferOverflow);
        }
        return this;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot d() {
        return new StateFlowSlot();
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public final boolean e(Object obj, Object obj2) {
        Symbol symbol = NullSurrogateKt.a;
        if (obj == null) {
            obj = symbol;
        }
        if (obj2 == null) {
            obj2 = symbol;
        }
        return j(obj, obj2);
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot[] f() {
        return new StateFlowSlot[2];
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow, kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        Object obj = o.get(this);
        if (obj == NullSurrogateKt.a) {
            return null;
        }
        return obj;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final boolean h(Object obj) {
        j(null, obj);
        return true;
    }

    public final boolean j(Object obj, Object obj2) {
        int i;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Symbol symbol;
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = o;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj != null && !Intrinsics.a(obj3, obj)) {
                return false;
            }
            if (Intrinsics.a(obj3, obj2)) {
                return true;
            }
            atomicReferenceFieldUpdater.set(this, obj2);
            int i2 = this.n;
            if ((i2 & 1) == 0) {
                int i3 = i2 + 1;
                this.n = i3;
                AbstractSharedFlowSlot[] abstractSharedFlowSlotArr2 = this.j;
                while (true) {
                    StateFlowSlot[] stateFlowSlotArr = (StateFlowSlot[]) abstractSharedFlowSlotArr2;
                    if (stateFlowSlotArr != null) {
                        for (StateFlowSlot stateFlowSlot : stateFlowSlotArr) {
                            if (stateFlowSlot != null) {
                                AtomicReference atomicReference = stateFlowSlot.a;
                                while (true) {
                                    Object obj4 = atomicReference.get();
                                    if (obj4 != null && obj4 != (symbol = StateFlowKt.b)) {
                                        Symbol symbol2 = StateFlowKt.a;
                                        if (obj4 == symbol2) {
                                            while (!atomicReference.compareAndSet(obj4, symbol)) {
                                                if (atomicReference.get() != obj4) {
                                                    break;
                                                }
                                            }
                                        } else {
                                            while (!atomicReference.compareAndSet(obj4, symbol2)) {
                                                if (atomicReference.get() != obj4) {
                                                    break;
                                                }
                                            }
                                            ((CancellableContinuationImpl) obj4).g(Unit.a);
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    synchronized (this) {
                        i = this.n;
                        if (i == i3) {
                            this.n = i3 + 1;
                            return true;
                        }
                        abstractSharedFlowSlotArr = this.j;
                    }
                    abstractSharedFlowSlotArr2 = abstractSharedFlowSlotArr;
                    i3 = i;
                }
            } else {
                this.n = i2 + 2;
                return true;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object r(Object obj, Continuation continuation) {
        setValue(obj);
        return Unit.a;
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public final void setValue(Object obj) {
        if (obj == null) {
            obj = NullSurrogateKt.a;
        }
        j(null, obj);
    }
}
