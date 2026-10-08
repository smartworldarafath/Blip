package androidx.compose.animation.core;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import defpackage.d;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InfiniteTransition {
    public final MutableVector a = new MutableVector(new TransitionAnimationState[16]);
    public final MutableState b = SnapshotStateKt.g(Boolean.FALSE);
    public long c = Long.MIN_VALUE;
    public final MutableState d = SnapshotStateKt.g(Boolean.TRUE);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class TransitionAnimationState<T, V extends AnimationVector> implements State<T> {
        public Number j;
        public Number k;
        public final TwoWayConverter l;
        public final MutableState m;
        public TargetBasedAnimation n;
        public boolean o;
        public boolean p;
        public long q;

        public TransitionAnimationState(Number number, Number number2, TwoWayConverter twoWayConverter, InfiniteRepeatableSpec infiniteRepeatableSpec) {
            this.j = number;
            this.k = number2;
            this.l = twoWayConverter;
            this.m = SnapshotStateKt.g(number);
            this.n = new TargetBasedAnimation(infiniteRepeatableSpec, twoWayConverter, this.j, this.k, null);
        }

        @Override // androidx.compose.runtime.State
        public final Object getValue() {
            return ((SnapshotMutableStateImpl) this.m).getValue();
        }
    }

    public final void a(int i, Composer composer) {
        int i2;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-318043801);
        if (gapComposer.h(this)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.g(null);
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            if (!((Boolean) ((SnapshotMutableStateImpl) this.d).getValue()).booleanValue() && !((Boolean) ((SnapshotMutableStateImpl) this.b).getValue()).booleanValue()) {
                gapComposer.W(-143455237);
                gapComposer.p(false);
            } else {
                gapComposer.W(-144841960);
                boolean h = gapComposer.h(this);
                Object K2 = gapComposer.K();
                if (h || K2 == composer$Companion$Empty$1) {
                    K2 = new InfiniteTransition$run$1$1(mutableState, this, null);
                    gapComposer.g0(K2);
                }
                EffectsKt.e(gapComposer, this, (Function2) K2);
                gapComposer.p(false);
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new d(i, 12, this);
        }
    }
}
