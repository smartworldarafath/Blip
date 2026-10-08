package androidx.compose.material;

import defpackage.f0;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.AnchoredDraggableState$anchoredDrag$4", f = "AnchoredDraggable.kt", l = {572}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class AnchoredDraggableState$anchoredDrag$4 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ AnchoredDraggableState o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Function4 q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.material.AnchoredDraggableState$anchoredDrag$4$2", f = "AnchoredDraggable.kt", l = {574}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.material.AnchoredDraggableState$anchoredDrag$4$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2<Pair<? extends DraggableAnchors<Object>, Object>, Continuation<? super Unit>, Object> {
        public int n;
        public /* synthetic */ Object o;
        public final /* synthetic */ Function4 p;
        public final /* synthetic */ AnchoredDraggableState q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Function4 function4, AnchoredDraggableState anchoredDraggableState, Continuation continuation) {
            super(2, continuation);
            this.p = function4;
            this.q = anchoredDraggableState;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass2) s((Pair) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.p, this.q, continuation);
            anonymousClass2.o = obj;
            return anonymousClass2;
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
                Pair pair = (Pair) this.o;
                DraggableAnchors draggableAnchors = (DraggableAnchors) pair.j;
                Object obj2 = pair.k;
                AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = this.q.n;
                this.n = 1;
                if (this.p.j(anchoredDraggableState$anchoredDragScope$1, draggableAnchors, obj2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchoredDraggableState$anchoredDrag$4(AnchoredDraggableState anchoredDraggableState, Object obj, Function4 function4, Continuation continuation) {
        super(1, continuation);
        this.o = anchoredDraggableState;
        this.p = obj;
        this.q = function4;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Object obj2 = this.p;
        Function4 function4 = this.q;
        return new AnchoredDraggableState$anchoredDrag$4(this.o, obj2, function4, (Continuation) obj).v(Unit.a);
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
            Object obj2 = this.p;
            AnchoredDraggableState anchoredDraggableState = this.o;
            anchoredDraggableState.h(obj2);
            f0 f0Var = new f0(anchoredDraggableState, 2);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.q, anchoredDraggableState, null);
            this.n = 1;
            if (AnchoredDraggableKt.a(f0Var, anonymousClass2, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
