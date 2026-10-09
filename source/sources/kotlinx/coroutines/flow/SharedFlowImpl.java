package kotlinx.coroutines.flow;

import defpackage.k8;
import defpackage.u2;
import java.util.Arrays;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SharedFlowImpl<T> extends AbstractSharedFlow<SharedFlowSlot> implements MutableSharedFlow<T>, CancellableFlow<T>, FusibleFlow<T> {
    public final int n;
    public final int o;
    public final BufferOverflow p;
    public Object[] q;
    public long r;
    public long s;
    public int t;
    public int u;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Emitter implements DisposableHandle {
        public final SharedFlowImpl j;
        public final long k;
        public final Object l;
        public final CancellableContinuationImpl m;

        public Emitter(SharedFlowImpl sharedFlowImpl, long j, Object obj, CancellableContinuationImpl cancellableContinuationImpl) {
            this.j = sharedFlowImpl;
            this.k = j;
            this.l = obj;
            this.m = cancellableContinuationImpl;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final void a() {
            SharedFlowImpl sharedFlowImpl = this.j;
            synchronized (sharedFlowImpl) {
                if (this.k >= sharedFlowImpl.p()) {
                    Object[] objArr = sharedFlowImpl.q;
                    objArr.getClass();
                    long j = this.k;
                    if (objArr[((int) j) & (objArr.length - 1)] == this) {
                        SharedFlowKt.b(objArr, j, SharedFlowKt.a);
                        sharedFlowImpl.k();
                    }
                }
            }
        }
    }

    public SharedFlowImpl(int i, int i2, BufferOverflow bufferOverflow) {
        this.n = i;
        this.o = i2;
        this.p = bufferOverflow;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0080 A[Catch: all -> 0x0038, TryCatch #1 {all -> 0x0038, blocks: (B:14:0x0031, B:18:0x0078, B:20:0x0080, B:29:0x0093, B:32:0x009a, B:33:0x009e, B:35:0x009f, B:41:0x0049), top: B:7:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* JADX WARN: Type inference failed for: r5v1, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlow] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [kotlinx.coroutines.flow.SharedFlowImpl] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r9v0, types: [kotlinx.coroutines.flow.FlowCollector] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v2, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [kotlinx.coroutines.flow.SharedFlowSlot] */
    /* JADX WARN: Type inference failed for: r9v8, types: [kotlinx.coroutines.flow.SharedFlowSlot] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ad -> B:15:0x0034). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void l(SharedFlowImpl sharedFlowImpl, FlowCollector flowCollector, Continuation continuation) {
        SharedFlowImpl$collect$1 sharedFlowImpl$collect$1;
        CoroutineSingletons coroutineSingletons;
        int i;
        ?? r5;
        FlowCollector flowCollector2;
        Job job;
        Job job2;
        FlowCollector flowCollector3;
        Object u;
        SharedFlowSlot sharedFlowSlot;
        try {
            try {
                if (continuation instanceof SharedFlowImpl$collect$1) {
                    sharedFlowImpl$collect$1 = (SharedFlowImpl$collect$1) continuation;
                    int i2 = sharedFlowImpl$collect$1.s;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        sharedFlowImpl$collect$1.s = i2 - Integer.MIN_VALUE;
                        Object obj = sharedFlowImpl$collect$1.q;
                        coroutineSingletons = CoroutineSingletons.j;
                        i = sharedFlowImpl$collect$1.s;
                        if (i == 0) {
                            if (i != 1) {
                                if (i != 2) {
                                    if (i == 3) {
                                        job2 = sharedFlowImpl$collect$1.p;
                                        SharedFlowSlot sharedFlowSlot2 = sharedFlowImpl$collect$1.o;
                                        flowCollector3 = sharedFlowImpl$collect$1.n;
                                        SharedFlowImpl sharedFlowImpl2 = sharedFlowImpl$collect$1.m;
                                        ResultKt.b(obj);
                                        SharedFlowImpl sharedFlowImpl3 = sharedFlowImpl2;
                                        SharedFlowSlot sharedFlowSlot3 = sharedFlowSlot2;
                                        flowCollector2 = flowCollector3;
                                        job = job2;
                                        sharedFlowImpl = sharedFlowImpl3;
                                        sharedFlowSlot = sharedFlowSlot3;
                                        r5 = sharedFlowImpl;
                                        job2 = job;
                                        flowCollector3 = flowCollector2;
                                        flowCollector = sharedFlowSlot;
                                        do {
                                            u = r5.u(flowCollector);
                                            if (u == SharedFlowKt.a) {
                                                if (job2 != null && !job2.h()) {
                                                    throw job2.R();
                                                }
                                                sharedFlowImpl$collect$1.m = r5;
                                                sharedFlowImpl$collect$1.n = flowCollector3;
                                                sharedFlowImpl$collect$1.o = flowCollector;
                                                sharedFlowImpl$collect$1.p = job2;
                                                sharedFlowImpl$collect$1.s = 3;
                                                sharedFlowImpl3 = r5;
                                                sharedFlowSlot3 = flowCollector;
                                                if (flowCollector3.r(u, sharedFlowImpl$collect$1) == coroutineSingletons) {
                                                    return;
                                                }
                                                flowCollector2 = flowCollector3;
                                                job = job2;
                                                sharedFlowImpl = sharedFlowImpl3;
                                                sharedFlowSlot = sharedFlowSlot3;
                                                r5 = sharedFlowImpl;
                                                job2 = job;
                                                flowCollector3 = flowCollector2;
                                                flowCollector = sharedFlowSlot;
                                                u = r5.u(flowCollector);
                                                if (u == SharedFlowKt.a) {
                                                    sharedFlowImpl$collect$1.m = r5;
                                                    sharedFlowImpl$collect$1.n = flowCollector3;
                                                    sharedFlowImpl$collect$1.o = flowCollector;
                                                    sharedFlowImpl$collect$1.p = job2;
                                                    sharedFlowImpl$collect$1.s = 2;
                                                }
                                            }
                                        } while (r5.j(flowCollector, sharedFlowImpl$collect$1) != coroutineSingletons);
                                        return;
                                    }
                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                    return;
                                }
                                job2 = sharedFlowImpl$collect$1.p;
                                SharedFlowSlot sharedFlowSlot4 = sharedFlowImpl$collect$1.o;
                                flowCollector3 = sharedFlowImpl$collect$1.n;
                                SharedFlowImpl sharedFlowImpl4 = sharedFlowImpl$collect$1.m;
                                ResultKt.b(obj);
                                r5 = sharedFlowImpl4;
                                flowCollector = sharedFlowSlot4;
                                do {
                                    u = r5.u(flowCollector);
                                    if (u == SharedFlowKt.a) {
                                    }
                                } while (r5.j(flowCollector, sharedFlowImpl$collect$1) != coroutineSingletons);
                                return;
                            }
                            flowCollector = sharedFlowImpl$collect$1.o;
                            FlowCollector flowCollector4 = sharedFlowImpl$collect$1.n;
                            SharedFlowImpl sharedFlowImpl5 = sharedFlowImpl$collect$1.m;
                            try {
                                ResultKt.b(obj);
                                flowCollector2 = flowCollector4;
                                sharedFlowImpl = sharedFlowImpl5;
                                flowCollector = flowCollector;
                            } catch (Throwable th) {
                                th = th;
                                r5 = sharedFlowImpl5;
                                r5.g(flowCollector);
                                throw th;
                            }
                        } else {
                            ResultKt.b(obj);
                            flowCollector2 = flowCollector;
                            flowCollector = (SharedFlowSlot) sharedFlowImpl.c();
                        }
                        CoroutineContext coroutineContext = sharedFlowImpl$collect$1.k;
                        coroutineContext.getClass();
                        job = (Job) coroutineContext.v(Job.Key.j);
                        sharedFlowSlot = flowCollector;
                        r5 = sharedFlowImpl;
                        job2 = job;
                        flowCollector3 = flowCollector2;
                        flowCollector = sharedFlowSlot;
                        do {
                            u = r5.u(flowCollector);
                            if (u == SharedFlowKt.a) {
                            }
                        } while (r5.j(flowCollector, sharedFlowImpl$collect$1) != coroutineSingletons);
                        return;
                    }
                }
                CoroutineContext coroutineContext2 = sharedFlowImpl$collect$1.k;
                coroutineContext2.getClass();
                job = (Job) coroutineContext2.v(Job.Key.j);
                sharedFlowSlot = flowCollector;
                r5 = sharedFlowImpl;
                job2 = job;
                flowCollector3 = flowCollector2;
                flowCollector = sharedFlowSlot;
                do {
                    u = r5.u(flowCollector);
                    if (u == SharedFlowKt.a) {
                    }
                } while (r5.j(flowCollector, sharedFlowImpl$collect$1) != coroutineSingletons);
                return;
            } catch (Throwable th2) {
                r5 = sharedFlowImpl;
                th = th2;
                r5.g(flowCollector);
                throw th;
            }
            if (i == 0) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
        sharedFlowImpl$collect$1 = new SharedFlowImpl$collect$1(sharedFlowImpl, continuation);
        Object obj2 = sharedFlowImpl$collect$1.q;
        coroutineSingletons = CoroutineSingletons.j;
        i = sharedFlowImpl$collect$1.s;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        l(this, flowCollector, continuation);
        return CoroutineSingletons.j;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow b(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return SharedFlowKt.c(this, coroutineContext, i, bufferOverflow);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot, kotlinx.coroutines.flow.SharedFlowSlot, java.lang.Object] */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot d() {
        ?? obj = new Object();
        obj.a = -1L;
        return obj;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot[] f() {
        return new SharedFlowSlot[2];
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final boolean h(Object obj) {
        int i;
        boolean z;
        Continuation[] continuationArr = AbstractSharedFlowKt.a;
        synchronized (this) {
            if (s(obj)) {
                continuationArr = o(continuationArr);
                z = true;
            } else {
                z = false;
            }
        }
        for (Continuation continuation : continuationArr) {
            if (continuation != null) {
                continuation.g(Unit.a);
            }
        }
        return z;
    }

    public final Object j(SharedFlowSlot sharedFlowSlot, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuation));
        cancellableContinuationImpl.v();
        synchronized (this) {
            try {
                if (t(sharedFlowSlot) < 0) {
                    sharedFlowSlot.b = cancellableContinuationImpl;
                } else {
                    cancellableContinuationImpl.g(Unit.a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Object u = cancellableContinuationImpl.u();
        if (u == CoroutineSingletons.j) {
            return u;
        }
        return Unit.a;
    }

    public final void k() {
        if (this.o != 0 || this.u > 1) {
            Object[] objArr = this.q;
            objArr.getClass();
            while (this.u > 0) {
                long p = p();
                int i = this.t;
                int i2 = this.u;
                if (objArr[((int) ((p + (i + i2)) - 1)) & (objArr.length - 1)] == SharedFlowKt.a) {
                    this.u = i2 - 1;
                    SharedFlowKt.b(objArr, p() + this.t + this.u, null);
                } else {
                    return;
                }
            }
        }
    }

    public final void m() {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Object[] objArr = this.q;
        objArr.getClass();
        SharedFlowKt.b(objArr, p(), null);
        this.t--;
        long p = p() + 1;
        if (this.r < p) {
            this.r = p;
        }
        if (this.s < p) {
            if (this.k != 0 && (abstractSharedFlowSlotArr = this.j) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                    if (abstractSharedFlowSlot != null) {
                        SharedFlowSlot sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot;
                        long j = sharedFlowSlot.a;
                        if (0 <= j && j < p) {
                            sharedFlowSlot.a = p;
                        }
                    }
                }
            }
            this.s = p;
        }
    }

    public final void n(Object obj) {
        int i = this.t + this.u;
        Object[] objArr = this.q;
        if (objArr == null) {
            objArr = q(null, 0, 2);
        } else if (i >= objArr.length) {
            objArr = q(objArr, i, objArr.length * 2);
        }
        SharedFlowKt.b(objArr, p() + i, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Continuation[] o(Continuation[] continuationArr) {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        SharedFlowSlot sharedFlowSlot;
        CancellableContinuationImpl cancellableContinuationImpl;
        int length = continuationArr.length;
        if (this.k != 0 && (abstractSharedFlowSlotArr = this.j) != null) {
            int length2 = abstractSharedFlowSlotArr.length;
            int i = 0;
            continuationArr = continuationArr;
            while (i < length2) {
                AbstractSharedFlowSlot abstractSharedFlowSlot = abstractSharedFlowSlotArr[i];
                if (abstractSharedFlowSlot != null && (cancellableContinuationImpl = (sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot).b) != null && t(sharedFlowSlot) >= 0) {
                    int length3 = continuationArr.length;
                    continuationArr = continuationArr;
                    if (length >= length3) {
                        continuationArr = Arrays.copyOf(continuationArr, Math.max(2, continuationArr.length * 2));
                    }
                    continuationArr[length] = cancellableContinuationImpl;
                    sharedFlowSlot.b = null;
                    length++;
                }
                i++;
                continuationArr = continuationArr;
            }
        }
        return continuationArr;
    }

    public final long p() {
        return Math.min(this.s, this.r);
    }

    public final Object[] q(Object[] objArr, int i, int i2) {
        if (i2 > 0) {
            Object[] objArr2 = new Object[i2];
            this.q = objArr2;
            if (objArr != null) {
                long p = p();
                for (int i3 = 0; i3 < i; i3++) {
                    long j = i3 + p;
                    SharedFlowKt.b(objArr2, j, objArr[((int) j) & (objArr.length - 1)]);
                }
            }
            return objArr2;
        }
        u2.l("Buffer size overflow");
        return null;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object r(Object obj, Continuation continuation) {
        SharedFlowImpl<T> sharedFlowImpl;
        Throwable th;
        Continuation[] o;
        Emitter emitter;
        if (h(obj)) {
            return Unit.a;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuation));
        cancellableContinuationImpl.v();
        Continuation[] continuationArr = AbstractSharedFlowKt.a;
        synchronized (this) {
            try {
                if (s(obj)) {
                    try {
                        cancellableContinuationImpl.g(Unit.a);
                        o = o(continuationArr);
                        emitter = null;
                        sharedFlowImpl = this;
                    } catch (Throwable th2) {
                        th = th2;
                        sharedFlowImpl = this;
                        throw th;
                    }
                } else {
                    try {
                        sharedFlowImpl = this;
                        try {
                            Emitter emitter2 = new Emitter(sharedFlowImpl, p() + this.t + this.u, obj, cancellableContinuationImpl);
                            sharedFlowImpl.n(emitter2);
                            sharedFlowImpl.u++;
                            if (sharedFlowImpl.o == 0) {
                                continuationArr = sharedFlowImpl.o(continuationArr);
                            }
                            o = continuationArr;
                            emitter = emitter2;
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th4) {
                        sharedFlowImpl = this;
                        th = th4;
                        throw th;
                    }
                }
                if (emitter != null) {
                    CancellableContinuationKt.a(cancellableContinuationImpl, emitter);
                }
                for (Continuation continuation2 : o) {
                    if (continuation2 != null) {
                        continuation2.g(Unit.a);
                    }
                }
                Object u = cancellableContinuationImpl.u();
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                if (u != coroutineSingletons) {
                    u = Unit.a;
                }
                if (u == coroutineSingletons) {
                    return u;
                }
                return Unit.a;
            } catch (Throwable th5) {
                th = th5;
                sharedFlowImpl = this;
            }
        }
    }

    public final boolean s(Object obj) {
        int i = this.k;
        int i2 = this.n;
        if (i == 0) {
            if (i2 != 0) {
                n(obj);
                int i3 = this.t + 1;
                this.t = i3;
                if (i3 > i2) {
                    m();
                }
                this.s = p() + this.t;
                return true;
            }
        } else {
            int i4 = this.t;
            int i5 = this.o;
            if (i4 >= i5 && this.s <= this.r) {
                int ordinal = this.p.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            k8.e();
                            return false;
                        }
                    }
                } else {
                    return false;
                }
            }
            n(obj);
            int i6 = this.t + 1;
            this.t = i6;
            if (i6 > i5) {
                m();
            }
            long p = p() + this.t;
            long j = this.r;
            if (((int) (p - j)) > i2) {
                v(1 + j, this.s, p() + this.t, p() + this.t + this.u);
            }
        }
        return true;
    }

    public final long t(SharedFlowSlot sharedFlowSlot) {
        long j = sharedFlowSlot.a;
        if (j >= p() + this.t && (this.o > 0 || j > p() || this.u == 0)) {
            return -1L;
        }
        return j;
    }

    public final Object u(SharedFlowSlot sharedFlowSlot) {
        Object obj;
        Continuation[] continuationArr = AbstractSharedFlowKt.a;
        synchronized (this) {
            try {
                long t = t(sharedFlowSlot);
                if (t < 0) {
                    obj = SharedFlowKt.a;
                } else {
                    long j = sharedFlowSlot.a;
                    Object[] objArr = this.q;
                    objArr.getClass();
                    Object obj2 = objArr[((int) t) & (objArr.length - 1)];
                    if (obj2 instanceof Emitter) {
                        obj2 = ((Emitter) obj2).l;
                    }
                    sharedFlowSlot.a = t + 1;
                    Object obj3 = obj2;
                    continuationArr = w(j);
                    obj = obj3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation continuation : continuationArr) {
            if (continuation != null) {
                continuation.g(Unit.a);
            }
        }
        return obj;
    }

    public final void v(long j, long j2, long j3, long j4) {
        long min = Math.min(j2, j);
        for (long p = p(); p < min; p++) {
            Object[] objArr = this.q;
            objArr.getClass();
            SharedFlowKt.b(objArr, p, null);
        }
        this.r = j;
        this.s = j2;
        this.t = (int) (j3 - min);
        this.u = (int) (j4 - j3);
    }

    public final Continuation[] w(long j) {
        int i;
        long j2;
        long j3;
        Continuation[] continuationArr;
        long j4;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        long j5 = this.s;
        Continuation[] continuationArr2 = AbstractSharedFlowKt.a;
        if (j <= j5) {
            long p = p();
            long j6 = this.t + p;
            int i2 = this.o;
            if (i2 == 0 && this.u > 0) {
                j6++;
            }
            int i3 = 0;
            if (this.k != 0 && (abstractSharedFlowSlotArr = this.j) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                    if (abstractSharedFlowSlot != null) {
                        long j7 = ((SharedFlowSlot) abstractSharedFlowSlot).a;
                        if (0 <= j7 && j7 < j6) {
                            j6 = j7;
                        }
                    }
                }
            }
            if (j6 > this.s) {
                long p2 = p() + this.t;
                int i4 = this.k;
                int i5 = this.u;
                if (i4 > 0) {
                    i5 = Math.min(i5, i2 - ((int) (p2 - j6)));
                }
                long j8 = this.u + p2;
                Symbol symbol = SharedFlowKt.a;
                if (i5 > 0) {
                    Continuation[] continuationArr3 = new Continuation[i5];
                    j3 = 1;
                    Object[] objArr = this.q;
                    objArr.getClass();
                    int i6 = i2;
                    long j9 = p2;
                    while (true) {
                        if (p2 < j8) {
                            j2 = j6;
                            Object obj = objArr[((int) p2) & (objArr.length - 1)];
                            if (obj != symbol) {
                                obj.getClass();
                                Emitter emitter = (Emitter) obj;
                                int i7 = i3 + 1;
                                i = i6;
                                continuationArr3[i3] = emitter.m;
                                SharedFlowKt.b(objArr, p2, symbol);
                                SharedFlowKt.b(objArr, j9, emitter.l);
                                j9++;
                                if (i7 >= i5) {
                                    break;
                                }
                                i3 = i7;
                            } else {
                                i = i6;
                            }
                            p2++;
                            j6 = j2;
                            i6 = i;
                        } else {
                            j2 = j6;
                            i = i6;
                            break;
                        }
                    }
                    p2 = j9;
                    continuationArr = continuationArr3;
                } else {
                    i = i2;
                    j2 = j6;
                    j3 = 1;
                    continuationArr = continuationArr2;
                }
                long max = Math.max(this.r, Math.max(p, p2 - this.n));
                if (i == 0 && max < j8) {
                    Object[] objArr2 = this.q;
                    objArr2.getClass();
                    if (Intrinsics.a(objArr2[((int) max) & (objArr2.length - 1)], symbol)) {
                        p2 += j3;
                        max += j3;
                    }
                }
                long j10 = p2;
                if (this.k == 0) {
                    j4 = j10;
                } else {
                    j4 = j2;
                }
                v(max, j4, j10, j8);
                k();
                if (continuationArr.length == 0) {
                    return continuationArr;
                }
                return o(continuationArr);
            }
        }
        return continuationArr2;
    }
}
