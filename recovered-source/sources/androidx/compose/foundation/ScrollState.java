package androidx.compose.foundation;

import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import defpackage.ke;
import defpackage.le;
import defpackage.ma;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollState implements ScrollableState {
    public static final SaverKt$Saver$1 k = new SaverKt$Saver$1(new ke(26), new le(14));
    public final MutableIntState a;
    public float g;
    public final State i;
    public final State j;
    public final MutableIntState b = SnapshotIntStateKt.a(0);
    public final MutableIntState c = SnapshotIntStateKt.a(0);
    public final MutableState d = SnapshotStateKt.g(Boolean.FALSE);
    public final MutableInteractionSource e = InteractionSourceKt.a();
    public final MutableIntState f = SnapshotIntStateKt.a(Integer.MAX_VALUE);
    public final ScrollableState h = ScrollableStateKt.a(new ma(16, this));

    public ScrollState(int i) {
        this.a = SnapshotIntStateKt.a(i);
        final int i2 = 0;
        this.i = SnapshotStateKt.e(new Function0(this) { // from class: ve
            public final /* synthetic */ ScrollState k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i3 = i2;
                boolean z = false;
                ScrollState scrollState = this.k;
                switch (i3) {
                    case 0:
                        if (scrollState.f() < ((SnapshotMutableIntStateImpl) scrollState.f).j()) {
                            z = true;
                        }
                        return Boolean.valueOf(z);
                    default:
                        if (scrollState.f() > 0) {
                            z = true;
                        }
                        return Boolean.valueOf(z);
                }
            }
        });
        final int i3 = 1;
        this.j = SnapshotStateKt.e(new Function0(this) { // from class: ve
            public final /* synthetic */ ScrollState k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i32 = i3;
                boolean z = false;
                ScrollState scrollState = this.k;
                switch (i32) {
                    case 0:
                        if (scrollState.f() < ((SnapshotMutableIntStateImpl) scrollState.f).j()) {
                            z = true;
                        }
                        return Boolean.valueOf(z);
                    default:
                        if (scrollState.f() > 0) {
                            z = true;
                        }
                        return Boolean.valueOf(z);
                }
            }
        });
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return this.h.a();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean b() {
        return ((Boolean) this.j.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        Object c = this.h.c(mutatePriority, function2, continuationImpl);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean d() {
        return ((Boolean) this.i.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f) {
        return this.h.e(f);
    }

    public final int f() {
        return ((SnapshotMutableIntStateImpl) this.a).j();
    }
}
