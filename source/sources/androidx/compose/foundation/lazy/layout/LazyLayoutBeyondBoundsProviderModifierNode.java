package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.layout.BeyondBoundsLayoutProviderModifierNode;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import defpackage.k8;
import defpackage.u2;
import java.util.Map;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutBeyondBoundsProviderModifierNode extends Modifier.Node implements LayoutModifierNode, BeyondBoundsLayoutProviderModifierNode, BeyondBoundsLayout {
    public static final LazyLayoutBeyondBoundsProviderModifierNode$Companion$emptyBeyondBoundsScope$1 A = new Object();
    public LazyLayoutBeyondBoundsState x;
    public LazyLayoutBeyondBoundsInfo y;
    public Orientation z;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x001b, code lost:
    
        if (r4.z == androidx.compose.foundation.gestures.Orientation.j) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x000d, code lost:
    
        if (r4.z == androidx.compose.foundation.gestures.Orientation.k) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean Y0(LazyLayoutBeyondBoundsInfo.Interval interval, int i) {
        if (i != 5 && i != 6) {
            if (i != 3 && i != 4) {
                if (i != 1 && i != 2) {
                    u2.l("Lazy list does not support beyond bounds layout for the specified direction");
                    return false;
                }
            }
            if (!Z0(i) ? interval.a <= 0 : interval.b >= this.x.a() - 1) {
                return false;
            }
            return true;
        }
    }

    public final boolean Z0(int i) {
        if (i == 1) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        if (i == 5) {
            return false;
        }
        if (i == 6) {
            return true;
        }
        if (i == 3) {
            int ordinal = DelegatableNodeKt.g(this).I.ordinal();
            if (ordinal == 0) {
                return false;
            }
            if (ordinal == 1) {
                return true;
            }
            k8.e();
            return false;
        }
        if (i == 4) {
            int ordinal2 = DelegatableNodeKt.g(this).I.ordinal();
            if (ordinal2 == 0) {
                return true;
            }
            if (ordinal2 == 1) {
                return false;
            }
            k8.e();
            return false;
        }
        u2.l("Lazy list does not support beyond bounds layout for the specified direction");
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        Placeable w = measurable.w(j);
        int i = w.j;
        int i2 = w.k;
        defpackage.f fVar = new defpackage.f(w, 7);
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, fVar);
    }
}
