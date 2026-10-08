package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.f0;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.SwitchKt$Switch$1$1", f = "Switch.kt", l = {129}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class SwitchKt$Switch$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ AnchoredDraggableState o;
    public final /* synthetic */ MutableState p;
    public final /* synthetic */ MutableState q;
    public final /* synthetic */ MutableState r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.material.SwitchKt$Switch$1$1$2", f = "Switch.kt", l = {}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.material.SwitchKt$Switch$1$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        public /* synthetic */ boolean n;
        public final /* synthetic */ MutableState o;
        public final /* synthetic */ MutableState p;
        public final /* synthetic */ MutableState q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(MutableState mutableState, MutableState mutableState2, MutableState mutableState3, Continuation continuation) {
            super(2, continuation);
            this.o = mutableState;
            this.p = mutableState2;
            this.q = mutableState3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            AnonymousClass2 anonymousClass2 = (AnonymousClass2) s(bool, (Continuation) obj2);
            Unit unit = Unit.a;
            anonymousClass2.v(unit);
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.o, this.p, this.q, continuation);
            anonymousClass2.n = ((Boolean) obj).booleanValue();
            return anonymousClass2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            boolean z = this.n;
            float f = SwitchKt.a;
            if (((Boolean) this.o.getValue()).booleanValue() != z) {
                Function1 function1 = (Function1) this.p.getValue();
                if (function1 != null) {
                    function1.b(Boolean.valueOf(z));
                }
                this.q.setValue(Boolean.valueOf(!((Boolean) r1.getValue()).booleanValue()));
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchKt$Switch$1$1(AnchoredDraggableState anchoredDraggableState, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, Continuation continuation) {
        super(2, continuation);
        this.o = anchoredDraggableState;
        this.p = mutableState;
        this.q = mutableState2;
        this.r = mutableState3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SwitchKt$Switch$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SwitchKt$Switch$1$1(this.o, this.p, this.q, this.r, continuation);
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
            Flow l = SnapshotStateKt.l(new f0(this.o, 4));
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.p, this.q, this.r, null);
            this.n = 1;
            if (FlowKt.h(l, anonymousClass2, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
