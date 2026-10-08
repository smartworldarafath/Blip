package androidx.compose.foundation;

import androidx.compose.foundation.ScrollNode;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import defpackage.de;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollNode extends Modifier.Node implements LayoutModifierNode, SemanticsModifierNode {
    public ScrollState x;
    public boolean y;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.n;
        KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
        KProperty kProperty = kPropertyArr2[6];
        Boolean bool = Boolean.TRUE;
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey, bool);
        final int i = 0;
        final int i2 = 1;
        ScrollAxisRange scrollAxisRange = new ScrollAxisRange(new Function0(this) { // from class: ue
            public final /* synthetic */ ScrollNode k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int f;
                int i3 = i;
                ScrollNode scrollNode = this.k;
                switch (i3) {
                    case 0:
                        f = scrollNode.x.f();
                        break;
                    default:
                        f = ((SnapshotMutableIntStateImpl) scrollNode.x.f).j();
                        break;
                }
                return Float.valueOf(f);
            }
        }, new Function0(this) { // from class: ue
            public final /* synthetic */ ScrollNode k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int f;
                int i3 = i2;
                ScrollNode scrollNode = this.k;
                switch (i3) {
                    case 0:
                        f = scrollNode.x.f();
                        break;
                    default:
                        f = ((SnapshotMutableIntStateImpl) scrollNode.x.f).j();
                        break;
                }
                return Float.valueOf(f);
            }
        });
        if (this.y) {
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.w;
            KProperty kProperty2 = kPropertyArr2[13];
            semanticsPropertyKey2.getClass();
            semanticsPropertyReceiver.b(semanticsPropertyKey2, scrollAxisRange);
            return;
        }
        SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.v;
        KProperty kProperty3 = kPropertyArr2[12];
        semanticsPropertyKey3.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey3, scrollAxisRange);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (this.y) {
            i = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.m(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (!this.y) {
            i = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.V(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int d(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (this.y) {
            i = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.p(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (!this.y) {
            i = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.b(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Orientation orientation;
        int g;
        Function1 function1;
        int i;
        int i2;
        Map map;
        if (this.y) {
            orientation = Orientation.j;
        } else {
            orientation = Orientation.k;
        }
        CheckScrollableContainerConstraintsKt.a(j, orientation);
        int i3 = Integer.MAX_VALUE;
        if (this.y) {
            g = Integer.MAX_VALUE;
        } else {
            g = Constraints.g(j);
        }
        if (this.y) {
            i3 = Constraints.h(j);
        }
        Placeable w = measurable.w(Constraints.a(j, 0, i3, 0, g, 5));
        int i4 = w.j;
        int h = Constraints.h(j);
        if (i4 > h) {
            i4 = h;
        }
        int i5 = w.k;
        int g2 = Constraints.g(j);
        if (i5 > g2) {
            i5 = g2;
        }
        int i6 = w.k - i5;
        int i7 = w.j - i4;
        if (!this.y) {
            i6 = i7;
        }
        ScrollState scrollState = this.x;
        ((SnapshotMutableIntStateImpl) scrollState.f).k(i6);
        Snapshot a = Snapshot.Companion.a();
        if (a != null) {
            function1 = a.e();
        } else {
            function1 = null;
        }
        Snapshot b = Snapshot.Companion.b(a);
        try {
            if (scrollState.f() > i6) {
                ((SnapshotMutableIntStateImpl) scrollState.a).k(i6);
            }
            Snapshot.Companion.e(a, b, function1);
            ScrollState scrollState2 = this.x;
            if (this.y) {
                i = i5;
            } else {
                i = i4;
            }
            ((SnapshotMutableIntStateImpl) scrollState2.b).k(i);
            ScrollState scrollState3 = this.x;
            if (this.y) {
                i2 = w.k;
            } else {
                i2 = w.j;
            }
            ((SnapshotMutableIntStateImpl) scrollState3.c).k(i2);
            ((SnapshotMutableStateImpl) this.x.d).setValue(Boolean.FALSE);
            de deVar = new de(i6, 1, this, w);
            map = EmptyMap.j;
            return measureScope.B(i4, i5, map, deVar);
        } catch (Throwable th) {
            Snapshot.Companion.e(a, b, function1);
            throw th;
        }
    }
}
