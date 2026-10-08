package defpackage;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.relocation.BringIntoViewResponderNode;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.AwaiterQueue;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.layout.Ruler;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSize;
import androidx.customview.poolingcontainer.PoolingContainer;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerPickerViewModel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class n1 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ n1(GapComposer gapComposer, ChangeList changeList, SlotReader slotReader, MovableContentStateReference movableContentStateReference) {
        this.j = 5;
        this.k = gapComposer;
        this.l = changeList;
        this.m = slotReader;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i;
        int i2;
        ContentInViewNode contentInViewNode;
        boolean a1;
        Rect rect;
        Rect a;
        Integer num;
        int i3 = this.j;
        boolean z = false;
        boolean z2 = true;
        Rect rect2 = null;
        Unit unit = Unit.a;
        Object obj = this.m;
        Object obj2 = this.l;
        Object obj3 = this.k;
        switch (i3) {
            case 0:
                ((MutableState) obj).setValue(Boolean.FALSE);
                ((Function1) obj3).b(((Peer) obj2).c());
                return unit;
            case 1:
                ((AwaiterQueue.Awaiter) obj3).a();
                AtomicInt atomicInt = ((AwaiterQueue) obj2).c;
                int i4 = ((Ref$IntRef) obj).j;
                do {
                    i = atomicInt.get();
                    if (((i >>> 27) & 15) == i4) {
                        i2 = i - 1;
                    } else {
                        i2 = i;
                    }
                } while (!atomicInt.compareAndSet(i, i2));
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                BringIntoViewResponderNode bringIntoViewResponderNode = (BringIntoViewResponderNode) obj3;
                Rect Y0 = BringIntoViewResponderNode.Y0(bringIntoViewResponderNode, (NodeCoordinator) obj2, (p0) obj);
                if (Y0 == null) {
                    return null;
                }
                ContentInViewNode contentInViewNode2 = bringIntoViewResponderNode.x;
                if (IntSize.a(contentInViewNode2.E, -1L)) {
                    InlineClassHelperKt.c("Expected BringIntoViewRequester to not be used before parents are placed.");
                }
                return Y0.i(contentInViewNode2.c1(Y0, contentInViewNode2.Z0(), 0L) ^ (-9223372034707292160L));
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ContentInViewNode contentInViewNode3 = (ContentInViewNode) obj3;
                UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) obj2;
                BringIntoViewSpec bringIntoViewSpec = (BringIntoViewSpec) obj;
                BringIntoViewRequestPriorityQueue bringIntoViewRequestPriorityQueue = contentInViewNode3.C;
                while (true) {
                    MutableVector mutableVector = bringIntoViewRequestPriorityQueue.a;
                    int i5 = mutableVector.l;
                    if (i5 != 0) {
                        if (i5 != 0) {
                            Rect rect3 = (Rect) ((ContentInViewNode.Request) mutableVector.j[i5 - 1]).a.a();
                            if (rect3 == null) {
                                contentInViewNode = contentInViewNode3;
                                a1 = true;
                            } else {
                                contentInViewNode = contentInViewNode3;
                                a1 = ContentInViewNode.a1(contentInViewNode, rect3, 0L, 0L, 3);
                            }
                            if (a1) {
                                MutableVector mutableVector2 = bringIntoViewRequestPriorityQueue.a;
                                ((ContentInViewNode.Request) mutableVector2.k(mutableVector2.l - 1)).b.g(unit);
                                contentInViewNode3 = contentInViewNode;
                            }
                        } else {
                            fe.o("MutableVector is empty.");
                            return null;
                        }
                    } else {
                        contentInViewNode = contentInViewNode3;
                    }
                }
                if (contentInViewNode.D) {
                    Rect rect4 = (Rect) contentInViewNode.B.a();
                    if (rect4 == null || !ContentInViewNode.a1(contentInViewNode, rect4, 0L, 0L, 3)) {
                        z2 = false;
                    }
                    if (z2) {
                        contentInViewNode.D = false;
                    }
                }
                updatableAnimationState.e = ContentInViewNode.Y0(contentInViewNode, bringIntoViewSpec, 0L);
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Player player = (ExoPlayer) obj3;
                ((MutableState) obj).setValue(null);
                if (((Boolean) ((MutableState) obj2).getValue()).booleanValue()) {
                    ((BasePlayer) player).u(true);
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                GapComposer gapComposer = (GapComposer) obj3;
                ChangeList changeList = (ChangeList) obj2;
                SlotReader slotReader = (SlotReader) obj;
                ComposerChangeListWriter composerChangeListWriter = gapComposer.M;
                ChangeList changeList2 = composerChangeListWriter.b;
                try {
                    composerChangeListWriter.b = changeList;
                    SlotReader slotReader2 = gapComposer.G;
                    int[] iArr = gapComposer.o;
                    MutableIntObjectMap mutableIntObjectMap = gapComposer.v;
                    gapComposer.o = null;
                    gapComposer.v = null;
                    try {
                        gapComposer.G = slotReader;
                        boolean z3 = composerChangeListWriter.e;
                        try {
                            composerChangeListWriter.e = false;
                            throw null;
                        } catch (Throwable th) {
                            composerChangeListWriter.e = z3;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        gapComposer.G = slotReader2;
                        gapComposer.o = iArr;
                        gapComposer.v = mutableIntObjectMap;
                        throw th2;
                    }
                } catch (Throwable th3) {
                    composerChangeListWriter.b = changeList2;
                    throw th3;
                }
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Function2 function2 = (Function2) obj3;
                Ruler ruler = (Ruler) obj;
                LookaheadCapablePlaceable lookaheadCapablePlaceable = (LookaheadCapablePlaceable) ((Ref$ObjectRef) obj2).j;
                MutableScatterMap mutableScatterMap = lookaheadCapablePlaceable.v;
                if (mutableScatterMap == null) {
                    long[] jArr = ScatterMapKt.a;
                    mutableScatterMap = new MutableScatterMap();
                    lookaheadCapablePlaceable.v = mutableScatterMap;
                }
                Object e = mutableScatterMap.e(ruler);
                if (e == null) {
                    e = new LookaheadCapablePlaceable.ResettableRulerScope();
                    mutableScatterMap.o(ruler, e);
                }
                LookaheadCapablePlaceable.ResettableRulerScope resettableRulerScope = (LookaheadCapablePlaceable.ResettableRulerScope) e;
                resettableRulerScope.j = false;
                function2.n(resettableRulerScope, ruler);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                NodeCoordinator nodeCoordinator = (NodeCoordinator) obj2;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj;
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = NodeCoordinator.g0;
                ((Function1) obj3).b(reusableGraphicsLayerScope);
                boolean a2 = Intrinsics.a(nodeCoordinator.S, reusableGraphicsLayerScope.x);
                if (nodeCoordinator.V != reusableGraphicsLayerScope.y) {
                    z = true;
                }
                Outline a3 = reusableGraphicsLayerScope.x.a(reusableGraphicsLayerScope.A, reusableGraphicsLayerScope.D, reusableGraphicsLayerScope.C);
                reusableGraphicsLayerScope.H = a3;
                Rect rect5 = nodeCoordinator.U;
                if (a3 != null) {
                    rect2 = a3.a();
                }
                boolean a4 = Intrinsics.a(rect5, rect2);
                ref$BooleanRef.j = !a4;
                if (!a2 || z || !a4) {
                    nodeCoordinator.S = reusableGraphicsLayerScope.x;
                    nodeCoordinator.V = reusableGraphicsLayerScope.y;
                    Outline outline = reusableGraphicsLayerScope.H;
                    Rect rect6 = Rect.e;
                    if (outline == null || (rect = outline.a()) == null) {
                        rect = rect6;
                    }
                    nodeCoordinator.U = rect;
                    Outline outline2 = reusableGraphicsLayerScope.H;
                    if (outline2 != null && (a = outline2.a()) != null) {
                        IntRect a5 = IntRectKt.a(a);
                        rect6 = new Rect(a5.a, a5.b, a5.c, a5.d);
                    }
                    nodeCoordinator.T = rect6;
                    if (nodeCoordinator.W && (z || (nodeCoordinator.V && !a2))) {
                        nodeCoordinator.D.J();
                    }
                }
                nodeCoordinator.W = true;
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                GapAnchor gapAnchor = (GapAnchor) obj3;
                SlotWriter slotWriter = (SlotWriter) obj2;
                OperationErrorContext operationErrorContext = (OperationErrorContext) obj;
                if (gapAnchor != null) {
                    slotWriter.a(slotWriter.c(gapAnchor) - slotWriter.t);
                }
                List a6 = ComposeStackTraceBuilderKt.a(slotWriter, null, slotWriter.t, null);
                ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) CollectionsKt.A(a6);
                if (composeStackTraceFrame != null) {
                    num = composeStackTraceFrame.b;
                } else {
                    num = null;
                }
                List a7 = operationErrorContext.a(num);
                if (num != null && !a7.isEmpty()) {
                    a7 = CollectionsKt.F(CollectionsKt.B(new ComposeStackTraceFrame(((ComposeStackTraceFrame) CollectionsKt.s(a7)).a, null, num)), CollectionsKt.p(a7));
                }
                return new ComposeStackTrace(CollectionsKt.F(a6, a7), operationErrorContext.b());
            case KeyModifiers.a /* 9 */:
                PeerPickerViewModel peerPickerViewModel = (PeerPickerViewModel) obj3;
                Function0 function0 = (Function0) obj2;
                if (((String) ((State) obj).getValue()).length() > 0) {
                    peerPickerViewModel.c("");
                } else {
                    function0.a();
                }
                return unit;
            default:
                AbstractComposeView abstractComposeView = (AbstractComposeView) obj3;
                abstractComposeView.removeOnAttachStateChangeListener((ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$installFor$listener$1) obj2);
                PoolingContainer.e(abstractComposeView, (pi) obj);
                return unit;
        }
    }

    public /* synthetic */ n1(ExoPlayer exoPlayer, MutableState mutableState, MutableState mutableState2) {
        this.j = 4;
        this.k = exoPlayer;
        this.m = mutableState;
        this.l = mutableState2;
    }

    public /* synthetic */ n1(Object obj, Object obj2, Object obj3, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
    }
}
