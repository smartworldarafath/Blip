package kotlinx.coroutines;

import defpackage.f7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public class JobSupport implements Job, ParentJob {
    public static final /* synthetic */ AtomicReferenceFieldUpdater j = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AwaitContinuation<T> extends CancellableContinuationImpl<T> {
        public final JobSupport r;

        public AwaitContinuation(Continuation continuation, JobSupport jobSupport) {
            super(1, continuation);
            this.r = jobSupport;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public final String C() {
            return "AwaitContinuation";
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public final Throwable s(JobSupport jobSupport) {
            Throwable b;
            JobSupport jobSupport2 = this.r;
            jobSupport2.getClass();
            Object obj = JobSupport.j.get(jobSupport2);
            if ((obj instanceof Finishing) && (b = ((Finishing) obj).b()) != null) {
                return b;
            }
            if (obj instanceof CompletedExceptionally) {
                return ((CompletedExceptionally) obj).a;
            }
            return jobSupport.R();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ChildCompletion extends JobNode {
        public final JobSupport n;
        public final Finishing o;
        public final ChildHandleNode p;
        public final Object q;

        public ChildCompletion(JobSupport jobSupport, Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
            this.n = jobSupport;
            this.o = finishing;
            this.p = childHandleNode;
            this.q = obj;
        }

        @Override // kotlinx.coroutines.JobNode
        public final boolean m() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public final void n(Throwable th) {
            ChildHandleNode childHandleNode = this.p;
            ChildHandleNode W = JobSupport.W(childHandleNode);
            JobSupport jobSupport = this.n;
            Finishing finishing = this.o;
            Object obj = this.q;
            if (W == null || !jobSupport.j0(finishing, W, obj)) {
                finishing.j.e(2);
                ChildHandleNode W2 = JobSupport.W(childHandleNode);
                if (W2 != null && jobSupport.j0(finishing, W2, obj)) {
                    return;
                }
                jobSupport.r(jobSupport.F(finishing, obj));
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Finishing implements Incomplete {
        public static final /* synthetic */ AtomicIntegerFieldUpdater k = AtomicIntegerFieldUpdater.newUpdater(Finishing.class, "_isCompleting$volatile");
        public static final /* synthetic */ AtomicReferenceFieldUpdater l = AtomicReferenceFieldUpdater.newUpdater(Finishing.class, Object.class, "_rootCause$volatile");
        public static final /* synthetic */ AtomicReferenceFieldUpdater m = AtomicReferenceFieldUpdater.newUpdater(Finishing.class, Object.class, "_exceptionsHolder$volatile");
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile = 0;
        private volatile /* synthetic */ Object _rootCause$volatile;
        public final NodeList j;

        public Finishing(NodeList nodeList, Throwable th) {
            this.j = nodeList;
            this._rootCause$volatile = th;
        }

        public final void a(Throwable th) {
            Throwable b = b();
            if (b == null) {
                l.set(this, th);
                return;
            }
            if (th != b) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m;
                Object obj = atomicReferenceFieldUpdater.get(this);
                if (obj == null) {
                    atomicReferenceFieldUpdater.set(this, th);
                    return;
                }
                if (obj instanceof Throwable) {
                    if (th == obj) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList(4);
                    arrayList.add(obj);
                    arrayList.add(th);
                    atomicReferenceFieldUpdater.set(this, arrayList);
                    return;
                }
                if (obj instanceof ArrayList) {
                    ((ArrayList) obj).add(th);
                } else {
                    f7.i(obj, "State is ");
                }
            }
        }

        public final Throwable b() {
            return (Throwable) l.get(this);
        }

        @Override // kotlinx.coroutines.Incomplete
        public final NodeList c() {
            return this.j;
        }

        public final boolean d() {
            if (b() != null) {
                return true;
            }
            return false;
        }

        public final ArrayList e(Throwable th) {
            ArrayList arrayList;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = m;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                arrayList = new ArrayList(4);
            } else if (obj instanceof Throwable) {
                ArrayList arrayList2 = new ArrayList(4);
                arrayList2.add(obj);
                arrayList = arrayList2;
            } else if (obj instanceof ArrayList) {
                arrayList = (ArrayList) obj;
            } else {
                f7.i(obj, "State is ");
                return null;
            }
            Throwable b = b();
            if (b != null) {
                arrayList.add(0, b);
            }
            if (th != null && !th.equals(b)) {
                arrayList.add(th);
            }
            atomicReferenceFieldUpdater.set(this, JobSupportKt.e);
            return arrayList;
        }

        @Override // kotlinx.coroutines.Incomplete
        public final boolean h() {
            if (b() == null) {
                return true;
            }
            return false;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Finishing[cancelling=");
            sb.append(d());
            sb.append(", completing=");
            boolean z = true;
            if (k.get(this) != 1) {
                z = false;
            }
            sb.append(z);
            sb.append(", rootCause=");
            sb.append(b());
            sb.append(", exceptions=");
            sb.append(m.get(this));
            sb.append(", list=");
            sb.append(this.j);
            sb.append(']');
            return sb.toString();
        }
    }

    public JobSupport(boolean z) {
        Empty empty;
        if (z) {
            empty = JobSupportKt.g;
        } else {
            empty = JobSupportKt.f;
        }
        this._state$volatile = empty;
    }

    public static ChildHandleNode W(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.j()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = LockFreeLinkedListNode.k;
            LockFreeLinkedListNode f = lockFreeLinkedListNode.f();
            if (f == null) {
                Object obj = atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
                while (true) {
                    lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
                    if (!lockFreeLinkedListNode.j()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
                }
            } else {
                lockFreeLinkedListNode = f;
            }
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.i();
            if (!lockFreeLinkedListNode.j()) {
                if (lockFreeLinkedListNode instanceof ChildHandleNode) {
                    return (ChildHandleNode) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    public static String h0(Object obj) {
        if (obj instanceof Finishing) {
            Finishing finishing = (Finishing) obj;
            if (finishing.d()) {
                return "Cancelling";
            }
            if (Finishing.k.get(finishing) != 1) {
                return "Active";
            }
            return "Completing";
        }
        if (obj instanceof Incomplete) {
            if (((Incomplete) obj).h()) {
                return "Active";
            }
            return "New";
        }
        if (obj instanceof CompletedExceptionally) {
            return "Cancelled";
        }
        return "Completed";
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext A(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.c(this, coroutineContext);
    }

    public String B() {
        return "Job was cancelled";
    }

    public boolean C(Throwable th) {
        if (!(th instanceof CancellationException)) {
            if (x(th) && H()) {
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.RuntimeException, kotlinx.coroutines.CompletionHandlerException] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Throwable, kotlinx.coroutines.CompletionHandlerException] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r1v8 */
    public final void D(Incomplete incomplete, Object obj) {
        CompletedExceptionally completedExceptionally;
        Throwable th;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
        ChildHandle childHandle = (ChildHandle) atomicReferenceFieldUpdater.get(this);
        if (childHandle != null) {
            childHandle.a();
            atomicReferenceFieldUpdater.set(this, NonDisposableHandle.j);
        }
        CompletionHandlerException completionHandlerException = 0;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally != null) {
            th = completedExceptionally.a;
        } else {
            th = null;
        }
        if (incomplete instanceof JobNode) {
            try {
                ((JobNode) incomplete).n(th);
                return;
            } catch (Throwable th2) {
                L(new RuntimeException("Exception in completion handler " + incomplete + " for " + this, th2));
                return;
            }
        }
        NodeList c = incomplete.c();
        if (c != null) {
            c.e(1);
            Object obj2 = LockFreeLinkedListNode.j.get(c);
            obj2.getClass();
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) obj2;
            while (!lockFreeLinkedListNode.equals(c)) {
                if (lockFreeLinkedListNode instanceof JobNode) {
                    try {
                        ((JobNode) lockFreeLinkedListNode).n(th);
                    } catch (Throwable th3) {
                        if (completionHandlerException != 0) {
                            ExceptionsKt.a(completionHandlerException, th3);
                        } else {
                            completionHandlerException = new RuntimeException("Exception in completion handler " + lockFreeLinkedListNode + " for " + this, th3);
                        }
                    }
                }
                lockFreeLinkedListNode = lockFreeLinkedListNode.i();
                completionHandlerException = completionHandlerException;
            }
            if (completionHandlerException != 0) {
                L(completionHandlerException);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Throwable] */
    public final Throwable E(Object obj) {
        CancellationException cancellationException;
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        JobSupport jobSupport = (JobSupport) ((ParentJob) obj);
        Object obj2 = j.get(jobSupport);
        CancellationException cancellationException2 = null;
        if (obj2 instanceof Finishing) {
            cancellationException = ((Finishing) obj2).b();
        } else if (obj2 instanceof CompletedExceptionally) {
            cancellationException = ((CompletedExceptionally) obj2).a;
        } else if (!(obj2 instanceof Incomplete)) {
            cancellationException = null;
        } else {
            f7.i(obj2, "Cannot be cancelling child in this state: ");
            return null;
        }
        if (cancellationException instanceof CancellationException) {
            cancellationException2 = cancellationException;
        }
        if (cancellationException2 == null) {
            return new JobCancellationException("Parent job is ".concat(h0(obj2)), cancellationException, jobSupport);
        }
        return cancellationException2;
    }

    public boolean E0(Object obj) {
        return T(obj);
    }

    public final Object F(Finishing finishing, Object obj) {
        CompletedExceptionally completedExceptionally;
        Throwable G;
        Object obj2;
        Throwable th = null;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally != null) {
            th = completedExceptionally.a;
        }
        synchronized (finishing) {
            finishing.d();
            ArrayList<Throwable> e = finishing.e(th);
            G = G(finishing, e);
            if (G != null && e.size() > 1) {
                Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(e.size()));
                for (Throwable th2 : e) {
                    if (th2 != G && th2 != G && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                        ExceptionsKt.a(G, th2);
                    }
                }
            }
        }
        if (G != null && G != th) {
            obj = new CompletedExceptionally(G, false);
        }
        if (G != null && (z(G) || K(G))) {
            obj.getClass();
            CompletedExceptionally.b.compareAndSet((CompletedExceptionally) obj, 0, 1);
        }
        b0(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
        if (obj instanceof Incomplete) {
            obj2 = new IncompleteStateBox((Incomplete) obj);
        } else {
            obj2 = obj;
        }
        while (!atomicReferenceFieldUpdater.compareAndSet(this, finishing, obj2) && atomicReferenceFieldUpdater.get(this) == finishing) {
        }
        D(finishing, obj);
        return obj;
    }

    public final Throwable G(Finishing finishing, ArrayList arrayList) {
        Object obj;
        Object obj2 = null;
        if (arrayList.isEmpty()) {
            if (!finishing.d()) {
                return null;
            }
            return new JobCancellationException(B(), null, this);
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (!(((Throwable) obj) instanceof CancellationException)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) arrayList.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                Throwable th3 = (Throwable) next;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    public boolean H() {
        return true;
    }

    public boolean I() {
        return this instanceof CompletableDeferredImpl;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.NodeList, kotlinx.coroutines.internal.LockFreeLinkedListNode] */
    public final NodeList J(Incomplete incomplete) {
        NodeList c = incomplete.c();
        if (c == null) {
            if (incomplete instanceof Empty) {
                return new LockFreeLinkedListNode();
            }
            if (incomplete instanceof JobNode) {
                e0((JobNode) incomplete);
                return null;
            }
            f7.i(incomplete, "State should have list: ");
            return null;
        }
        return c;
    }

    public boolean K(Throwable th) {
        return false;
    }

    public final void M(Job job) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
        NonDisposableHandle nonDisposableHandle = NonDisposableHandle.j;
        if (job == null) {
            atomicReferenceFieldUpdater.set(this, nonDisposableHandle);
            return;
        }
        job.start();
        ChildHandle X = job.X(this);
        atomicReferenceFieldUpdater.set(this, X);
        if (Q()) {
            X.a();
            atomicReferenceFieldUpdater.set(this, nonDisposableHandle);
        }
    }

    public final DisposableHandle N(boolean z, JobNode jobNode) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        NonDisposableHandle nonDisposableHandle;
        boolean z2;
        Throwable th;
        CompletedExceptionally completedExceptionally;
        boolean d;
        Finishing finishing;
        Throwable th2;
        jobNode.m = this;
        loop0: while (true) {
            atomicReferenceFieldUpdater = j;
            Object obj = atomicReferenceFieldUpdater.get(this);
            boolean z3 = obj instanceof Empty;
            nonDisposableHandle = NonDisposableHandle.j;
            z2 = true;
            th = null;
            if (z3) {
                Empty empty = (Empty) obj;
                if (empty.j) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, jobNode)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
                d0(empty);
            } else if (obj instanceof Incomplete) {
                Incomplete incomplete = (Incomplete) obj;
                NodeList c = incomplete.c();
                if (c == null) {
                    e0((JobNode) obj);
                } else {
                    if (jobNode.m()) {
                        if (incomplete instanceof Finishing) {
                            finishing = (Finishing) incomplete;
                        } else {
                            finishing = null;
                        }
                        if (finishing != null) {
                            th2 = finishing.b();
                        } else {
                            th2 = null;
                        }
                        if (th2 == null) {
                            d = c.d(jobNode, 5);
                        } else if (z) {
                            jobNode.n(th2);
                            return nonDisposableHandle;
                        }
                    } else {
                        d = c.d(jobNode, 1);
                    }
                    if (d) {
                        break;
                    }
                }
            } else {
                z2 = false;
                break;
            }
        }
        if (z2) {
            return jobNode;
        }
        if (z) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof CompletedExceptionally) {
                completedExceptionally = (CompletedExceptionally) obj2;
            } else {
                completedExceptionally = null;
            }
            if (completedExceptionally != null) {
                th = completedExceptionally.a;
            }
            jobNode.n(th);
        }
        return nonDisposableHandle;
    }

    @Override // kotlinx.coroutines.Job
    public final Object O(ContinuationImpl continuationImpl) {
        Object obj;
        Unit unit;
        do {
            obj = j.get(this);
            boolean z = obj instanceof Incomplete;
            unit = Unit.a;
            if (!z) {
                JobKt.c(continuationImpl.o());
                return unit;
            }
        } while (f0(obj) < 0);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuationImpl));
        cancellableContinuationImpl.v();
        CancellableContinuationKt.a(cancellableContinuationImpl, JobKt.e(this, true, new ResumeOnCompletion(cancellableContinuationImpl)));
        Object u = cancellableContinuationImpl.u();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        if (u != coroutineSingletons) {
            u = unit;
        }
        if (u == coroutineSingletons) {
            return u;
        }
        return unit;
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle P(boolean z, boolean z2, Function1 function1) {
        JobNode invokeOnCompletion;
        if (z) {
            invokeOnCompletion = new InvokeOnCancelling(function1);
        } else {
            invokeOnCompletion = new InvokeOnCompletion(function1);
        }
        return N(z2, invokeOnCompletion);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object P0(Object obj, Function2 function2) {
        return function2.n(obj, this);
    }

    public final boolean Q() {
        return !(j.get(this) instanceof Incomplete);
    }

    @Override // kotlinx.coroutines.Job
    public final CancellationException R() {
        Object obj = j.get(this);
        CancellationException cancellationException = null;
        if (obj instanceof Finishing) {
            Throwable b = ((Finishing) obj).b();
            if (b != null) {
                String concat = getClass().getSimpleName().concat(" is cancelling");
                if (b instanceof CancellationException) {
                    cancellationException = (CancellationException) b;
                }
                if (cancellationException == null) {
                    return new JobCancellationException(concat, b, this);
                }
                return cancellationException;
            }
            f7.i(this, "Job is still new or active: ");
            return null;
        }
        if (!(obj instanceof Incomplete)) {
            if (obj instanceof CompletedExceptionally) {
                Throwable th = ((CompletedExceptionally) obj).a;
                if (th instanceof CancellationException) {
                    cancellationException = (CancellationException) th;
                }
                if (cancellationException == null) {
                    return new JobCancellationException(B(), th, this);
                }
                return cancellationException;
            }
            return new JobCancellationException(getClass().getSimpleName().concat(" has completed normally"), null, this);
        }
        f7.i(this, "Job is still new or active: ");
        return null;
    }

    public boolean S() {
        return this instanceof BlockingCoroutine;
    }

    public final boolean T(Object obj) {
        Object i0;
        do {
            i0 = i0(j.get(this), obj);
            if (i0 == JobSupportKt.a) {
                return false;
            }
            if (i0 == JobSupportKt.b) {
                return true;
            }
        } while (i0 == JobSupportKt.c);
        r(i0);
        return true;
    }

    public final Object U(Object obj) {
        Object i0;
        CompletedExceptionally completedExceptionally;
        do {
            i0 = i0(j.get(this), obj);
            if (i0 == JobSupportKt.a) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                Throwable th = null;
                if (obj instanceof CompletedExceptionally) {
                    completedExceptionally = (CompletedExceptionally) obj;
                } else {
                    completedExceptionally = null;
                }
                if (completedExceptionally != null) {
                    th = completedExceptionally.a;
                }
                throw new IllegalStateException(str, th);
            }
        } while (i0 == JobSupportKt.c);
        return i0;
    }

    public String V() {
        return getClass().getSimpleName();
    }

    @Override // kotlinx.coroutines.Job
    public final ChildHandle X(JobSupport jobSupport) {
        CompletedExceptionally completedExceptionally;
        CompletedExceptionally completedExceptionally2;
        ChildHandleNode childHandleNode = new ChildHandleNode(jobSupport);
        childHandleNode.m = this;
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof Empty) {
                Empty empty = (Empty) obj;
                if (empty.j) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, childHandleNode)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
                d0(empty);
            } else {
                boolean z = obj instanceof Incomplete;
                NonDisposableHandle nonDisposableHandle = NonDisposableHandle.j;
                Throwable th = null;
                if (z) {
                    NodeList c = ((Incomplete) obj).c();
                    if (c == null) {
                        e0((JobNode) obj);
                    } else if (!c.d(childHandleNode, 7)) {
                        boolean d = c.d(childHandleNode, 3);
                        Object obj2 = atomicReferenceFieldUpdater.get(this);
                        if (obj2 instanceof Finishing) {
                            th = ((Finishing) obj2).b();
                        } else {
                            if (obj2 instanceof CompletedExceptionally) {
                                completedExceptionally2 = (CompletedExceptionally) obj2;
                            } else {
                                completedExceptionally2 = null;
                            }
                            if (completedExceptionally2 != null) {
                                th = completedExceptionally2.a;
                            }
                        }
                        childHandleNode.n(th);
                        if (d) {
                            break loop0;
                        }
                        return nonDisposableHandle;
                    }
                } else {
                    Object obj3 = atomicReferenceFieldUpdater.get(this);
                    if (obj3 instanceof CompletedExceptionally) {
                        completedExceptionally = (CompletedExceptionally) obj3;
                    } else {
                        completedExceptionally = null;
                    }
                    if (completedExceptionally != null) {
                        th = completedExceptionally.a;
                    }
                    childHandleNode.n(th);
                    return nonDisposableHandle;
                }
            }
        }
        return childHandleNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Throwable, kotlinx.coroutines.CompletionHandlerException] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r1v4 */
    public final void Y(NodeList nodeList, Throwable th) {
        nodeList.e(4);
        Object obj = LockFreeLinkedListNode.j.get(nodeList);
        obj.getClass();
        LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
        CompletionHandlerException completionHandlerException = 0;
        while (!lockFreeLinkedListNode.equals(nodeList)) {
            if ((lockFreeLinkedListNode instanceof JobNode) && ((JobNode) lockFreeLinkedListNode).m()) {
                try {
                    ((JobNode) lockFreeLinkedListNode).n(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != 0) {
                        ExceptionsKt.a(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new RuntimeException("Exception in completion handler " + lockFreeLinkedListNode + " for " + this, th2);
                    }
                }
            }
            lockFreeLinkedListNode = lockFreeLinkedListNode.i();
            completionHandlerException = completionHandlerException;
        }
        if (completionHandlerException != 0) {
            L(completionHandlerException);
        }
        z(th);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.NodeList, kotlinx.coroutines.internal.LockFreeLinkedListNode] */
    public final void d0(Empty empty) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ?? lockFreeLinkedListNode = new LockFreeLinkedListNode();
        InactiveNodeList inactiveNodeList = lockFreeLinkedListNode;
        if (!empty.j) {
            inactiveNodeList = new InactiveNodeList(lockFreeLinkedListNode);
        }
        do {
            atomicReferenceFieldUpdater = j;
            if (atomicReferenceFieldUpdater.compareAndSet(this, empty, inactiveNodeList)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == empty);
    }

    public final void e0(JobNode jobNode) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        LockFreeLinkedListNode lockFreeLinkedListNode = new LockFreeLinkedListNode();
        jobNode.getClass();
        LockFreeLinkedListNode.k.set(lockFreeLinkedListNode, jobNode);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = LockFreeLinkedListNode.j;
        atomicReferenceFieldUpdater2.set(lockFreeLinkedListNode, jobNode);
        loop0: while (true) {
            if (atomicReferenceFieldUpdater2.get(jobNode) != jobNode) {
                break;
            }
            while (!atomicReferenceFieldUpdater2.compareAndSet(jobNode, jobNode, lockFreeLinkedListNode)) {
                if (atomicReferenceFieldUpdater2.get(jobNode) != jobNode) {
                    break;
                }
            }
            lockFreeLinkedListNode.g(jobNode);
        }
        LockFreeLinkedListNode i = jobNode.i();
        do {
            atomicReferenceFieldUpdater = j;
            if (atomicReferenceFieldUpdater.compareAndSet(this, jobNode, i)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == jobNode);
    }

    public final int f0(Object obj) {
        boolean z = obj instanceof Empty;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
        if (z) {
            if (((Empty) obj).j) {
                return 0;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, JobSupportKt.g)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    return -1;
                }
            }
            c0();
            return 1;
        }
        if (obj instanceof InactiveNodeList) {
            NodeList nodeList = ((InactiveNodeList) obj).j;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, nodeList)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    return -1;
                }
            }
            c0();
            return 1;
        }
        return 0;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext g0(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return Job.Key.j;
    }

    @Override // kotlinx.coroutines.Job
    public boolean h() {
        Object obj = j.get(this);
        if ((obj instanceof Incomplete) && ((Incomplete) obj).h()) {
            return true;
        }
        return false;
    }

    public final Object i0(Object obj, Object obj2) {
        Object obj3;
        Finishing finishing;
        boolean z;
        CompletedExceptionally completedExceptionally;
        if (!(obj instanceof Incomplete)) {
            return JobSupportKt.a;
        }
        if (((obj instanceof Empty) || (obj instanceof JobNode)) && !(obj instanceof ChildHandleNode) && !(obj2 instanceof CompletedExceptionally)) {
            Incomplete incomplete = (Incomplete) obj;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
            if (obj2 instanceof Incomplete) {
                obj3 = new IncompleteStateBox((Incomplete) obj2);
            } else {
                obj3 = obj2;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, incomplete, obj3)) {
                if (atomicReferenceFieldUpdater.get(this) != incomplete) {
                    return JobSupportKt.c;
                }
            }
            b0(obj2);
            D(incomplete, obj2);
            return obj2;
        }
        Incomplete incomplete2 = (Incomplete) obj;
        NodeList J = J(incomplete2);
        if (J == null) {
            return JobSupportKt.c;
        }
        Throwable th = null;
        if (incomplete2 instanceof Finishing) {
            finishing = (Finishing) incomplete2;
        } else {
            finishing = null;
        }
        if (finishing == null) {
            finishing = new Finishing(J, null);
        }
        synchronized (finishing) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = Finishing.k;
            if (atomicIntegerFieldUpdater.get(finishing) == 1) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return JobSupportKt.a;
            }
            atomicIntegerFieldUpdater.set(finishing, 1);
            if (finishing != incomplete2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = j;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, incomplete2, finishing)) {
                    if (atomicReferenceFieldUpdater2.get(this) != incomplete2) {
                        return JobSupportKt.c;
                    }
                }
            }
            boolean d = finishing.d();
            if (obj2 instanceof CompletedExceptionally) {
                completedExceptionally = (CompletedExceptionally) obj2;
            } else {
                completedExceptionally = null;
            }
            if (completedExceptionally != null) {
                finishing.a(completedExceptionally.a);
            }
            Throwable b = finishing.b();
            if (!d) {
                th = b;
            }
            if (th != null) {
                Y(J, th);
            }
            ChildHandleNode W = W(J);
            if (W != null && j0(finishing, W, obj2)) {
                return JobSupportKt.b;
            }
            J.e(2);
            ChildHandleNode W2 = W(J);
            if (W2 != null && j0(finishing, W2, obj2)) {
                return JobSupportKt.b;
            }
            return F(finishing, obj2);
        }
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCancelled() {
        Object obj = j.get(this);
        if (!(obj instanceof CompletedExceptionally)) {
            if (!(obj instanceof Finishing) || !((Finishing) obj).d()) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final boolean j0(Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
        while (JobKt.e(childHandleNode.n, false, new ChildCompletion(this, finishing, childHandleNode, obj)) == NonDisposableHandle.j) {
            childHandleNode = W(childHandleNode);
            if (childHandleNode == null) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlinx.coroutines.Job
    public void n(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(B(), null, this);
        }
        y(cancellationException);
    }

    public void s(Object obj) {
        r(obj);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int f0;
        do {
            f0 = f0(j.get(this));
            if (f0 == 0) {
                return false;
            }
        } while (f0 != 1);
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(V() + '{' + h0(j.get(this)) + '}');
        sb.append('@');
        sb.append(DebugStringsKt.a(this));
        return sb.toString();
    }

    public final Object u(ContinuationImpl continuationImpl) {
        Object obj;
        do {
            obj = j.get(this);
            if (!(obj instanceof Incomplete)) {
                if (!(obj instanceof CompletedExceptionally)) {
                    return JobSupportKt.a(obj);
                }
                throw ((CompletedExceptionally) obj).a;
            }
        } while (f0(obj) < 0);
        AwaitContinuation awaitContinuation = new AwaitContinuation(IntrinsicsKt.b(continuationImpl), this);
        awaitContinuation.v();
        CancellableContinuationKt.a(awaitContinuation, JobKt.e(this, true, new ResumeAwaitOnCompletion(awaitContinuation)));
        Object u = awaitContinuation.u();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        return u;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element v(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.a(this, key);
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle v0(Function1 function1) {
        return N(true, new InvokeOnCompletion(function1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
    
        r0 = kotlinx.coroutines.JobSupportKt.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.b) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00e7, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0024, code lost:
    
        r0 = i0(r0, new kotlinx.coroutines.CompletedExceptionally(E(r10), false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
    
        if (r0 == kotlinx.coroutines.JobSupportKt.c) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.a) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0042, code lost:
    
        r0 = null;
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0044, code lost:
    
        r4 = kotlinx.coroutines.JobSupport.j;
        r5 = r4.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        if ((r5 instanceof kotlinx.coroutines.JobSupport.Finishing) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0092, code lost:
    
        if ((r5 instanceof kotlinx.coroutines.Incomplete) == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0094, code lost:
    
        if (r1 != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0096, code lost:
    
        r1 = E(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009a, code lost:
    
        r6 = (kotlinx.coroutines.Incomplete) r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0008, code lost:
    
        if (I() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a1, code lost:
    
        if (r6.h() == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c2, code lost:
    
        r4 = i0(r5, new kotlinx.coroutines.CompletedExceptionally(r1, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00cd, code lost:
    
        if (r4 == kotlinx.coroutines.JobSupportKt.a) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d1, code lost:
    
        if (r4 == kotlinx.coroutines.JobSupportKt.c) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d3, code lost:
    
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
    
        r0 = kotlinx.coroutines.JobSupport.j.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d5, code lost:
    
        defpackage.f7.i(r5, "Cannot happen in ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00da, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a3, code lost:
    
        r7 = J(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a7, code lost:
    
        if (r7 != null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00aa, code lost:
    
        r8 = new kotlinx.coroutines.JobSupport.Finishing(r7, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b3, code lost:
    
        if (r4.compareAndSet(r9, r6, r8) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if ((r0 instanceof kotlinx.coroutines.Incomplete) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bf, code lost:
    
        if (r4.get(r9) == r6) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b5, code lost:
    
        Y(r7, r1);
        r10 = kotlinx.coroutines.JobSupportKt.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x005f, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00db, code lost:
    
        r10 = kotlinx.coroutines.JobSupportKt.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x004e, code lost:
    
        monitor-enter(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x005a, code lost:
    
        if (kotlinx.coroutines.JobSupport.Finishing.m.get((kotlinx.coroutines.JobSupport.Finishing) r5) != kotlinx.coroutines.JobSupportKt.e) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x005c, code lost:
    
        r10 = kotlinx.coroutines.JobSupportKt.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x005e, code lost:
    
        monitor-exit(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0064, code lost:
    
        r4 = ((kotlinx.coroutines.JobSupport.Finishing) r5).d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x006b, code lost:
    
        if (r1 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x006d, code lost:
    
        r1 = E(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if ((r0 instanceof kotlinx.coroutines.JobSupport.Finishing) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0071, code lost:
    
        ((kotlinx.coroutines.JobSupport.Finishing) r5).a(r1);
        r10 = ((kotlinx.coroutines.JobSupport.Finishing) r5).b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x007e, code lost:
    
        if (r4 != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0080, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0081, code lost:
    
        monitor-exit(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0082, code lost:
    
        if (r0 == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0084, code lost:
    
        Y(((kotlinx.coroutines.JobSupport.Finishing) r5).j, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x008b, code lost:
    
        r10 = kotlinx.coroutines.JobSupportKt.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00e0, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.a) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00e5, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.b) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00ea, code lost:
    
        if (r0 != kotlinx.coroutines.JobSupportKt.d) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00ec, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00ed, code lost:
    
        r(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00f0, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        if (kotlinx.coroutines.JobSupport.Finishing.k.get((kotlinx.coroutines.JobSupport.Finishing) r0) != 1) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean x(Object obj) {
        Object obj2 = JobSupportKt.a;
    }

    public void y(CancellationException cancellationException) {
        x(cancellationException);
    }

    public final boolean z(Throwable th) {
        if (!S()) {
            boolean z = th instanceof CancellationException;
            ChildHandle childHandle = (ChildHandle) k.get(this);
            if (childHandle != null && childHandle != NonDisposableHandle.j) {
                if (!childHandle.b(th) && !z) {
                    return false;
                }
                return true;
            }
            return z;
        }
        return true;
    }

    public void c0() {
    }

    public void L(CompletionHandlerException completionHandlerException) {
        throw completionHandlerException;
    }

    public void b0(Object obj) {
    }

    public void r(Object obj) {
    }
}
