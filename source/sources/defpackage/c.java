package defpackage;

import android.content.res.Resources;
import android.os.CancellationSignal;
import android.view.View;
import android.view.ViewParent;
import androidx.collection.IntObjectMap;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.DraggableGestureConnection;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.material.DrawerKt;
import androidx.compose.material.DrawerState;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.CompositionLocalMapKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.HostDefaultProvider;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.ViewTreeHostDefaultKey;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.draganddrop.DragAndDropNode;
import androidx.compose.ui.draganddrop.DragAndDropTarget;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.vector.GroupComponent;
import androidx.compose.ui.graphics.vector.VNode;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.node.AlignmentLines;
import androidx.compose.ui.node.AlignmentLinesOwner;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt;
import androidx.compose.ui.platform.AndroidSoundEffect;
import androidx.compose.ui.platform.ComposeViewContext;
import androidx.compose.ui.platform.GlobalSnapshotManager;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.platform.ViewTreeHostDefaultProvider;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.TypefaceRequest;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteAllCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextInCodePointsCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.SetComposingRegionCommand;
import androidx.compose.ui.text.input.SetComposingTextCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.viewtree.ViewTree;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController;
import coil3.disk.DiskLruCache;
import com.squareup.wire.AnyMessage;
import com.squareup.wire.AnyMessage$Companion$ADAPTER$1;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ReverseProtoWriter;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.collections.AbstractMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlinx.coroutines.channels.BufferedChannel;
import net.blip.libblip.Client;
import net.blip.libblip.DeviceKind;
import net.blip.libblip.LibBlip;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;
import net.blip.shared.AvatarKt;
import net.blip.shared.AvatarTheme;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ c(EditCommand editCommand, EditProcessor editProcessor) {
        this.j = 20;
        this.k = editCommand;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0136  */
    /* JADX WARN: Type inference failed for: r14v41, types: [okio.Buffer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v2, types: [okio.Buffer, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj) {
        String valueOf;
        String str;
        String concat;
        int length;
        int i;
        String str2;
        LazyGridMeasureResult lazyGridMeasureResult;
        LazyListMeasureResult lazyListMeasureResult;
        int i2 = this.j;
        float f = 0.0f;
        LazyGridMeasureResult lazyGridMeasureResult2 = null;
        LazyListMeasureResult lazyListMeasureResult2 = null;
        boolean z = true;
        Unit unit = Unit.a;
        Object obj2 = this.k;
        switch (i2) {
            case 0:
                if (obj == ((AbstractCollection) obj2)) {
                    return "(this Collection)";
                }
                return String.valueOf(obj);
            case 1:
                AbstractMap abstractMap = (AbstractMap) obj2;
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                StringBuilder sb = new StringBuilder();
                Object key = entry.getKey();
                String str3 = "(this Map)";
                if (key == abstractMap) {
                    valueOf = "(this Map)";
                } else {
                    valueOf = String.valueOf(key);
                }
                sb.append(valueOf);
                sb.append('=');
                Object value = entry.getValue();
                if (value != abstractMap) {
                    str3 = String.valueOf(value);
                }
                sb.append(str3);
                return sb.toString();
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                AlignmentLines alignmentLines = (AlignmentLines) obj2;
                AlignmentLinesOwner alignmentLinesOwner = (AlignmentLinesOwner) obj;
                if (alignmentLinesOwner.n() != Integer.MAX_VALUE) {
                    if (alignmentLinesOwner.c().b) {
                        alignmentLinesOwner.Q();
                    }
                    for (Map.Entry entry2 : alignmentLinesOwner.c().i.entrySet()) {
                        alignmentLines.a((AlignmentLine) entry2.getKey(), ((Number) entry2.getValue()).intValue(), alignmentLinesOwner.e());
                    }
                    NodeCoordinator nodeCoordinator = alignmentLinesOwner.e().F;
                    nodeCoordinator.getClass();
                    while (!nodeCoordinator.equals(alignmentLines.a.e())) {
                        for (AlignmentLine alignmentLine : alignmentLines.c(nodeCoordinator).keySet()) {
                            alignmentLines.a(alignmentLine, alignmentLines.d(nodeCoordinator, alignmentLine), nodeCoordinator);
                        }
                        nodeCoordinator = nodeCoordinator.F;
                        nodeCoordinator.getClass();
                    }
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return Boolean.valueOf(((FocusTargetNode) obj).f1(((FocusDirection) obj2).a));
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return Boolean.valueOf(((IntObjectMap) obj2).a(((SemanticsNode) obj).f));
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return Boolean.valueOf(AndroidComposeViewAccessibilityDelegateCompat_androidKt.e((SemanticsNode) obj, (Resources) obj2));
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                float f2 = AndroidCursorHandle_androidKt.a;
                ((SemanticsPropertyReceiver) obj).b(SelectionHandlesKt.a, new SelectionHandleInfo(Handle.j, ((OffsetProvider) obj2).a(), SelectionHandleAnchor.k, true));
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                h hVar = AndroidViewHolder.J;
                ((LayoutNode) obj2).d0((Density) obj);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                AvatarTheme.Appearance appearance = (AvatarTheme.Appearance) obj;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AvatarKt.a;
                appearance.getClass();
                int ordinal = ((DeviceKind) obj2).ordinal();
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                return appearance.h;
                            }
                            return appearance.g;
                        }
                        return appearance.f;
                    }
                    return appearance.e;
                }
                return appearance.d;
            case KeyModifiers.a /* 9 */:
                final BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) obj2;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt$basicTextContextMenuProvider$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        BasicTextContextMenuProvider.SessionImpl sessionImpl = (BasicTextContextMenuProvider.SessionImpl) ((SnapshotMutableStateImpl) BasicTextContextMenuProvider.this.c).getValue();
                        if (sessionImpl != null) {
                            sessionImpl.close();
                        }
                    }
                };
            case KeyModifiers.b /* 10 */:
                TextLinkScope textLinkScope = (TextLinkScope) obj2;
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                if (textLinkScope != null) {
                    ((SnapshotMutableStateImpl) textLinkScope.a).setValue(textLayoutResult);
                }
                return unit;
            case 11:
                CancellationSignal cancellationSignal = (CancellationSignal) obj2;
                if (((Throwable) obj) != null) {
                    cancellationSignal.cancel();
                }
                return unit;
            case KeyModifiers.c /* 12 */:
                ComposeViewContext composeViewContext = (ComposeViewContext) obj2;
                AndroidSoundEffect androidSoundEffect = composeViewContext.w;
                if (androidSoundEffect == null) {
                    AndroidSoundEffect androidSoundEffect2 = new AndroidSoundEffect(composeViewContext.a);
                    composeViewContext.w = androidSoundEffect2;
                    return androidSoundEffect2;
                }
                return androidSoundEffect;
            case 13:
                ViewTreeHostDefaultKey viewTreeHostDefaultKey = (ViewTreeHostDefaultKey) obj2;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = HostDefaultProviderKt.a;
                PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalMap.getClass();
                View view = ((ViewTreeHostDefaultProvider) ((HostDefaultProvider) CompositionLocalMapKt.a(persistentCompositionLocalMap, dynamicProvidableCompositionLocal2))).a;
                while (view != null) {
                    Object tag = view.getTag(viewTreeHostDefaultKey.a());
                    if (tag != null) {
                        return tag;
                    }
                    ViewParent a = ViewTree.a(view);
                    if (a instanceof View) {
                        view = (View) a;
                    } else {
                        view = null;
                    }
                }
                return null;
            case 14:
                Client client = (Client) obj2;
                Message message = (Message) obj;
                message.getClass();
                AnyMessage$Companion$ADAPTER$1 anyMessage$Companion$ADAPTER$1 = AnyMessage.o;
                ProtoAdapter protoAdapter = message.j;
                String str4 = protoAdapter.c;
                if (str4 != null) {
                    ?? obj3 = new Object();
                    ReverseProtoWriter reverseProtoWriter = new ReverseProtoWriter();
                    protoAdapter.e(reverseProtoWriter, message);
                    reverseProtoWriter.a();
                    obj3.a0(reverseProtoWriter.a);
                    AnyMessage anyMessage = new AnyMessage(str4, obj3.s(obj3.k));
                    ?? obj4 = new Object();
                    ProtoAdapter protoAdapter2 = anyMessage.j;
                    protoAdapter2.getClass();
                    ReverseProtoWriter reverseProtoWriter2 = new ReverseProtoWriter();
                    protoAdapter2.e(reverseProtoWriter2, anyMessage);
                    reverseProtoWriter2.a();
                    obj4.a0(reverseProtoWriter2.a);
                    LibBlip.a.clientDispatch(client.a, obj4.A(obj4.k));
                    return unit;
                }
                throw new IllegalStateException(("recompile " + Reflection.a(message.getClass()) + " to use it with AnyMessage").toString());
            case 15:
                ((DiskLruCache) obj2).u = true;
                return unit;
            case 16:
                DragAndDropEvent dragAndDropEvent = (DragAndDropEvent) obj2;
                DragAndDropNode dragAndDropNode = (DragAndDropNode) obj;
                if (!dragAndDropNode.j.w) {
                    return TraversableNode$Companion$TraverseDescendantsAction.k;
                }
                DragAndDropTarget dragAndDropTarget = dragAndDropNode.z;
                if (dragAndDropTarget != null) {
                    DragAndDropNode dragAndDropNode2 = (DragAndDropNode) dragAndDropTarget;
                    c cVar = new c(16, dragAndDropEvent);
                    if (cVar.b(dragAndDropNode2) == TraversableNode$Companion$TraverseDescendantsAction.j) {
                        TraversableNodeKt.d(dragAndDropNode2, cVar);
                    }
                }
                dragAndDropNode.z = null;
                dragAndDropNode.y = null;
                return TraversableNode$Companion$TraverseDescendantsAction.j;
            case 17:
                float f3 = DragGestureDetectorKt.a;
                ((sa) obj2).a();
                return unit;
            case 18:
                a8 a8Var = (a8) obj2;
                GestureConnection gestureConnection = (GestureConnection) obj;
                Function3 function3 = DraggableKt.a;
                if (gestureConnection instanceof DraggableGestureConnection) {
                    z = ((Boolean) a8Var.b(gestureConnection)).booleanValue();
                }
                return Boolean.valueOf(z);
            case 19:
                ((Float) obj).getClass();
                Density a2 = ((DrawerState) obj2).a();
                TweenSpec tweenSpec = DrawerKt.a;
                return Float.valueOf(a2.i0(56.0f));
            case 20:
                EditCommand editCommand = (EditCommand) obj;
                if (((EditCommand) obj2) == editCommand) {
                    str = " > ";
                } else {
                    str = "   ";
                }
                if (editCommand instanceof CommitTextCommand) {
                    CommitTextCommand commitTextCommand = (CommitTextCommand) editCommand;
                    length = commitTextCommand.a.k.length();
                    i = commitTextCommand.b;
                    str2 = "CommitTextCommand(text.length=";
                } else if (editCommand instanceof SetComposingTextCommand) {
                    SetComposingTextCommand setComposingTextCommand = (SetComposingTextCommand) editCommand;
                    length = setComposingTextCommand.a.k.length();
                    i = setComposingTextCommand.b;
                    str2 = "SetComposingTextCommand(text.length=";
                } else {
                    if (editCommand instanceof SetComposingRegionCommand) {
                        concat = ((SetComposingRegionCommand) editCommand).toString();
                    } else if (editCommand instanceof DeleteSurroundingTextCommand) {
                        concat = ((DeleteSurroundingTextCommand) editCommand).toString();
                    } else if (editCommand instanceof DeleteSurroundingTextInCodePointsCommand) {
                        concat = ((DeleteSurroundingTextInCodePointsCommand) editCommand).toString();
                    } else if (editCommand instanceof SetSelectionCommand) {
                        concat = ((SetSelectionCommand) editCommand).toString();
                    } else if (editCommand instanceof FinishComposingTextCommand) {
                        concat = "FinishComposingTextCommand()";
                    } else if (editCommand instanceof DeleteAllCommand) {
                        concat = "DeleteAllCommand()";
                    } else {
                        String c = Reflection.a(editCommand.getClass()).c();
                        if (c == null) {
                            c = "{anonymous EditCommand}";
                        }
                        concat = "Unknown EditCommand: ".concat(c);
                    }
                    return str.concat(concat);
                }
                concat = jb.e(str2, length, ", newCursorPosition=", i, ")");
                return str.concat(concat);
            case 21:
                TypefaceRequest typefaceRequest = (TypefaceRequest) obj;
                return ((FontFamilyResolverImpl) obj2).a(new TypefaceRequest(null, typefaceRequest.b, typefaceRequest.c, typefaceRequest.d, typefaceRequest.e)).getValue();
            case 22:
                BufferedChannel bufferedChannel = (BufferedChannel) obj2;
                if (GlobalSnapshotManager.b.compareAndSet(false, true)) {
                    bufferedChannel.j(unit);
                }
                return unit;
            case 23:
                DrawScope drawScope = (DrawScope) obj;
                Canvas a3 = drawScope.l0().a();
                Function2 function2 = ((GraphicsLayerOwnerLayer) obj2).m;
                if (function2 != null) {
                    function2.n(a3, drawScope.l0().b);
                }
                return unit;
            case 24:
                GroupComponent groupComponent = (GroupComponent) obj2;
                VNode vNode = (VNode) obj;
                groupComponent.g(vNode);
                Function1 function1 = groupComponent.i;
                if (function1 != null) {
                    function1.b(vNode);
                }
                return unit;
            case 25:
                PeerId peerId = (PeerId) obj;
                peerId.getClass();
                NavController.b((NavController) obj2, "peer/".concat(PeerId_DerivedKt.b(peerId)));
                return unit;
            case 26:
                return Integer.valueOf(((LazyGridSpanLayoutProvider) obj2).c(((Integer) obj).intValue()));
            case 27:
                LazyGridState lazyGridState = (LazyGridState) obj2;
                float floatValue = ((Float) obj).floatValue();
                SaverKt$Saver$1 saverKt$Saver$1 = LazyGridState.w;
                float f4 = -floatValue;
                if ((f4 >= 0.0f || lazyGridState.d()) && (f4 <= 0.0f || lazyGridState.b())) {
                    if (Math.abs(lazyGridState.g) > 0.5f) {
                        InlineClassHelperKt.c("entered drag with non-zero pending scroll");
                    }
                    float f5 = lazyGridState.g + f4;
                    lazyGridState.g = f5;
                    if (Math.abs(f5) > 0.5f) {
                        float f6 = lazyGridState.g;
                        int b = MathKt.b(f6);
                        LazyGridMeasureResult h = ((LazyGridMeasureResult) ((SnapshotMutableStateImpl) lazyGridState.e).getValue()).h(b, !lazyGridState.b);
                        if (h != null && (lazyGridMeasureResult = lazyGridState.c) != null) {
                            LazyGridMeasureResult h2 = lazyGridMeasureResult.h(b, true);
                            if (h2 != null) {
                                lazyGridState.c = h2;
                            }
                            if (lazyGridMeasureResult2 == null) {
                                lazyGridState.f(lazyGridMeasureResult2, lazyGridState.b, true);
                                lazyGridState.r.setValue(unit);
                                lazyGridState.h(f6 - lazyGridState.g, lazyGridMeasureResult2);
                            } else {
                                Remeasurement remeasurement = lazyGridState.j;
                                if (remeasurement != null) {
                                    ((LayoutNode) remeasurement).k();
                                }
                                lazyGridState.h(f6 - lazyGridState.g, lazyGridState.g());
                            }
                        }
                        lazyGridMeasureResult2 = h;
                        if (lazyGridMeasureResult2 == null) {
                        }
                    }
                    if (Math.abs(lazyGridState.g) > 0.5f) {
                        f4 -= lazyGridState.g;
                        lazyGridState.g = 0.0f;
                    }
                    f = f4;
                }
                return Float.valueOf(-f);
            case 28:
                LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = (LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1) obj2;
                return lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.c(((Integer) obj).intValue(), lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d);
            default:
                LazyListState lazyListState = (LazyListState) obj2;
                float floatValue2 = ((Float) obj).floatValue();
                SaverKt$Saver$1 saverKt$Saver$12 = LazyListState.y;
                float f7 = -floatValue2;
                if ((f7 >= 0.0f || lazyListState.d()) && (f7 <= 0.0f || lazyListState.b())) {
                    if (Math.abs(lazyListState.h) > 0.5f) {
                        InlineClassHelperKt.c("entered drag with non-zero pending scroll");
                    }
                    lazyListState.d = true;
                    float f8 = lazyListState.h + f7;
                    lazyListState.h = f8;
                    if (Math.abs(f8) > 0.5f) {
                        float f9 = lazyListState.h;
                        int round = Math.round(f9);
                        LazyListMeasureResult h3 = ((LazyListMeasureResult) ((SnapshotMutableStateImpl) lazyListState.f).getValue()).h(round, !lazyListState.b);
                        if (h3 != null && (lazyListMeasureResult = lazyListState.c) != null) {
                            LazyListMeasureResult h4 = lazyListMeasureResult.h(round, true);
                            if (h4 != null) {
                                lazyListState.c = h4;
                            }
                            if (lazyListMeasureResult2 == null) {
                                lazyListState.g(lazyListMeasureResult2, lazyListState.b, true);
                                lazyListState.w.setValue(unit);
                                lazyListState.i(f9 - lazyListState.h, lazyListMeasureResult2);
                            } else {
                                Remeasurement remeasurement2 = lazyListState.l;
                                if (remeasurement2 != null) {
                                    ((LayoutNode) remeasurement2).k();
                                }
                                lazyListState.i(f9 - lazyListState.h, lazyListState.h());
                            }
                        }
                        lazyListMeasureResult2 = h3;
                        if (lazyListMeasureResult2 == null) {
                        }
                    }
                    if (Math.abs(lazyListState.h) > 0.5f) {
                        f7 -= lazyListState.h;
                        lazyListState.h = 0.0f;
                    }
                    f = f7;
                }
                return Float.valueOf(-f);
        }
    }

    public /* synthetic */ c(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }
}
