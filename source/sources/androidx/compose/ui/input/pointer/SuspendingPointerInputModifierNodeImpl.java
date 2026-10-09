package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SuspendingPointerInputModifierNodeImpl extends Modifier.Node implements SuspendingPointerInputModifierNode, PointerInputScope, Density {
    public PointerInputEventHandler A;
    public Job B;
    public PointerEvent C = SuspendingPointerInputFilterKt.a;
    public final MutableVector D;
    public final MutableVector E;
    public final MutableVector F;
    public PointerEvent G;
    public long H;
    public Object x;
    public Object y;
    public Object[] z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class PointerEventHandlerCoroutine<R> implements AwaitPointerEventScope, Density, Continuation<R> {
        public final /* synthetic */ SuspendingPointerInputModifierNodeImpl j;
        public final CancellableContinuationImpl k;
        public CancellableContinuationImpl l;
        public PointerEventPass m = PointerEventPass.k;
        public final EmptyCoroutineContext n = EmptyCoroutineContext.j;

        public PointerEventHandlerCoroutine(CancellableContinuationImpl cancellableContinuationImpl) {
            this.j = SuspendingPointerInputModifierNodeImpl.this;
            this.k = cancellableContinuationImpl;
        }

        @Override // androidx.compose.ui.unit.Density
        public final long D0(long j) {
            return this.j.D0(j);
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final float E(long j) {
            return this.j.E(j);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float I0(long j) {
            return this.j.I0(j);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long N(int i) {
            return this.j.N(i);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long P(float f) {
            return this.j.P(f);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float U(int i) {
            return this.j.U(i);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float X(float f) {
            return f / this.j.getDensity();
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final float e0() {
            return this.j.e0();
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final long f() {
            return SuspendingPointerInputModifierNodeImpl.this.H;
        }

        @Override // kotlin.coroutines.Continuation
        public final void g(Object obj) {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = SuspendingPointerInputModifierNodeImpl.this;
            synchronized (suspendingPointerInputModifierNodeImpl.E) {
                suspendingPointerInputModifierNodeImpl.D.j(this);
            }
            this.k.g(obj);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object g0(long j, Function2 function2, ContinuationImpl continuationImpl) {
            SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1;
            int i;
            Throwable th;
            Job job;
            CancellableContinuationImpl cancellableContinuationImpl;
            if (continuationImpl instanceof SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1) {
                suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = (SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1) continuationImpl;
                int i2 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.p;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.p = i2 - Integer.MIN_VALUE;
                    Object obj = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.n;
                    Object obj2 = CoroutineSingletons.j;
                    i = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.p;
                    if (i == 0) {
                        if (i == 1) {
                            job = (Job) suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.m;
                            try {
                                ResultKt.b(obj);
                            } catch (Throwable th2) {
                                th = th2;
                                job.n(CancelTimeoutCancellationException.j);
                                throw th;
                            }
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        if (j <= 0 && (cancellableContinuationImpl = this.l) != null) {
                            cancellableContinuationImpl.g(new Result.Failure(new PointerEventTimeoutCancellationException(j)));
                        }
                        Job c = BuildersKt.c(SuspendingPointerInputModifierNodeImpl.this.M0(), null, null, new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$job$1(j, this, null), 3);
                        try {
                            suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.m = c;
                            suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.p = 1;
                            obj = function2.n(this, suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1);
                            if (obj == obj2) {
                                return obj2;
                            }
                            job = c;
                        } catch (Throwable th3) {
                            th = th3;
                            job = c;
                            job.n(CancelTimeoutCancellationException.j);
                            throw th;
                        }
                    }
                    job.n(CancelTimeoutCancellationException.j);
                    return obj;
                }
            }
            suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1(this, continuationImpl);
            Object obj3 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.n;
            Object obj22 = CoroutineSingletons.j;
            i = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1.p;
            if (i == 0) {
            }
            job.n(CancelTimeoutCancellationException.j);
            return obj3;
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getDensity() {
            return this.j.getDensity();
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final ViewConfiguration getViewConfiguration() {
            return DelegatableNodeKt.g(SuspendingPointerInputModifierNodeImpl.this).J;
        }

        @Override // androidx.compose.ui.unit.Density
        public final float i0(float f) {
            return this.j.getDensity() * f;
        }

        @Override // kotlin.coroutines.Continuation
        public final CoroutineContext o() {
            return this.n;
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final long p0() {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = SuspendingPointerInputModifierNodeImpl.this;
            long D0 = suspendingPointerInputModifierNodeImpl.D0(DelegatableNodeKt.g(suspendingPointerInputModifierNodeImpl).J.d());
            long j = suspendingPointerInputModifierNodeImpl.H;
            float max = Math.max(0.0f, Float.intBitsToFloat((int) (D0 >> 32)) - ((int) (j >> 32))) / 2.0f;
            float max2 = Math.max(0.0f, Float.intBitsToFloat((int) (D0 & 4294967295L)) - ((int) (j & 4294967295L))) / 2.0f;
            return (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(max2) & 4294967295L);
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final Object q(PointerEventPass pointerEventPass, BaseContinuationImpl baseContinuationImpl) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(baseContinuationImpl));
            cancellableContinuationImpl.v();
            this.m = pointerEventPass;
            this.l = cancellableContinuationImpl;
            Object u = cancellableContinuationImpl.u();
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            return u;
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public final PointerEvent s() {
            return SuspendingPointerInputModifierNodeImpl.this.C;
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final long x(float f) {
            return this.j.x(f);
        }

        @Override // androidx.compose.ui.unit.Density
        public final long y(long j) {
            return this.j.y(j);
        }

        @Override // androidx.compose.ui.unit.Density
        public final int y0(float f) {
            return this.j.y0(f);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object z0(long j, Function2 function2, ContinuationImpl continuationImpl) {
            SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1;
            int i;
            try {
                if (continuationImpl instanceof SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1) {
                    suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = (SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1) continuationImpl;
                    int i2 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.o;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.o = i2 - Integer.MIN_VALUE;
                        Object obj = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.m;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                        i = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.o;
                        if (i == 0) {
                            if (i == 1) {
                                ResultKt.b(obj);
                                return obj;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                        suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.o = 1;
                        Object g0 = g0(j, function2, suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1);
                        if (g0 == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        return g0;
                    }
                }
                if (i == 0) {
                }
            } catch (PointerEventTimeoutCancellationException unused) {
                return null;
            }
            suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = new SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1(this, continuationImpl);
            Object obj2 = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.m;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = suspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1.o;
        }
    }

    public SuspendingPointerInputModifierNodeImpl(Object obj, Object obj2, Object[] objArr, PointerInputEventHandler pointerInputEventHandler) {
        this.x = obj;
        this.y = obj2;
        this.z = objArr;
        this.A = pointerInputEventHandler;
        MutableVector mutableVector = new MutableVector(new PointerEventHandlerCoroutine[16]);
        this.D = mutableVector;
        this.E = mutableVector;
        this.F = new MutableVector(new PointerEventHandlerCoroutine[16]);
        this.H = 0L;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void G0() {
        a1();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        this.H = j;
        if (pointerEventPass == PointerEventPass.j) {
            this.C = pointerEvent;
        }
        if (this.B == null) {
            this.B = BuildersKt.c(M0(), null, CoroutineStart.m, new SuspendingPointerInputModifierNodeImpl$onPointerEvent$1(this, null), 1);
        }
        Z0(pointerEvent, pointerEventPass);
        List list = pointerEvent.a;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i < size) {
                if (!PointerEventKt.d((PointerInputChange) list.get(i))) {
                    break;
                } else {
                    i++;
                }
            } else {
                pointerEvent = null;
                break;
            }
        }
        this.G = pointerEvent;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void L() {
        PointerEvent pointerEvent = this.G;
        if (pointerEvent != null) {
            List list = pointerEvent.a;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (((PointerInputChange) list.get(i)).d) {
                    ArrayList arrayList = new ArrayList(list.size());
                    int size2 = list.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        PointerInputChange pointerInputChange = (PointerInputChange) list.get(i2);
                        long j = pointerInputChange.a;
                        long j2 = pointerInputChange.c;
                        long j3 = pointerInputChange.b;
                        float f = pointerInputChange.e;
                        boolean z = pointerInputChange.d;
                        arrayList.add(new PointerInputChange(j, j3, j2, false, f, j3, j2, z, z, pointerInputChange.i, 0L, 1.0f, 0L));
                    }
                    PointerEvent pointerEvent2 = new PointerEvent(arrayList, null);
                    this.C = pointerEvent2;
                    Z0(pointerEvent2, PointerEventPass.j);
                    Z0(pointerEvent2, PointerEventPass.k);
                    Z0(pointerEvent2, PointerEventPass.l);
                    this.G = null;
                    return;
                }
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        a1();
    }

    public final Object Y0(Function2 function2, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuation));
        cancellableContinuationImpl.v();
        final PointerEventHandlerCoroutine pointerEventHandlerCoroutine = new PointerEventHandlerCoroutine(cancellableContinuationImpl);
        synchronized (this.E) {
            this.D.b(pointerEventHandlerCoroutine);
            Continuation b = IntrinsicsKt.b(IntrinsicsKt.a(pointerEventHandlerCoroutine, pointerEventHandlerCoroutine, function2));
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            new SafeContinuation(b).g(Unit.a);
        }
        cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$awaitPointerEventScope$2$2
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Throwable th = (Throwable) obj;
                SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine2 = SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine.this;
                CancellableContinuationImpl cancellableContinuationImpl2 = pointerEventHandlerCoroutine2.l;
                if (cancellableContinuationImpl2 != null) {
                    cancellableContinuationImpl2.p(th);
                }
                pointerEventHandlerCoroutine2.l = null;
                return Unit.a;
            }
        });
        return cancellableContinuationImpl.u();
    }

    public final void Z0(PointerEvent pointerEvent, PointerEventPass pointerEventPass) {
        CancellableContinuationImpl cancellableContinuationImpl;
        CancellableContinuationImpl cancellableContinuationImpl2;
        synchronized (this.E) {
            MutableVector mutableVector = this.F;
            mutableVector.c(mutableVector.l, this.D);
        }
        try {
            int ordinal = pointerEventPass.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        throw new RuntimeException();
                    }
                } else {
                    MutableVector mutableVector2 = this.F;
                    int i = mutableVector2.l - 1;
                    Object[] objArr = mutableVector2.j;
                    if (i < objArr.length) {
                        while (i >= 0) {
                            PointerEventHandlerCoroutine pointerEventHandlerCoroutine = (PointerEventHandlerCoroutine) objArr[i];
                            if (pointerEventPass == pointerEventHandlerCoroutine.m && (cancellableContinuationImpl2 = pointerEventHandlerCoroutine.l) != null) {
                                pointerEventHandlerCoroutine.l = null;
                                cancellableContinuationImpl2.g(pointerEvent);
                            }
                            i--;
                        }
                    }
                    this.F.g();
                }
            }
            MutableVector mutableVector3 = this.F;
            Object[] objArr2 = mutableVector3.j;
            int i2 = mutableVector3.l;
            for (int i3 = 0; i3 < i2; i3++) {
                PointerEventHandlerCoroutine pointerEventHandlerCoroutine2 = (PointerEventHandlerCoroutine) objArr2[i3];
                if (pointerEventPass == pointerEventHandlerCoroutine2.m && (cancellableContinuationImpl = pointerEventHandlerCoroutine2.l) != null) {
                    pointerEventHandlerCoroutine2.l = null;
                    cancellableContinuationImpl.g(pointerEvent);
                }
            }
            this.F.g();
        } catch (Throwable th) {
            this.F.g();
            throw th;
        }
    }

    public final void a1() {
        Job job = this.B;
        if (job != null) {
            ((JobSupport) job).y(new CancellationException("Pointer input was reset"));
            this.B = null;
        }
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return DelegatableNodeKt.g(this).H.e0();
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void g() {
        a1();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return DelegatableNodeKt.g(this).H.getDensity();
    }
}
