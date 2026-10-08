package androidx.room;

import androidx.room.util.DBUtil;
import androidx.work.impl.WorkDatabase_Impl;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1", f = "InvalidationTracker.kt", l = {233, 233, 237}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$createFlow$1 extends SuspendLambda implements Function2<FlowCollector<? super Set<? extends String>>, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ TriggerBasedInvalidationTracker p;
    public final /* synthetic */ int[] q;
    public final /* synthetic */ String[] r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1", f = "InvalidationTracker.kt", l = {233}, m = "invokeSuspend")
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ TriggerBasedInvalidationTracker o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation) {
            super(2, continuation);
            this.o = triggerBasedInvalidationTracker;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                this.n = 1;
                if (this.o.f(this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2<T> implements FlowCollector {
        public final /* synthetic */ Ref$ObjectRef j;
        public final /* synthetic */ FlowCollector k;
        public final /* synthetic */ String[] l;
        public final /* synthetic */ int[] m;

        public AnonymousClass2(Ref$ObjectRef ref$ObjectRef, FlowCollector flowCollector, String[] strArr, int[] iArr) {
            this.j = ref$ObjectRef;
            this.k = flowCollector;
            this.l = strArr;
            this.m = iArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
        
            if (r10.r(r2, r3) == r4) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x00a8, code lost:
        
            return r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00a6, code lost:
        
            if (r10.r(r2, r3) == r4) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object r(int[] iArr, Continuation continuation) {
            TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 triggerBasedInvalidationTracker$createFlow$1$2$emit$1;
            int i;
            AnonymousClass2<T> anonymousClass2 = this;
            int[] iArr2 = iArr;
            if (continuation instanceof TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) {
                triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = (TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) continuation;
                int i2 = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.q;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1.q = i2 - Integer.MIN_VALUE;
                    Object obj = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.o;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.q;
                    Object obj2 = null;
                    if (i == 0) {
                        if (i != 1 && i != 2) {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        int[] iArr3 = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.n;
                        AnonymousClass2<T> anonymousClass22 = (AnonymousClass2) triggerBasedInvalidationTracker$createFlow$1$2$emit$1.m;
                        ResultKt.b(obj);
                        iArr2 = iArr3;
                        anonymousClass2 = anonymousClass22;
                    } else {
                        ResultKt.b(obj);
                        Ref$ObjectRef ref$ObjectRef = anonymousClass2.j;
                        Object obj3 = ref$ObjectRef.j;
                        String[] strArr = anonymousClass2.l;
                        FlowCollector flowCollector = anonymousClass2.k;
                        if (obj3 == null) {
                            Set x = ArraysKt.x(strArr);
                            triggerBasedInvalidationTracker$createFlow$1$2$emit$1.m = anonymousClass2;
                            triggerBasedInvalidationTracker$createFlow$1$2$emit$1.n = iArr2;
                            triggerBasedInvalidationTracker$createFlow$1$2$emit$1.q = 1;
                        } else {
                            ArrayList arrayList = new ArrayList();
                            int length = strArr.length;
                            int i3 = 0;
                            int i4 = 0;
                            while (i3 < length) {
                                String str = strArr[i3];
                                int i5 = i4 + 1;
                                Object obj4 = ref$ObjectRef.j;
                                if (obj4 != null) {
                                    Object obj5 = obj2;
                                    int i6 = anonymousClass2.m[i4];
                                    if (((int[]) obj4)[i6] != iArr2[i6]) {
                                        arrayList.add(str);
                                    }
                                    i3++;
                                    obj2 = obj5;
                                    i4 = i5;
                                } else {
                                    Object obj6 = obj2;
                                    u2.l("Required value was null.");
                                    return obj6;
                                }
                            }
                            if (!arrayList.isEmpty()) {
                                Set a0 = CollectionsKt.a0(arrayList);
                                triggerBasedInvalidationTracker$createFlow$1$2$emit$1.m = anonymousClass2;
                                triggerBasedInvalidationTracker$createFlow$1$2$emit$1.n = iArr2;
                                triggerBasedInvalidationTracker$createFlow$1$2$emit$1.q = 2;
                            }
                        }
                    }
                    anonymousClass2.j.j = iArr2;
                    return Unit.a;
                }
            }
            triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = new TriggerBasedInvalidationTracker$createFlow$1$2$emit$1(anonymousClass2, continuation);
            Object obj7 = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.o;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.q;
            Object obj22 = null;
            if (i == 0) {
            }
            anonymousClass2.j.j = iArr2;
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$createFlow$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, int[] iArr, String[] strArr, Continuation continuation) {
        super(2, continuation);
        this.p = triggerBasedInvalidationTracker;
        this.q = iArr;
        this.r = strArr;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((TriggerBasedInvalidationTracker$createFlow$1) s((FlowCollector) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TriggerBasedInvalidationTracker$createFlow$1 triggerBasedInvalidationTracker$createFlow$1 = new TriggerBasedInvalidationTracker$createFlow$1(this.p, this.q, this.r, continuation);
        triggerBasedInvalidationTracker$createFlow$1.o = obj;
        return triggerBasedInvalidationTracker$createFlow$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x009b, code lost:
    
        if (kotlinx.coroutines.BuildersKt.e((kotlin.coroutines.CoroutineContext) r3, r4, r24) == r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009d, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0089, code lost:
    
        if (r3 == r1) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c5 A[Catch: all -> 0x00d6, TryCatch #2 {all -> 0x00d6, blocks: (B:17:0x00c2, B:19:0x00c5, B:21:0x00d3), top: B:16:0x00c2 }] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        FlowCollector flowCollector;
        long j;
        Object a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        int[] iArr = this.q;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.p;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    try {
                        ResultKt.b(obj);
                        throw new RuntimeException();
                    } catch (Throwable th) {
                        th = th;
                        j = 1;
                        ObservedTableStates observedTableStates = triggerBasedInvalidationTracker.h;
                        observedTableStates.getClass();
                        iArr.getClass();
                        observedTableStates.a.lock();
                        try {
                            while (r5 < r3) {
                            }
                            throw th;
                        } finally {
                        }
                    }
                }
                flowCollector = (FlowCollector) this.o;
                ResultKt.b(obj);
                j = 1;
                try {
                    ?? obj2 = new Object();
                    ObservedTableVersions observedTableVersions = triggerBasedInvalidationTracker.i;
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(obj2, flowCollector, this.r, iArr);
                    this.o = null;
                    this.n = 3;
                    observedTableVersions.a(anonymousClass2, this);
                    return coroutineSingletons;
                } catch (Throwable th2) {
                    th = th2;
                    ObservedTableStates observedTableStates2 = triggerBasedInvalidationTracker.h;
                    observedTableStates2.getClass();
                    iArr.getClass();
                    observedTableStates2.a.lock();
                    for (int i2 : iArr) {
                        long[] jArr = observedTableStates2.b;
                        long j2 = jArr[i2];
                        jArr[i2] = j2 - j;
                        if (j2 == j) {
                            observedTableStates2.d = true;
                        }
                    }
                    throw th;
                }
            }
            flowCollector = (FlowCollector) this.o;
            ResultKt.b(obj);
            a = obj;
            j = 1;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(triggerBasedInvalidationTracker, null);
            this.o = flowCollector;
            this.n = 2;
        } else {
            ResultKt.b(obj);
            flowCollector = (FlowCollector) this.o;
            ObservedTableStates observedTableStates3 = triggerBasedInvalidationTracker.h;
            observedTableStates3.getClass();
            iArr.getClass();
            observedTableStates3.a.lock();
            try {
                boolean z = false;
                for (int i3 : iArr) {
                    long[] jArr2 = observedTableStates3.b;
                    long j3 = jArr2[i3];
                    jArr2[i3] = j3 + 1;
                    if (j3 == 0) {
                        observedTableStates3.d = true;
                        z = true;
                    }
                }
                j = 1;
                if (z) {
                    WorkDatabase_Impl workDatabase_Impl = triggerBasedInvalidationTracker.a;
                    this.o = flowCollector;
                    this.n = 1;
                    a = DBUtil.a(workDatabase_Impl, this);
                }
                ?? obj22 = new Object();
                ObservedTableVersions observedTableVersions2 = triggerBasedInvalidationTracker.i;
                AnonymousClass2 anonymousClass22 = new AnonymousClass2(obj22, flowCollector, this.r, iArr);
                this.o = null;
                this.n = 3;
                observedTableVersions2.a(anonymousClass22, this);
                return coroutineSingletons;
            } finally {
            }
        }
    }
}
