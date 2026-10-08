package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.rf;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SliderDraggableState implements DraggableState {
    public final rf a;
    public final MutableState b = SnapshotStateKt.g(Boolean.FALSE);
    public final SliderDraggableState$dragScope$1 c = new DragScope() { // from class: androidx.compose.material.SliderDraggableState$dragScope$1
        @Override // androidx.compose.foundation.gestures.DragScope
        public final void a(float f) {
            SliderDraggableState.this.a.b(Float.valueOf(f));
        }
    };
    public final MutatorMutex d = new MutatorMutex();

    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.compose.material.SliderDraggableState$dragScope$1] */
    public SliderDraggableState(rf rfVar) {
        this.a = rfVar;
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public final Object a(MutatePriority mutatePriority, Function2 function2, SuspendLambda suspendLambda) {
        Object c = CoroutineScopeKt.c(new SliderDraggableState$drag$2(this, mutatePriority, function2, null), suspendLambda);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }
}
