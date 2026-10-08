package androidx.compose.foundation;

import android.view.View;
import androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.fh;
import defpackage.hc;
import defpackage.ua;
import kotlin.Unit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MagnifierNode extends Modifier.Node implements GlobalPositionAwareModifierNode, DrawModifierNode, SemanticsModifierNode, ObserverModifierNode {
    public View A;
    public Density B;
    public PlatformMagnifier C;
    public State E;
    public IntSize G;
    public BufferedChannel H;
    public hc x;
    public fh y;
    public PlatformMagnifierFactory z;
    public final MutableState D = SnapshotStateKt.f(null, SnapshotStateKt.h());
    public long F = 9205357640488583168L;

    public MagnifierNode(hc hcVar, fh fhVar, PlatformMagnifierFactory platformMagnifierFactory) {
        this.x = hcVar;
        this.y = fhVar;
        this.z = platformMagnifierFactory;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        semanticsPropertyReceiver.b(Magnifier_androidKt.a, new ua(this, 1));
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void K0(NodeCoordinator nodeCoordinator) {
        ((SnapshotMutableStateImpl) this.D).setValue(nodeCoordinator);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        s0();
        this.H = ChannelKt.a(0, 7, null);
        BuildersKt.c(M0(), null, CoroutineStart.m, new MagnifierNode$onAttach$1(this, null), 1);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        PlatformMagnifier platformMagnifier = this.C;
        if (platformMagnifier != null) {
            ((PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl) platformMagnifier).a.dismiss();
        }
        this.C = null;
    }

    public final long Y0() {
        if (this.E == null) {
            this.E = SnapshotStateKt.e(new ua(this, 2));
        }
        State state = this.E;
        if (state != null) {
            return ((Offset) state.getValue()).a;
        }
        return 9205357640488583168L;
    }

    public final void Z0() {
        PlatformMagnifier platformMagnifier = this.C;
        if (platformMagnifier != null) {
            ((PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl) platformMagnifier).a.dismiss();
        }
        View view = this.A;
        if (view == null) {
            view = DelegatableNode_androidKt.a(this);
        }
        this.A = view;
        Density density = this.B;
        if (density == null) {
            density = DelegatableNodeKt.g(this).H;
        }
        this.B = density;
        this.C = this.z.b(view, density);
        b1();
    }

    public final void a1() {
        Density density = this.B;
        if (density == null) {
            density = DelegatableNodeKt.g(this).H;
            this.B = density;
        }
        long j = ((Offset) this.x.b(density)).a;
        if ((j & 9223372034707292159L) != 9205357640488583168L && (9223372034707292159L & Y0()) != 9205357640488583168L) {
            this.F = Offset.f(Y0(), j);
            if (this.C == null) {
                Z0();
            }
            PlatformMagnifier platformMagnifier = this.C;
            if (platformMagnifier != null) {
                platformMagnifier.a(this.F, 9205357640488583168L);
            }
            b1();
            return;
        }
        this.F = 9205357640488583168L;
        PlatformMagnifier platformMagnifier2 = this.C;
        if (platformMagnifier2 != null) {
            ((PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl) platformMagnifier2).a.dismiss();
        }
    }

    public final void b1() {
        Density density;
        PlatformMagnifier platformMagnifier = this.C;
        if (platformMagnifier == null || (density = this.B) == null) {
            return;
        }
        PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl platformMagnifierImpl = (PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl) platformMagnifier;
        long b = platformMagnifierImpl.b();
        IntSize intSize = this.G;
        if (intSize == null || b != intSize.a) {
            this.y.b(new DpSize(density.y(IntSizeKt.a(platformMagnifierImpl.b()))));
            this.G = new IntSize(platformMagnifierImpl.b());
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        layoutNodeDrawScope.a();
        BufferedChannel bufferedChannel = this.H;
        if (bufferedChannel != null) {
            bufferedChannel.j(Unit.a);
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void s0() {
        ObserverModifierNodeKt.a(this, new ua(this, 0));
    }
}
