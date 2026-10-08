package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutScrollDeltaBetweenPasses {
    public Job a;
    public AnimationState b = AnimationStateKt.a();

    public final void a() {
        Job job = this.a;
        if (job != null) {
            ((JobSupport) job).n(null);
        }
        this.b = new AnimationState(VectorConvertersKt.a, Float.valueOf(0.0f), null, 60);
    }

    public final void b(float f, Density density, CoroutineScope coroutineScope) {
        Function1 function1;
        if (f <= density.i0(1.0f)) {
            return;
        }
        Snapshot a = Snapshot.Companion.a();
        if (a != null) {
            function1 = a.e();
        } else {
            function1 = null;
        }
        Snapshot b = Snapshot.Companion.b(a);
        try {
            float floatValue = ((Number) ((SnapshotMutableStateImpl) this.b.k).getValue()).floatValue();
            Job job = this.a;
            if (job != null) {
                ((JobSupport) job).n(null);
            }
            AnimationState animationState = this.b;
            if (animationState.o) {
                this.b = AnimationStateKt.c(animationState, floatValue - f, 0.0f, 30);
            } else {
                this.b = new AnimationState(VectorConvertersKt.a, Float.valueOf(-f), null, 60);
            }
            this.a = BuildersKt.c(coroutineScope, null, null, new LazyLayoutScrollDeltaBetweenPasses$updateScrollDeltaForApproach$2$1(this, null), 3);
            Snapshot.Companion.e(a, b, function1);
        } catch (Throwable th) {
            Snapshot.Companion.e(a, b, function1);
            throw th;
        }
    }
}
