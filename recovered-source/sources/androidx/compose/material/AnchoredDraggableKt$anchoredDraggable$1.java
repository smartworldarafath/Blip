package androidx.compose.material;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.AnchoredDraggableKt$anchoredDraggable$1", f = "AnchoredDraggable.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class AnchoredDraggableKt$anchoredDraggable$1 extends SuspendLambda implements Function3<CoroutineScope, Float, Continuation<? super Unit>, Object> {
    public /* synthetic */ CoroutineScope n;
    public /* synthetic */ float o;
    public final /* synthetic */ AnchoredDraggableState p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.material.AnchoredDraggableKt$anchoredDraggable$1$1", f = "AnchoredDraggable.kt", l = {180}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.material.AnchoredDraggableKt$anchoredDraggable$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ AnchoredDraggableState o;
        public final /* synthetic */ float p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AnchoredDraggableState anchoredDraggableState, float f, Continuation continuation) {
            super(2, continuation);
            this.o = anchoredDraggableState;
            this.p = f;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, this.p, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            Object b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            Unit unit = Unit.a;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                    return unit;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            this.n = 1;
            AnchoredDraggableState anchoredDraggableState = this.o;
            Object value = ((SnapshotMutableStateImpl) anchoredDraggableState.g).getValue();
            float f = anchoredDraggableState.f();
            float f2 = this.p;
            Object c = anchoredDraggableState.c(f, f2, value);
            if (!((Boolean) anchoredDraggableState.d.b(c)).booleanValue() ? (b = AnchoredDraggableKt.b(anchoredDraggableState, value, f2, this)) != coroutineSingletons : (b = AnchoredDraggableKt.b(anchoredDraggableState, c, f2, this)) != coroutineSingletons) {
                b = unit;
            }
            if (b == coroutineSingletons) {
                return coroutineSingletons;
            }
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchoredDraggableKt$anchoredDraggable$1(AnchoredDraggableState anchoredDraggableState, Continuation continuation) {
        super(3, continuation);
        this.p = anchoredDraggableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        float floatValue = ((Number) obj2).floatValue();
        AnchoredDraggableKt$anchoredDraggable$1 anchoredDraggableKt$anchoredDraggable$1 = new AnchoredDraggableKt$anchoredDraggable$1(this.p, (Continuation) obj3);
        anchoredDraggableKt$anchoredDraggable$1.n = (CoroutineScope) obj;
        anchoredDraggableKt$anchoredDraggable$1.o = floatValue;
        Unit unit = Unit.a;
        anchoredDraggableKt$anchoredDraggable$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        BuildersKt.c(this.n, null, null, new AnonymousClass1(this.p, this.o, null), 3);
        return Unit.a;
    }
}
