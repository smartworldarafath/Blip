package androidx.work.impl.constraints;

import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.model.WorkSpec;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.work.impl.constraints.WorkConstraintsTrackerKt$listen$1", f = "WorkConstraintsTracker.kt", l = {69}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class WorkConstraintsTrackerKt$listen$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ WorkConstraintsTracker o;
    public final /* synthetic */ WorkSpec p;
    public final /* synthetic */ OnConstraintsStateChangedListener q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkConstraintsTrackerKt$listen$1(WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, OnConstraintsStateChangedListener onConstraintsStateChangedListener, Continuation continuation) {
        super(2, continuation);
        this.o = workConstraintsTracker;
        this.p = workSpec;
        this.q = onConstraintsStateChangedListener;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((WorkConstraintsTrackerKt$listen$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new WorkConstraintsTrackerKt$listen$1(this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        final WorkSpec workSpec;
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
            WorkConstraintsTracker workConstraintsTracker = this.o;
            workConstraintsTracker.getClass();
            ArrayList arrayList = workConstraintsTracker.a;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                workSpec = this.p;
                if (!hasNext) {
                    break;
                }
                Object next = it.next();
                if (((ConstraintController) next).b(workSpec)) {
                    arrayList2.add(next);
                }
            }
            ArrayList arrayList3 = new ArrayList(CollectionsKt.m(arrayList2, 10));
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                arrayList3.add(((ConstraintController) it2.next()).a(workSpec.j));
            }
            final Flow[] flowArr = (Flow[]) CollectionsKt.X(arrayList3).toArray(new Flow[0]);
            Flow i2 = FlowKt.i(new Flow<ConstraintsState>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1

                /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                @DebugMetadata(c = "androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3", f = "WorkConstraintsTracker.kt", l = {288}, m = "invokeSuspend")
                /* renamed from: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3, reason: invalid class name */
                /* loaded from: classes.dex */
                public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ConstraintsState>, ConstraintsState[], Continuation<? super Unit>, Object> {
                    public int n;
                    public /* synthetic */ FlowCollector o;
                    public /* synthetic */ Object[] p;

                    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.jvm.internal.SuspendLambda, androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3] */
                    @Override // kotlin.jvm.functions.Function3
                    public final Object f(Object obj, Object obj2, Object obj3) {
                        ?? suspendLambda = new SuspendLambda(3, (Continuation) obj3);
                        suspendLambda.o = (FlowCollector) obj;
                        suspendLambda.p = (Object[]) obj2;
                        return suspendLambda.v(Unit.a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object v(Object obj) {
                        ConstraintsState constraintsState;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                        int i = this.n;
                        ConstraintsState constraintsState2 = null;
                        if (i != 0) {
                            if (i == 1) {
                                ResultKt.b(obj);
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            ResultKt.b(obj);
                            FlowCollector flowCollector = this.o;
                            ConstraintsState[] constraintsStateArr = (ConstraintsState[]) this.p;
                            int length = constraintsStateArr.length;
                            int i2 = 0;
                            while (true) {
                                constraintsState = ConstraintsState.ConstraintsMet.a;
                                if (i2 >= length) {
                                    break;
                                }
                                ConstraintsState constraintsState3 = constraintsStateArr[i2];
                                if (!Intrinsics.a(constraintsState3, constraintsState)) {
                                    constraintsState2 = constraintsState3;
                                    break;
                                }
                                i2++;
                            }
                            if (constraintsState2 != null) {
                                constraintsState = constraintsState2;
                            }
                            this.n = 1;
                            if (flowCollector.r(constraintsState, this) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                        return Unit.a;
                    }
                }

                /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function3] */
                @Override // kotlinx.coroutines.flow.Flow
                public final Object a(FlowCollector flowCollector, Continuation continuation) {
                    final Flow[] flowArr2 = flowArr;
                    Object a = CombineKt.a(continuation, new Function0<ConstraintsState[]>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1.2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object a() {
                            return new ConstraintsState[flowArr2.length];
                        }
                    }, new SuspendLambda(3, null), flowCollector, flowArr2);
                    if (a == CoroutineSingletons.j) {
                        return a;
                    }
                    return Unit.a;
                }
            });
            final OnConstraintsStateChangedListener onConstraintsStateChangedListener = this.q;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.work.impl.constraints.WorkConstraintsTrackerKt$listen$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object r(Object obj2, Continuation continuation) {
                    OnConstraintsStateChangedListener.this.d(workSpec, (ConstraintsState) obj2);
                    return Unit.a;
                }
            };
            this.n = 1;
            if (i2.a(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
