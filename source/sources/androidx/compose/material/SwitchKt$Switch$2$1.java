package androidx.compose.material;

import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.SwitchKt$Switch$2$1", f = "Switch.kt", l = {138}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class SwitchKt$Switch$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ AnchoredDraggableState p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchKt$Switch$2$1(boolean z, AnchoredDraggableState anchoredDraggableState, Continuation continuation) {
        super(2, continuation);
        this.o = z;
        this.p = anchoredDraggableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SwitchKt$Switch$2$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SwitchKt$Switch$2$1(this.o, this.p, continuation);
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
            AnchoredDraggableState anchoredDraggableState = this.p;
            boolean booleanValue = ((Boolean) ((SnapshotMutableStateImpl) anchoredDraggableState.g).getValue()).booleanValue();
            boolean z = this.o;
            if (z != booleanValue) {
                Boolean valueOf = Boolean.valueOf(z);
                this.n = 1;
                if (AnchoredDraggableKt.b(anchoredDraggableState, valueOf, ((SnapshotMutableFloatStateImpl) anchoredDraggableState.k).j(), this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        }
        return Unit.a;
    }
}
