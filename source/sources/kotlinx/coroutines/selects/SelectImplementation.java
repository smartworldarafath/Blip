package kotlinx.coroutines.selects;

import defpackage.f7;
import defpackage.k8;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SelectImplementation<R> implements CancelHandler, SelectInstance, Waiter {
    public static final /* synthetic */ AtomicReferenceFieldUpdater o = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");
    public final CoroutineContext j;
    public Segment l;
    private volatile /* synthetic */ Object state$volatile = SelectKt.a;
    public ArrayList k = new ArrayList(2);
    public int m = -1;
    public Object n = SelectKt.d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ClauseData {
        public final BufferedChannel a;
        public final Function3 b;
        public final Function3 c;
        public final SuspendLambda d;
        public final Function3 e;
        public Segment f;
        public int g = -1;

        public ClauseData(BufferedChannel bufferedChannel, Function3 function3, Function3 function32, SuspendLambda suspendLambda, Function3 function33) {
            this.a = bufferedChannel;
            this.b = function3;
            this.c = function32;
            this.d = suspendLambda;
            this.e = function33;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a() {
            DisposableHandle disposableHandle;
            Segment segment = this.f;
            if (segment != 0) {
                segment.h(this.g, SelectImplementation.this.j);
                return;
            }
            if (segment instanceof DisposableHandle) {
                disposableHandle = (DisposableHandle) segment;
            } else {
                disposableHandle = null;
            }
            if (disposableHandle != null) {
                disposableHandle.a();
            }
        }
    }

    public SelectImplementation(CoroutineContext coroutineContext) {
        this.j = coroutineContext;
    }

    @Override // kotlinx.coroutines.Waiter
    public final void a(Segment segment, int i) {
        this.l = segment;
        this.m = i;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public final void b(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = o;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == SelectKt.b) {
                return;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, SelectKt.c)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            ArrayList arrayList = this.k;
            if (arrayList == null) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ClauseData) it.next()).a();
            }
            this.n = SelectKt.d;
            this.k = null;
            return;
        }
    }

    public final Object c(ContinuationImpl continuationImpl) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = o;
        Object obj = atomicReferenceFieldUpdater.get(this);
        obj.getClass();
        ClauseData clauseData = (ClauseData) obj;
        Object obj2 = this.n;
        ArrayList arrayList = this.k;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ClauseData clauseData2 = (ClauseData) it.next();
                if (clauseData2 != clauseData) {
                    clauseData2.a();
                }
            }
            atomicReferenceFieldUpdater.set(this, SelectKt.b);
            this.n = SelectKt.d;
            this.k = null;
        }
        return ((Function2) clauseData.d).n(clauseData.c.f(clauseData.a, null, obj2), continuationImpl);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b4, code lost:
    
        if (r7 == r1) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00bf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object d(ContinuationImpl continuationImpl) {
        SelectImplementation$doSelectSuspend$1 selectImplementation$doSelectSuspend$1;
        CoroutineSingletons coroutineSingletons;
        int i;
        Object obj;
        Object c;
        if (continuationImpl instanceof SelectImplementation$doSelectSuspend$1) {
            selectImplementation$doSelectSuspend$1 = (SelectImplementation$doSelectSuspend$1) continuationImpl;
            int i2 = selectImplementation$doSelectSuspend$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                selectImplementation$doSelectSuspend$1.o = i2 - Integer.MIN_VALUE;
                Object obj2 = selectImplementation$doSelectSuspend$1.m;
                coroutineSingletons = CoroutineSingletons.j;
                i = selectImplementation$doSelectSuspend$1.o;
                Function3 function3 = null;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj2);
                            return obj2;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj2);
                } else {
                    ResultKt.b(obj2);
                    selectImplementation$doSelectSuspend$1.o = 1;
                    CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(selectImplementation$doSelectSuspend$1));
                    cancellableContinuationImpl.v();
                    loop0: while (true) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = o;
                        Object obj3 = atomicReferenceFieldUpdater.get(this);
                        obj = Unit.a;
                        Symbol symbol = SelectKt.a;
                        if (obj3 == symbol) {
                            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, cancellableContinuationImpl)) {
                                if (atomicReferenceFieldUpdater.get(this) != obj3) {
                                    break;
                                }
                            }
                            cancellableContinuationImpl.y(this);
                            break loop0;
                        }
                        if (!(obj3 instanceof List)) {
                            if (obj3 instanceof ClauseData) {
                                Object obj4 = this.n;
                                Function3 function32 = ((ClauseData) obj3).e;
                                if (function32 != null) {
                                    function3 = (Function3) function32.f(this, null, obj4);
                                }
                                cancellableContinuationImpl.m(obj, function3);
                            } else {
                                f7.i(obj3, "unexpected state: ");
                                return null;
                            }
                        }
                        while (true) {
                            if (atomicReferenceFieldUpdater.compareAndSet(this, obj3, symbol)) {
                                Iterator it = ((Iterable) obj3).iterator();
                                while (it.hasNext()) {
                                    ClauseData e = e(it.next());
                                    e.getClass();
                                    e.f = null;
                                    e.g = -1;
                                    f(e, true);
                                }
                            } else if (atomicReferenceFieldUpdater.get(this) != obj3) {
                                break;
                            }
                        }
                    }
                    Object u = cancellableContinuationImpl.u();
                    if (u == CoroutineSingletons.j) {
                        obj = u;
                    }
                }
                selectImplementation$doSelectSuspend$1.o = 2;
                c = c(selectImplementation$doSelectSuspend$1);
                if (c != coroutineSingletons) {
                    return coroutineSingletons;
                }
                return c;
            }
        }
        selectImplementation$doSelectSuspend$1 = new SelectImplementation$doSelectSuspend$1(this, continuationImpl);
        Object obj22 = selectImplementation$doSelectSuspend$1.m;
        coroutineSingletons = CoroutineSingletons.j;
        i = selectImplementation$doSelectSuspend$1.o;
        Function3 function33 = null;
        if (i == 0) {
        }
        selectImplementation$doSelectSuspend$1.o = 2;
        c = c(selectImplementation$doSelectSuspend$1);
        if (c != coroutineSingletons) {
        }
    }

    public final ClauseData e(Object obj) {
        ArrayList arrayList = this.k;
        Object obj2 = null;
        if (arrayList == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((ClauseData) next).a == obj) {
                obj2 = next;
                break;
            }
        }
        ClauseData clauseData = (ClauseData) obj2;
        if (clauseData != null) {
            return clauseData;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    public final void f(ClauseData clauseData, boolean z) {
        BufferedChannel bufferedChannel = clauseData.a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = o;
        if (atomicReferenceFieldUpdater.get(this) instanceof ClauseData) {
            return;
        }
        if (!z) {
            ArrayList arrayList = this.k;
            arrayList.getClass();
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((ClauseData) it.next()).a == bufferedChannel) {
                        k8.s(bufferedChannel, "Cannot use select clauses on the same object: ");
                        return;
                    }
                }
            }
        }
        clauseData.b.f(bufferedChannel, this, null);
        if (this.n == SelectKt.d) {
            if (!z) {
                ArrayList arrayList2 = this.k;
                arrayList2.getClass();
                arrayList2.add(clauseData);
            }
            clauseData.f = this.l;
            clauseData.g = this.m;
            this.l = null;
            this.m = -1;
            return;
        }
        atomicReferenceFieldUpdater.set(this, clauseData);
    }

    public final int g(Object obj, Object obj2) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = o;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj3 instanceof CancellableContinuation) {
                ClauseData e = e(obj);
                if (e != null) {
                    Function3 function3 = e.e;
                    Function3 function32 = null;
                    if (function3 != null) {
                        function32 = (Function3) function3.f(this, null, obj2);
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, e)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj3) {
                            break;
                        }
                    }
                    CancellableContinuation cancellableContinuation = (CancellableContinuation) obj3;
                    this.n = obj2;
                    Symbol l = cancellableContinuation.l(Unit.a, function32);
                    if (l == null) {
                        this.n = SelectKt.d;
                        return 2;
                    }
                    cancellableContinuation.t(l);
                    return 0;
                }
                continue;
            } else {
                if (!Intrinsics.a(obj3, SelectKt.b) && !(obj3 instanceof ClauseData)) {
                    if (Intrinsics.a(obj3, SelectKt.c)) {
                        return 2;
                    }
                    if (Intrinsics.a(obj3, SelectKt.a)) {
                        List B = CollectionsKt.B(obj);
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, B)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj3) {
                                break;
                            }
                        }
                        return 1;
                    }
                    if (obj3 instanceof List) {
                        ArrayList G = CollectionsKt.G((Collection) obj3, obj);
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, G)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj3) {
                                break;
                            }
                        }
                        return 1;
                    }
                    f7.i(obj3, "Unexpected state: ");
                    return 0;
                }
                return 3;
            }
        }
    }
}
