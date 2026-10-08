package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.spatial.RectList;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.spatial.ThrottledCallbacks;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AwaitFirstLayoutModifier extends ModifierNodeElement<Node> {
    public Node b;
    public CompletableDeferred c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Node extends Modifier.Node {
        public ThrottledCallbacks.Entry x;

        public Node() {
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void Q0() {
            AwaitFirstLayoutModifier awaitFirstLayoutModifier = AwaitFirstLayoutModifier.this;
            awaitFirstLayoutModifier.b = this;
            if (awaitFirstLayoutModifier.c != null) {
                defpackage.b bVar = new defpackage.b(4, this, awaitFirstLayoutModifier);
                LayoutNode g = DelegatableNodeKt.g(this);
                int i = g.k;
                RectManager rectManager = LayoutNodeKt.a(g).getRectManager();
                ThrottledCallbacks throttledCallbacks = rectManager.d;
                throttledCallbacks.getClass();
                MutableIntObjectMap mutableIntObjectMap = throttledCallbacks.a;
                ThrottledCallbacks.Entry entry = new ThrottledCallbacks.Entry(i, this, bVar);
                Object b = mutableIntObjectMap.b(i);
                if (b == null) {
                    mutableIntObjectMap.i(i, entry);
                    b = entry;
                }
                ThrottledCallbacks.Entry entry2 = (ThrottledCallbacks.Entry) b;
                if (entry2 != entry) {
                    while (true) {
                        ThrottledCallbacks.Entry entry3 = entry2.d;
                        if (entry3 == null) {
                            break;
                        } else {
                            entry2 = entry3;
                        }
                    }
                    entry2.d = entry;
                }
                LayoutNode g2 = DelegatableNodeKt.g(this.j);
                if (RectManager.d(g2)) {
                    RectList rectList = rectManager.c;
                    int e = rectManager.e(g2);
                    long[] jArr = rectList.a;
                    int i2 = e + 2;
                    jArr[i2] = (jArr[i2] & 8070450532247928831L) | (-8070450532247928832L);
                }
                rectManager.f = true;
                rectManager.k();
                this.x = entry;
            }
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void R0() {
            AwaitFirstLayoutModifier awaitFirstLayoutModifier = AwaitFirstLayoutModifier.this;
            if (awaitFirstLayoutModifier.b == this) {
                awaitFirstLayoutModifier.b = null;
            }
            ThrottledCallbacks.Entry entry = this.x;
            if (entry != null) {
                entry.b();
            }
            this.x = null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new Node();
    }

    public final int hashCode() {
        return 234;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final /* bridge */ /* synthetic */ void i(Modifier.Node node) {
    }

    public final Object k(ContinuationImpl continuationImpl) {
        CompletableDeferred completableDeferred = this.c;
        if (completableDeferred == null) {
            completableDeferred = CompletableDeferredKt.a(null);
            this.c = completableDeferred;
            Node node = this.b;
            if (node != null && node.w) {
                defpackage.b bVar = new defpackage.b(4, node, AwaitFirstLayoutModifier.this);
                LayoutNode g = DelegatableNodeKt.g(node);
                int i = g.k;
                RectManager rectManager = LayoutNodeKt.a(g).getRectManager();
                ThrottledCallbacks throttledCallbacks = rectManager.d;
                throttledCallbacks.getClass();
                MutableIntObjectMap mutableIntObjectMap = throttledCallbacks.a;
                ThrottledCallbacks.Entry entry = new ThrottledCallbacks.Entry(i, node, bVar);
                Object b = mutableIntObjectMap.b(i);
                if (b == null) {
                    mutableIntObjectMap.i(i, entry);
                    b = entry;
                }
                ThrottledCallbacks.Entry entry2 = (ThrottledCallbacks.Entry) b;
                if (entry2 != entry) {
                    while (true) {
                        ThrottledCallbacks.Entry entry3 = entry2.d;
                        if (entry3 == null) {
                            break;
                        }
                        entry2 = entry3;
                    }
                    entry2.d = entry;
                }
                LayoutNode g2 = DelegatableNodeKt.g(node.j);
                if (RectManager.d(g2)) {
                    RectList rectList = rectManager.c;
                    int e = rectManager.e(g2);
                    long[] jArr = rectList.a;
                    int i2 = e + 2;
                    jArr[i2] = (jArr[i2] & 8070450532247928831L) | (-8070450532247928832L);
                }
                rectManager.f = true;
                rectManager.k();
                node.x = entry;
            }
        }
        Object Z = completableDeferred.Z(continuationImpl);
        if (Z == CoroutineSingletons.j) {
            return Z;
        }
        return Unit.a;
    }
}
