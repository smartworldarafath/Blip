package androidx.compose.material;

import androidx.compose.runtime.SnapshotStateKt;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.AnchoredDraggableKt$restartable$2", f = "AnchoredDraggable.kt", l = {718}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class AnchoredDraggableKt$restartable$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Function0 p;
    public final /* synthetic */ Function2 q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.compose.material.AnchoredDraggableKt$restartable$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1<T> implements FlowCollector {
        public final /* synthetic */ Ref$ObjectRef j;
        public final /* synthetic */ CoroutineScope k;
        public final /* synthetic */ Function2 l;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @DebugMetadata(c = "androidx.compose.material.AnchoredDraggableKt$restartable$2$1$2", f = "AnchoredDraggable.kt", l = {725}, m = "invokeSuspend", v = 1)
        /* renamed from: androidx.compose.material.AnchoredDraggableKt$restartable$2$1$2, reason: invalid class name */
        /* loaded from: classes.dex */
        final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            public int n;
            public final /* synthetic */ Function2 o;
            public final /* synthetic */ Object p;
            public final /* synthetic */ CoroutineScope q;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(Function2 function2, Object obj, CoroutineScope coroutineScope, Continuation continuation) {
                super(2, continuation);
                this.o = function2;
                this.p = obj;
                this.q = coroutineScope;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation s(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.o, this.p, this.q, continuation);
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
                    if (this.o.n(this.p, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                CoroutineScopeKt.b(this.q, new AnchoredDragFinishedSignal());
                return Unit.a;
            }
        }

        public AnonymousClass1(Ref$ObjectRef ref$ObjectRef, CoroutineScope coroutineScope, Function2 function2) {
            this.j = ref$ObjectRef;
            this.k = coroutineScope;
            this.l = function2;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object r(Object obj, Continuation continuation) {
            AnchoredDraggableKt$restartable$2$1$emit$1 anchoredDraggableKt$restartable$2$1$emit$1;
            int i;
            if (continuation instanceof AnchoredDraggableKt$restartable$2$1$emit$1) {
                anchoredDraggableKt$restartable$2$1$emit$1 = (AnchoredDraggableKt$restartable$2$1$emit$1) continuation;
                int i2 = anchoredDraggableKt$restartable$2$1$emit$1.p;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    anchoredDraggableKt$restartable$2$1$emit$1.p = i2 - Integer.MIN_VALUE;
                    Object obj2 = anchoredDraggableKt$restartable$2$1$emit$1.n;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = anchoredDraggableKt$restartable$2$1$emit$1.p;
                    Ref$ObjectRef ref$ObjectRef = this.j;
                    if (i == 0) {
                        if (i == 1) {
                            obj = anchoredDraggableKt$restartable$2$1$emit$1.m;
                            ResultKt.b(obj2);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj2);
                        Job job = (Job) ref$ObjectRef.j;
                        if (job != null) {
                            job.n(new AnchoredDragFinishedSignal());
                            anchoredDraggableKt$restartable$2$1$emit$1.m = obj;
                            anchoredDraggableKt$restartable$2$1$emit$1.p = 1;
                            if (job.O(anchoredDraggableKt$restartable$2$1$emit$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                    }
                    CoroutineStart coroutineStart = CoroutineStart.m;
                    Function2 function2 = this.l;
                    CoroutineScope coroutineScope = this.k;
                    ref$ObjectRef.j = BuildersKt.c(coroutineScope, null, coroutineStart, new AnonymousClass2(function2, obj, coroutineScope, null), 1);
                    return Unit.a;
                }
            }
            anchoredDraggableKt$restartable$2$1$emit$1 = new AnchoredDraggableKt$restartable$2$1$emit$1(this, continuation);
            Object obj22 = anchoredDraggableKt$restartable$2$1$emit$1.n;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = anchoredDraggableKt$restartable$2$1$emit$1.p;
            Ref$ObjectRef ref$ObjectRef2 = this.j;
            if (i == 0) {
            }
            CoroutineStart coroutineStart2 = CoroutineStart.m;
            Function2 function22 = this.l;
            CoroutineScope coroutineScope2 = this.k;
            ref$ObjectRef2.j = BuildersKt.c(coroutineScope2, null, coroutineStart2, new AnonymousClass2(function22, obj, coroutineScope2, null), 1);
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchoredDraggableKt$restartable$2(Function0 function0, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.p = function0;
        this.q = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((AnchoredDraggableKt$restartable$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        AnchoredDraggableKt$restartable$2 anchoredDraggableKt$restartable$2 = new AnchoredDraggableKt$restartable$2(this.p, this.q, continuation);
        anchoredDraggableKt$restartable$2.o = obj;
        return anchoredDraggableKt$restartable$2;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
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
            CoroutineScope coroutineScope = (CoroutineScope) this.o;
            ?? obj2 = new Object();
            Flow l = SnapshotStateKt.l(this.p);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(obj2, coroutineScope, this.q);
            this.n = 1;
            if (((AbstractFlow) l).a(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
