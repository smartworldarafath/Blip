package androidx.compose.ui.node;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.animation.DeferredEnterExitTransitionKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.BuildDrawCacheParams;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.modifier.BackwardsCompatLocalMap;
import androidx.compose.ui.modifier.EmptyMap;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsModifier;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.r1;
import java.util.HashSet;
import kotlin.Function;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BackwardsCompatNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode, PointerInputModifierNode, ModifierLocalModifierNode, ParentDataModifierNode, LayoutAwareModifierNode, GlobalPositionAwareModifierNode, FocusEventModifierNode, FocusPropertiesModifierNode, FocusRequesterModifierNode, OwnerScope, BuildDrawCacheParams {
    public Modifier.Element x;
    public BackwardsCompatLocalMap y;
    public HashSet z;

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final boolean C0() {
        Modifier.Element element = this.x;
        element.getClass();
        ((PointerInteropFilter) ((PointerInputModifier) element)).e.getClass();
        return true;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Modifier.Element element = this.x;
        element.getClass();
        AppendedSemanticsElement appendedSemanticsElement = (AppendedSemanticsElement) ((SemanticsModifier) element);
        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
        semanticsConfiguration.l = appendedSemanticsElement.b;
        appendedSemanticsElement.c.b(semanticsConfiguration);
        semanticsPropertyReceiver.getClass();
        SemanticsConfiguration semanticsConfiguration2 = (SemanticsConfiguration) semanticsPropertyReceiver;
        MutableScatterMap mutableScatterMap = semanticsConfiguration2.j;
        if (semanticsConfiguration.l) {
            semanticsConfiguration2.l = true;
        }
        if (semanticsConfiguration.m) {
            semanticsConfiguration2.m = true;
        }
        MutableScatterMap mutableScatterMap2 = semanticsConfiguration.j;
        Object[] objArr = mutableScatterMap2.b;
        Object[] objArr2 = mutableScatterMap2.c;
        long[] jArr = mutableScatterMap2.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Object obj = objArr[i4];
                            Object obj2 = objArr2[i4];
                            SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) obj;
                            if (!mutableScatterMap.b(semanticsPropertyKey)) {
                                mutableScatterMap.o(semanticsPropertyKey, obj2);
                            } else if (obj2 instanceof AccessibilityAction) {
                                Object e = mutableScatterMap.e(semanticsPropertyKey);
                                e.getClass();
                                AccessibilityAction accessibilityAction = (AccessibilityAction) e;
                                String str = accessibilityAction.a;
                                if (str == null) {
                                    str = ((AccessibilityAction) obj2).a;
                                }
                                Function function = accessibilityAction.b;
                                if (function == null) {
                                    function = ((AccessibilityAction) obj2).b;
                                }
                                mutableScatterMap.o(semanticsPropertyKey, new AccessibilityAction(str, function));
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public final void F(FocusProperties focusProperties) {
        Modifier.Element element = this.x;
        InlineClassHelperKt.b("applyFocusProperties called on wrong node");
        element.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        Modifier.Element element = this.x;
        element.getClass();
        ((PointerInteropFilter) ((PointerInputModifier) element)).e.c(pointerEvent, pointerEventPass);
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void K0(NodeCoordinator nodeCoordinator) {
        this.x.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void L() {
        Modifier.Element element = this.x;
        element.getClass();
        ((PointerInteropFilter) ((PointerInputModifier) element)).e.b();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        Y0(true);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void R() {
        DrawModifierNodeKt.a(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        Z0();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void S() {
        Modifier.Element element = this.x;
        element.getClass();
        ((PointerInteropFilter) ((PointerInputModifier) element)).e.getClass();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, androidx.compose.ui.modifier.BackwardsCompatLocalMap] */
    public final void Y0(boolean z) {
        if (!this.w) {
            InlineClassHelperKt.b("initializeModifier called on unattached node");
        }
        Modifier.Element element = this.x;
        if ((this.l & 32) != 0 && (element instanceof ModifierLocalProvider)) {
            ModifierLocalProvider modifierLocalProvider = (ModifierLocalProvider) element;
            BackwardsCompatLocalMap backwardsCompatLocalMap = this.y;
            ProvidableModifierLocal providableModifierLocal = DeferredEnterExitTransitionKt.a;
            if (backwardsCompatLocalMap != null && backwardsCompatLocalMap.a(providableModifierLocal)) {
                backwardsCompatLocalMap.a = modifierLocalProvider;
                ModifierLocalManager modifierLocalManager = DelegatableNodeKt.h(this).getModifierLocalManager();
                MutableObjectList mutableObjectList = modifierLocalManager.b;
                if (mutableObjectList == null) {
                    mutableObjectList = new MutableObjectList();
                    modifierLocalManager.b = mutableObjectList;
                }
                mutableObjectList.g(this);
                MutableObjectList mutableObjectList2 = modifierLocalManager.c;
                if (mutableObjectList2 == null) {
                    mutableObjectList2 = new MutableObjectList();
                    modifierLocalManager.c = mutableObjectList2;
                }
                mutableObjectList2.g(providableModifierLocal);
                modifierLocalManager.a();
            } else {
                ?? obj = new Object();
                obj.a = modifierLocalProvider;
                this.y = obj;
                TailModifierNode tailModifierNode = DelegatableNodeKt.g(this).O.e;
                tailModifierNode.getClass();
                if (tailModifierNode.x) {
                    ModifierLocalManager modifierLocalManager2 = DelegatableNodeKt.h(this).getModifierLocalManager();
                    MutableObjectList mutableObjectList3 = modifierLocalManager2.b;
                    if (mutableObjectList3 == null) {
                        mutableObjectList3 = new MutableObjectList();
                        modifierLocalManager2.b = mutableObjectList3;
                    }
                    mutableObjectList3.g(this);
                    MutableObjectList mutableObjectList4 = modifierLocalManager2.c;
                    if (mutableObjectList4 == null) {
                        mutableObjectList4 = new MutableObjectList();
                        modifierLocalManager2.c = mutableObjectList4;
                    }
                    mutableObjectList4.g(providableModifierLocal);
                    modifierLocalManager2.a();
                }
            }
        }
        if ((this.l & 4) != 0 && !z) {
            DelegatableNodeKt.e(this, 2).l1();
        }
        if ((this.l & 2) != 0) {
            TailModifierNode tailModifierNode2 = DelegatableNodeKt.g(this).O.e;
            tailModifierNode2.getClass();
            if (tailModifierNode2.x) {
                NodeCoordinator nodeCoordinator = this.q;
                nodeCoordinator.getClass();
                ((LayoutModifierNodeCoordinator) nodeCoordinator).H1(this);
                OwnedLayer ownedLayer = nodeCoordinator.c0;
                if (ownedLayer != null) {
                    ((GraphicsLayerOwnerLayer) ownedLayer).c();
                }
            }
            if (!z) {
                DelegatableNodeKt.e(this, 2).l1();
                DelegatableNodeKt.g(this).I();
            }
        }
        if (element instanceof RemeasurementModifier) {
            ((RemeasurementModifier) element).m(DelegatableNodeKt.g(this));
        }
        int i = this.l;
        if ((i & 16) != 0 && (element instanceof PointerInputModifier)) {
            ((PointerInteropFilter) ((PointerInputModifier) element)).e.a = this.q;
        }
        if ((i & 8) != 0) {
            ((AndroidComposeView) DelegatableNodeKt.h(this)).y();
        }
    }

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public final Object Z(Density density, Object obj) {
        Modifier.Element element = this.x;
        element.getClass();
        return ((ParentDataModifier) element).n();
    }

    public final void Z0() {
        if (!this.w) {
            InlineClassHelperKt.b("unInitializeModifier called on unattached node");
        }
        Modifier.Element element = this.x;
        if ((this.l & 32) != 0 && (element instanceof ModifierLocalProvider)) {
            ModifierLocalManager modifierLocalManager = DelegatableNodeKt.h(this).getModifierLocalManager();
            MutableObjectList mutableObjectList = modifierLocalManager.d;
            if (mutableObjectList == null) {
                mutableObjectList = new MutableObjectList();
                modifierLocalManager.d = mutableObjectList;
            }
            mutableObjectList.g(DelegatableNodeKt.g(this));
            MutableObjectList mutableObjectList2 = modifierLocalManager.e;
            if (mutableObjectList2 == null) {
                mutableObjectList2 = new MutableObjectList();
                modifierLocalManager.e = mutableObjectList2;
            }
            mutableObjectList2.g(DeferredEnterExitTransitionKt.a);
            modifierLocalManager.a();
        }
        if ((this.l & 8) != 0) {
            ((AndroidComposeView) DelegatableNodeKt.h(this)).y();
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int a(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        Modifier.Element element = this.x;
        element.getClass();
        return ((LayoutModifier) element).a(lookaheadCapablePlaceable, intrinsicMeasurable, i);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public final ModifierLocalMap a0() {
        BackwardsCompatLocalMap backwardsCompatLocalMap = this.y;
        if (backwardsCompatLocalMap != null) {
            return backwardsCompatLocalMap;
        }
        return EmptyMap.a;
    }

    public final void a1() {
        if (this.w) {
            this.z.clear();
            OwnerSnapshotObserver snapshotObserver = DelegatableNodeKt.h(this).getSnapshotObserver();
            snapshotObserver.a.e(this, BackwardsCompatNodeKt.a, new r1(5, this));
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int c(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        Modifier.Element element = this.x;
        element.getClass();
        return ((LayoutModifier) element).c(lookaheadCapablePlaceable, intrinsicMeasurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int d(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        Modifier.Element element = this.x;
        element.getClass();
        return ((LayoutModifier) element).d(lookaheadCapablePlaceable, intrinsicMeasurable, i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int e(LookaheadCapablePlaceable lookaheadCapablePlaceable, IntrinsicMeasurable intrinsicMeasurable, int i) {
        Modifier.Element element = this.x;
        element.getClass();
        return ((LayoutModifier) element).e(lookaheadCapablePlaceable, intrinsicMeasurable, i);
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void g() {
        if (this.x instanceof PointerInputModifier) {
            L();
        }
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
        Modifier.Element element = this.x;
        element.getClass();
        ((DrawModifier) element).h(layoutNodeDrawScope);
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final long i() {
        return IntSizeKt.a(DelegatableNodeKt.e(this, 128).l);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Modifier.Element element = this.x;
        element.getClass();
        return ((LayoutModifier) element).j(measureScope, measurable, j);
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public final void j0(FocusStateImpl focusStateImpl) {
        Modifier.Element element = this.x;
        InlineClassHelperKt.b("onFocusEvent called on wrong node");
        element.getClass();
        throw new ClassCastException();
    }

    public final String toString() {
        return this.x.toString();
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean z() {
        return this.w;
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void C(LayoutCoordinates layoutCoordinates) {
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode, androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    public final void b(long j) {
    }
}
