package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.IntOffset;
import defpackage.r1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutItemAnimation {
    public final CoroutineScope a;
    public final GraphicsContext b;
    public final r1 c;
    public FiniteAnimationSpec d;
    public boolean e;
    public final MutableState f;
    public final MutableState g;
    public final MutableState h;
    public final MutableState i;
    public long j;
    public long k;
    public long l;
    public GraphicsLayer m;
    public final Animatable n;
    public final Animatable o;
    public final MutableState p;

    public LazyLayoutItemAnimation(CoroutineScope coroutineScope, GraphicsContext graphicsContext, r1 r1Var) {
        GraphicsLayer graphicsLayer;
        this.a = coroutineScope;
        this.b = graphicsContext;
        this.c = r1Var;
        Boolean bool = Boolean.FALSE;
        this.f = SnapshotStateKt.g(bool);
        this.g = SnapshotStateKt.g(bool);
        this.h = SnapshotStateKt.g(bool);
        this.i = SnapshotStateKt.g(bool);
        this.j = 9223372034707292159L;
        this.k = 0L;
        this.l = 9223372034707292159L;
        Object obj = null;
        if (graphicsContext != null) {
            graphicsLayer = graphicsContext.b();
        } else {
            graphicsLayer = null;
        }
        this.m = graphicsLayer;
        int i = 12;
        this.n = new Animatable(new IntOffset(0L), VectorConvertersKt.g, obj, i);
        this.o = new Animatable(Float.valueOf(1.0f), VectorConvertersKt.a, obj, i);
        this.p = SnapshotStateKt.g(new IntOffset(0L));
    }

    public final void a() {
        GraphicsLayer graphicsLayer = this.m;
        ((Boolean) ((SnapshotMutableStateImpl) this.g).getValue()).booleanValue();
        if (c()) {
            if (graphicsLayer != null) {
                graphicsLayer.e(1.0f);
            }
            BuildersKt.c(this.a, null, null, new LazyLayoutItemAnimation$animateAppearance$1(this, null), 3);
        }
    }

    public final void b() {
        if (((Boolean) ((SnapshotMutableStateImpl) this.f).getValue()).booleanValue()) {
            BuildersKt.c(this.a, null, null, new LazyLayoutItemAnimation$cancelPlacementAnimation$1(this, null), 3);
        }
    }

    public final boolean c() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.h).getValue()).booleanValue();
    }

    public final void d() {
        GraphicsContext graphicsContext;
        boolean booleanValue = ((Boolean) ((SnapshotMutableStateImpl) this.f).getValue()).booleanValue();
        CoroutineScope coroutineScope = this.a;
        if (booleanValue) {
            e(false);
            BuildersKt.c(coroutineScope, null, null, new LazyLayoutItemAnimation$release$1(this, null), 3);
        }
        MutableState mutableState = this.g;
        if (((Boolean) ((SnapshotMutableStateImpl) mutableState).getValue()).booleanValue()) {
            ((SnapshotMutableStateImpl) mutableState).setValue(false);
            BuildersKt.c(coroutineScope, null, null, new LazyLayoutItemAnimation$release$2(this, null), 3);
        }
        if (c()) {
            ((SnapshotMutableStateImpl) this.h).setValue(false);
            BuildersKt.c(coroutineScope, null, null, new LazyLayoutItemAnimation$release$3(this, null), 3);
        }
        this.e = false;
        f(0L);
        this.j = 9223372034707292159L;
        GraphicsLayer graphicsLayer = this.m;
        if (graphicsLayer != null && (graphicsContext = this.b) != null) {
            graphicsContext.a(graphicsLayer);
        }
        this.m = null;
        this.d = null;
    }

    public final void e(boolean z) {
        ((SnapshotMutableStateImpl) this.f).setValue(Boolean.valueOf(z));
    }

    public final void f(long j) {
        ((SnapshotMutableStateImpl) this.p).setValue(new IntOffset(j));
    }
}
