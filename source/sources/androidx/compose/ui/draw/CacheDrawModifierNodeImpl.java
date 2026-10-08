package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CacheDrawModifierNodeImpl extends Modifier.Node implements CacheDrawModifierNode, ObserverModifierNode, BuildDrawCacheParams {
    public final CacheDrawScope x;
    public boolean y;
    public Function1 z;

    public CacheDrawModifierNodeImpl(CacheDrawScope cacheDrawScope, Function1 function1) {
        this.x = cacheDrawScope;
        this.z = function1;
        cacheDrawScope.j = this;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void R() {
        w();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void S0() {
        w();
    }

    @Override // androidx.compose.ui.node.DelegatableNode
    public final void W() {
        w();
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void g() {
        w();
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final Density getDensity() {
        return DelegatableNodeKt.g(this).H;
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final LayoutDirection getLayoutDirection() {
        return DelegatableNodeKt.g(this).I;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        boolean z = this.y;
        final CacheDrawScope cacheDrawScope = this.x;
        if (!z) {
            cacheDrawScope.k = null;
            ObserverModifierNodeKt.a(this, new Function0() { // from class: androidx.compose.ui.draw.a
                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    CacheDrawModifierNodeImpl.this.z.b(cacheDrawScope);
                    return Unit.a;
                }
            });
            if (cacheDrawScope.k != null) {
                this.y = true;
            } else {
                throw q.p("DrawResult not defined, did you forget to call onDraw?");
            }
        }
        DrawResult drawResult = cacheDrawScope.k;
        drawResult.getClass();
        drawResult.a.b(layoutNodeDrawScope);
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final long i() {
        return IntSizeKt.a(DelegatableNodeKt.e(this, 4).l);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void s0() {
        w();
    }

    @Override // androidx.compose.ui.draw.CacheDrawModifierNode
    public final void w() {
        this.y = false;
        this.x.k = null;
        DrawModifierNodeKt.a(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
    }
}
