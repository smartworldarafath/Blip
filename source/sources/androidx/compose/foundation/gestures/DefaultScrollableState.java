package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultScrollableState implements ScrollableState {
    public final Function1 a;
    public final DefaultScrollableState$scrollScope$1 b = new ScrollScope() { // from class: androidx.compose.foundation.gestures.DefaultScrollableState$scrollScope$1
        @Override // androidx.compose.foundation.gestures.ScrollScope
        public final float f(float f) {
            boolean z;
            if (Float.isNaN(f)) {
                return 0.0f;
            }
            DefaultScrollableState defaultScrollableState = DefaultScrollableState.this;
            float floatValue = ((Number) defaultScrollableState.a.b(Float.valueOf(f))).floatValue();
            MutableState mutableState = defaultScrollableState.e;
            boolean z2 = false;
            if (floatValue > 0.0f) {
                z = true;
            } else {
                z = false;
            }
            ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.valueOf(z));
            MutableState mutableState2 = defaultScrollableState.f;
            if (floatValue < 0.0f) {
                z2 = true;
            }
            ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(z2));
            return floatValue;
        }
    };
    public final MutatorMutex c = new MutatorMutex();
    public final MutableState d;
    public final MutableState e;
    public final MutableState f;

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.foundation.gestures.DefaultScrollableState$scrollScope$1] */
    public DefaultScrollableState(Function1 function1) {
        this.a = function1;
        Boolean bool = Boolean.FALSE;
        this.d = SnapshotStateKt.g(bool);
        this.e = SnapshotStateKt.g(bool);
        this.f = SnapshotStateKt.g(bool);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.d).getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        Object c = CoroutineScopeKt.c(new DefaultScrollableState$scroll$2(this, mutatePriority, function2, null), continuationImpl);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f) {
        return ((Number) this.a.b(Float.valueOf(f))).floatValue();
    }
}
