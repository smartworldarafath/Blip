package androidx.room;

import androidx.room.ObservedTableStates;
import androidx.room.Transactor;
import defpackage.k8;
import defpackage.u2;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1", f = "InvalidationTracker.kt", l = {301, 309}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$syncTriggers$2$1 extends SuspendLambda implements Function2<Transactor, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ TriggerBasedInvalidationTracker p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1", f = "InvalidationTracker.kt", l = {313, 314}, m = "invokeSuspend")
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<TransactionScope<Unit>, Continuation<? super Unit>, Object> {
        public ObservedTableStates.ObserveOp[] n;
        public TriggerBasedInvalidationTracker o;
        public Transactor p;
        public int q;
        public int r;
        public int s;
        public int t;
        public final /* synthetic */ ObservedTableStates.ObserveOp[] u;
        public final /* synthetic */ TriggerBasedInvalidationTracker v;
        public final /* synthetic */ Transactor w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ObservedTableStates.ObserveOp[] observeOpArr, TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, Continuation continuation) {
            super(2, continuation);
            this.u = observeOpArr;
            this.v = triggerBasedInvalidationTracker;
            this.w = transactor;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((TransactionScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.u, this.v, this.w, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
        
            if (androidx.room.TriggerBasedInvalidationTracker.c(r8, r7, r12, r11) == r0) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
        
            r6 = r10;
         */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0072 -> B:10:0x0073). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object v(Object obj) {
            int length;
            int i;
            Transactor transactor;
            ObservedTableStates.ObserveOp[] observeOpArr;
            int i2;
            TriggerBasedInvalidationTracker triggerBasedInvalidationTracker;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i3 = this.t;
            if (i3 != 0) {
                if (i3 == 1 || i3 == 2) {
                    length = this.s;
                    i = this.r;
                    int i4 = this.q;
                    transactor = this.p;
                    triggerBasedInvalidationTracker = this.o;
                    observeOpArr = this.n;
                    ResultKt.b(obj);
                    i2 = i4;
                    i++;
                    if (i >= length) {
                        int i5 = i2 + 1;
                        int ordinal = observeOpArr[i].ordinal();
                        if (ordinal != 0) {
                            if (ordinal != 1) {
                                if (ordinal == 2) {
                                    this.n = observeOpArr;
                                    this.o = triggerBasedInvalidationTracker;
                                    this.p = transactor;
                                    this.q = i5;
                                    this.r = i;
                                    this.s = length;
                                    this.t = 2;
                                    if (TriggerBasedInvalidationTracker.d(triggerBasedInvalidationTracker, transactor, i2, this) != coroutineSingletons) {
                                        i4 = i5;
                                        i2 = i4;
                                    }
                                    return coroutineSingletons;
                                }
                                k8.e();
                                return null;
                            }
                            this.n = observeOpArr;
                            this.o = triggerBasedInvalidationTracker;
                            this.p = transactor;
                            this.q = i5;
                            this.r = i;
                            this.s = length;
                            this.t = 1;
                            i++;
                            if (i >= length) {
                            }
                        } else {
                            i2 = i5;
                            i++;
                            if (i >= length) {
                                return Unit.a;
                            }
                        }
                    }
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                ObservedTableStates.ObserveOp[] observeOpArr2 = this.u;
                length = observeOpArr2.length;
                i = 0;
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker2 = this.v;
                transactor = this.w;
                observeOpArr = observeOpArr2;
                i2 = 0;
                triggerBasedInvalidationTracker = triggerBasedInvalidationTracker2;
                if (i >= length) {
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$syncTriggers$2$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation) {
        super(2, continuation);
        this.p = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TriggerBasedInvalidationTracker$syncTriggers$2$1) s((Transactor) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this.p, continuation);
        triggerBasedInvalidationTracker$syncTriggers$2$1.o = obj;
        return triggerBasedInvalidationTracker$syncTriggers$2$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0034, code lost:
    
        if (r7 == r1) goto L47;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Transactor transactor;
        Object b;
        ObservedTableStates.ObserveOp[] observeOpArr;
        ObservedTableStates.ObserveOp observeOp;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    return unit;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            transactor = (Transactor) this.o;
            ResultKt.b(obj);
            b = obj;
        } else {
            ResultKt.b(obj);
            transactor = (Transactor) this.o;
            this.o = transactor;
            this.n = 1;
            b = transactor.b(this);
        }
        if (!((Boolean) b).booleanValue()) {
            TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.p;
            ObservedTableStates observedTableStates = triggerBasedInvalidationTracker.h;
            long[] jArr = observedTableStates.b;
            ReentrantLock reentrantLock = observedTableStates.a;
            reentrantLock.lock();
            try {
                if (!observedTableStates.d) {
                    reentrantLock.unlock();
                    observeOpArr = null;
                } else {
                    boolean z2 = false;
                    observedTableStates.d = false;
                    int length = jArr.length;
                    observeOpArr = new ObservedTableStates.ObserveOp[length];
                    int i2 = 0;
                    boolean z3 = false;
                    while (i2 < length) {
                        if (jArr[i2] <= 0) {
                            z = z2;
                        }
                        boolean[] zArr = observedTableStates.c;
                        if (z != zArr[i2]) {
                            zArr[i2] = z;
                            if (z) {
                                observeOp = ObservedTableStates.ObserveOp.k;
                            } else {
                                observeOp = ObservedTableStates.ObserveOp.l;
                            }
                            z3 = true;
                        } else {
                            observeOp = ObservedTableStates.ObserveOp.j;
                        }
                        observeOpArr[i2] = observeOp;
                        i2++;
                        z = true;
                        z2 = false;
                    }
                    if (!z3) {
                        observeOpArr = null;
                    }
                    reentrantLock.unlock();
                }
                if (observeOpArr != null) {
                    Transactor.SQLiteTransactionType sQLiteTransactionType = Transactor.SQLiteTransactionType.k;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(observeOpArr, triggerBasedInvalidationTracker, transactor, null);
                    this.o = null;
                    this.n = 2;
                    if (transactor.a(sQLiteTransactionType, anonymousClass1, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        return unit;
    }
}
