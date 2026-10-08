package defpackage;

import android.content.Context;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.ViewTreeObserver;
import android.widget.Toast;
import androidx.collection.MutableIntList;
import androidx.collection.MutableScatterSet;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NextFrameEndCallbackQueue;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.ObjectLocation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.input.pointer.HitPathTracker;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.compose.ui.platform.ScrollObservationScope;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.compose.NavBackStackEntryInfo;
import androidx.navigation.compose.NavHostEventHandler;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventProcessor;
import androidx.work.Logger;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTrackerKt;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.utils.CancelWorkRunnable;
import coil3.fetch.Fetcher;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonException;
import kotlinx.serialization.json.JsonNames;
import kotlinx.serialization.json.internal.JsonExceptionsKt;
import kotlinx.serialization.json.internal.JsonNamesMapKt;
import net.blip.android.intents.OutboundIntent;
import net.blip.android.ui.home.PeerTrayItem;
import net.blip.android.ui.util.NuancedPermissionState;
import net.blip.libblip.Peer;
import net.blip.shared.SimpleLinkTextButton;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class p0 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ p0(NavController.NavControllerNavigatorState navControllerNavigatorState, NavBackStackEntry navBackStackEntry, boolean z) {
        this.j = 22;
        this.k = navControllerNavigatorState;
        this.l = navBackStackEntry;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:210:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0427  */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v26, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v40 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v44 */
    /* JADX WARN: Type inference failed for: r6v45 */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() {
        float f;
        float f2;
        SemanticsNode semanticsNode;
        LayoutNode layoutNode;
        Rect rect;
        List list;
        int i;
        RememberObserverHolder rememberObserverHolder;
        RememberObserver rememberObserver;
        RememberObserverHolder rememberObserverHolder2;
        RememberObserver rememberObserver2;
        Map map;
        Object obj;
        String[] names;
        String str;
        NavigationEventProcessor navigationEventProcessor;
        ObjectLocation objectLocation = null;
        boolean z = true;
        switch (this.j) {
            case 0:
                return Boolean.valueOf(AndroidComposeView.b((AndroidComposeView) this.k, (KeyEvent) this.l));
            case 1:
                ScrollObservationScope scrollObservationScope = (ScrollObservationScope) this.k;
                AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = (AndroidComposeViewAccessibilityDelegateCompat) this.l;
                MutableIntList mutableIntList = AndroidComposeViewAccessibilityDelegateCompat.W;
                ScrollAxisRange scrollAxisRange = scrollObservationScope.n;
                ScrollAxisRange scrollAxisRange2 = scrollObservationScope.o;
                Float f3 = scrollObservationScope.l;
                Float f4 = scrollObservationScope.m;
                if (scrollAxisRange != null && f3 != null) {
                    f = ((Number) scrollAxisRange.a.a()).floatValue() - f3.floatValue();
                } else {
                    f = 0.0f;
                }
                if (scrollAxisRange2 != null && f4 != null) {
                    f2 = ((Number) scrollAxisRange2.a.a()).floatValue() - f4.floatValue();
                } else {
                    f2 = 0.0f;
                }
                if (f != 0.0f || f2 != 0.0f) {
                    int A = androidComposeViewAccessibilityDelegateCompat.A(scrollObservationScope.j);
                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.s().b(androidComposeViewAccessibilityDelegateCompat.t);
                    if (semanticsNodeWithAdjustedBounds != null) {
                        try {
                            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = androidComposeViewAccessibilityDelegateCompat.v;
                            if (accessibilityNodeInfoCompat != null) {
                                accessibilityNodeInfoCompat.a.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.k(semanticsNodeWithAdjustedBounds));
                            }
                        } catch (IllegalStateException unused) {
                        }
                    }
                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds2 = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.s().b(androidComposeViewAccessibilityDelegateCompat.u);
                    if (semanticsNodeWithAdjustedBounds2 != null) {
                        try {
                            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = androidComposeViewAccessibilityDelegateCompat.w;
                            if (accessibilityNodeInfoCompat2 != null) {
                                accessibilityNodeInfoCompat2.a.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.k(semanticsNodeWithAdjustedBounds2));
                            }
                        } catch (IllegalStateException unused2) {
                        }
                    }
                    androidComposeViewAccessibilityDelegateCompat.m.invalidate();
                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds3 = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.s().b(A);
                    if (semanticsNodeWithAdjustedBounds3 != null && (semanticsNode = semanticsNodeWithAdjustedBounds3.a) != null && (layoutNode = semanticsNode.c) != null) {
                        if (scrollAxisRange != null) {
                            androidComposeViewAccessibilityDelegateCompat.y.i(A, scrollAxisRange);
                        }
                        if (scrollAxisRange2 != null) {
                            androidComposeViewAccessibilityDelegateCompat.z.i(A, scrollAxisRange2);
                        }
                        androidComposeViewAccessibilityDelegateCompat.w(layoutNode);
                    }
                }
                if (scrollAxisRange != null) {
                    scrollObservationScope.l = (Float) scrollAxisRange.a.a();
                }
                if (scrollAxisRange2 != null) {
                    scrollObservationScope.m = (Float) scrollAxisRange2.a.a();
                }
                return Unit.a;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Ref$ObjectRef) this.k).j = ((Function0) this.l).a();
                return Unit.a;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Channel channel = (Channel) this.k;
                Object obj2 = this.l;
                SpringSpec springSpec = AnimateAsStateKt.a;
                channel.j(obj2);
                return Unit.a;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                BaseConstraintController baseConstraintController = (BaseConstraintController) this.k;
                BaseConstraintController$track$1$listener$1 baseConstraintController$track$1$listener$1 = (BaseConstraintController$track$1$listener$1) this.l;
                ConstraintTracker constraintTracker = baseConstraintController.a;
                constraintTracker.getClass();
                synchronized (constraintTracker.c) {
                    if (constraintTracker.d.remove(baseConstraintController$track$1$listener$1) && constraintTracker.d.isEmpty()) {
                        BroadcastReceiverConstraintTracker broadcastReceiverConstraintTracker = (BroadcastReceiverConstraintTracker) constraintTracker;
                        Logger.d().a(BroadcastReceiverConstraintTrackerKt.a, broadcastReceiverConstraintTracker.getClass().getSimpleName().concat(": unregistering receiver"));
                        broadcastReceiverConstraintTracker.b.unregisterReceiver(broadcastReceiverConstraintTracker.f);
                    }
                }
                return Unit.a;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                TextFieldValue textFieldValue = (TextFieldValue) this.k;
                MutableState mutableState = (MutableState) this.l;
                int i2 = BasicTextFieldKt.a;
                if (!TextRange.b(textFieldValue.b, ((TextFieldValue) mutableState.getValue()).b) || !Intrinsics.a(textFieldValue.c, ((TextFieldValue) mutableState.getValue()).c)) {
                    mutableState.setValue(textFieldValue);
                }
                return Unit.a;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Function0 function0 = (Function0) this.k;
                NodeCoordinator nodeCoordinator = (NodeCoordinator) this.l;
                if (function0 != null && (rect = (Rect) function0.a()) != null) {
                    return rect;
                }
                if (!nodeCoordinator.d1().w) {
                    nodeCoordinator = null;
                }
                if (nodeCoordinator == null) {
                    return null;
                }
                return RectKt.a(0L, IntSizeKt.a(nodeCoordinator.l));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) this.k;
                UUID uuid = (UUID) this.l;
                WorkDatabase workDatabase = workManagerImpl.c;
                workDatabase.getClass();
                workDatabase.b();
                try {
                    String uuid2 = uuid.toString();
                    uuid2.getClass();
                    CancelWorkRunnable.a(workManagerImpl, uuid2);
                    workDatabase.o();
                    workDatabase.l();
                    Schedulers.b(workManagerImpl.b, workManagerImpl.c, workManagerImpl.e);
                    return Unit.a;
                } catch (Throwable th) {
                    workDatabase.l();
                    throw th;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return CollectionsKt.B(new Pair((Fetcher.Factory) this.k, (ClassReference) this.l));
            case KeyModifiers.a /* 9 */:
                CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) this.k;
                Object obj3 = this.l;
                GapComposer gapComposer = compositionErrorContextImpl.j;
                SlotTable slotTable = gapComposer.c;
                SlotReader d = slotTable.d();
                int i3 = 0;
                while (i3 < slotTable.k) {
                    try {
                        if (d.l(i3)) {
                            Object n = d.n(i3);
                            if (n != obj3) {
                                if (n instanceof RememberObserverHolder) {
                                    rememberObserverHolder2 = (RememberObserverHolder) n;
                                } else {
                                    rememberObserverHolder2 = null;
                                }
                                if (rememberObserverHolder2 != null) {
                                    rememberObserver2 = ((GapRememberObserverHolder) rememberObserverHolder2).a;
                                } else {
                                    rememberObserver2 = null;
                                }
                                if (rememberObserver2 == obj3) {
                                }
                            }
                            ObjectLocation objectLocation2 = new ObjectLocation(i3, null);
                            d.c();
                            objectLocation = objectLocation2;
                            if (objectLocation != null) {
                                int i4 = objectLocation.a;
                                Integer num = objectLocation.b;
                                SlotReader d2 = slotTable.d();
                                try {
                                    ArrayList c = ComposeStackTraceBuilderKt.c(d2, i4, num);
                                    d2.c();
                                    list = CollectionsKt.F(c, gapComposer.D());
                                } finally {
                                }
                            } else {
                                list = EmptyList.j;
                            }
                            return new ComposeStackTrace(list, gapComposer.C);
                        }
                        int[] iArr = d.b;
                        int b = SlotTableKt.b(iArr, i3);
                        int i5 = i3 + 1;
                        if (i5 < d.c) {
                            i = iArr[(i5 * 5) + 4];
                        } else {
                            i = d.e;
                        }
                        int i6 = i - b;
                        for (int i7 = 0; i7 < i6; i7++) {
                            Object h = d.h(i3, i7);
                            if (h != obj3) {
                                if (h instanceof RememberObserverHolder) {
                                    rememberObserverHolder = (RememberObserverHolder) h;
                                } else {
                                    rememberObserverHolder = null;
                                }
                                if (rememberObserverHolder != null) {
                                    rememberObserver = ((GapRememberObserverHolder) rememberObserverHolder).a;
                                } else {
                                    rememberObserver = null;
                                }
                                if (rememberObserver != obj3) {
                                }
                            }
                            objectLocation = new ObjectLocation(i3, Integer.valueOf(i7));
                            if (objectLocation != null) {
                            }
                            return new ComposeStackTrace(list, gapComposer.C);
                        }
                        i3 = i5;
                    } finally {
                    }
                }
                if (objectLocation != null) {
                }
                return new ComposeStackTrace(list, gapComposer.C);
            case KeyModifiers.b /* 10 */:
                TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) this.k;
                Function0 function02 = (Function0) this.l;
                PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.a;
                return new IntOffset(IntOffsetKt.b(textContextMenuDataProvider.F0((LayoutCoordinates) function02.a())));
            case 11:
                TextContextMenuItem textContextMenuItem = (TextContextMenuItem) this.k;
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) this.l;
                PopupProperties popupProperties2 = DefaultTextContextMenuDropdownProvider_androidKt.a;
                textContextMenuItem.d.b(textContextMenuSession);
                return Unit.a;
            case KeyModifiers.c /* 12 */:
                return ((Function1) this.k).b(((StateFlow) this.l).getValue());
            case 13:
                ((DialogNavigator) this.k).e((NavBackStackEntry) this.l, false);
                return Unit.a;
            case 14:
                ((Function1) this.k).b(this.l);
                return Unit.a;
            case 15:
                ((Ref$ObjectRef) this.k).j = ((FocusTargetNode) this.l).a1();
                return Unit.a;
            case 16:
                ((Ref$ObjectRef) this.k).j = CompositionLocalConsumerModifierNodeKt.a((FocusableNode) this.l, PinnableContainerKt.a);
                return Unit.a;
            case 17:
                OutboundIntent.b((Context) this.k, (Uri) this.l);
                return Unit.a;
            case 18:
                ((HitPathTracker) this.k).d((Modifier.Node) this.l);
                return Unit.a;
            case 19:
                SerialDescriptor serialDescriptor = (SerialDescriptor) this.k;
                Json json = (Json) this.l;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                JsonConfiguration jsonConfiguration = json.a;
                JsonNamesMapKt.b(serialDescriptor, json);
                int f5 = serialDescriptor.f();
                for (int i8 = 0; i8 < f5; i8++) {
                    List i9 = serialDescriptor.i(i8);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj4 : i9) {
                        if (obj4 instanceof JsonNames) {
                            arrayList.add(obj4);
                        }
                    }
                    if (arrayList.size() == 1) {
                        obj = arrayList.get(0);
                    } else {
                        obj = null;
                    }
                    JsonNames jsonNames = (JsonNames) obj;
                    if (jsonNames != null && (names = jsonNames.names()) != null) {
                        for (String str2 : names) {
                            if (Intrinsics.a(serialDescriptor.e(), SerialKind.ENUM.a)) {
                                str = "enum value";
                            } else {
                                str = "property";
                            }
                            if (!linkedHashMap.containsKey(str2)) {
                                linkedHashMap.put(str2, Integer.valueOf(i8));
                            } else {
                                throw new JsonException(JsonExceptionsKt.a(-1, "The suggested name '" + str2 + "' for " + str + ' ' + serialDescriptor.g(i8) + " is already one of the names for " + str + ' ' + serialDescriptor.g(((Number) MapsKt.c(str2, linkedHashMap)).intValue()) + " in " + serialDescriptor, null, null, null));
                            }
                        }
                    }
                }
                if (linkedHashMap.isEmpty()) {
                    map = EmptyMap.j;
                    return map;
                }
                return linkedHashMap;
            case 20:
                ((ViewTreeObserver) this.k).removeOnGlobalLayoutListener((ba) this.l);
                return Unit.a;
            case 21:
                LayoutNode layoutNode2 = (LayoutNode) this.k;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) this.l;
                NodeChain nodeChain = layoutNode2.O;
                if ((nodeChain.f.m & 8) != 0) {
                    for (Modifier.Node node = nodeChain.e; node != null; node = node.n) {
                        if ((node.l & 8) != 0) {
                            DelegatingNode delegatingNode = node;
                            ?? r6 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof SemanticsModifierNode) {
                                    SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) delegatingNode;
                                    if (semanticsModifierNode.M()) {
                                        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
                                        ref$ObjectRef.j = semanticsConfiguration;
                                        semanticsConfiguration.m = true;
                                    }
                                    if (semanticsModifierNode.J0()) {
                                        ((SemanticsConfiguration) ref$ObjectRef.j).l = true;
                                    }
                                    semanticsModifierNode.E0((SemanticsPropertyReceiver) ref$ObjectRef.j);
                                } else if ((delegatingNode.l & 8) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node2 = delegatingNode.y;
                                    int i10 = 0;
                                    delegatingNode = delegatingNode;
                                    r6 = r6;
                                    while (node2 != null) {
                                        if ((node2.l & 8) != 0) {
                                            i10++;
                                            r6 = r6;
                                            if (i10 == 1) {
                                                delegatingNode = node2;
                                            } else {
                                                if (r6 == 0) {
                                                    r6 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r6.b(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r6.b(node2);
                                            }
                                        }
                                        node2 = node2.o;
                                        delegatingNode = delegatingNode;
                                        r6 = r6;
                                    }
                                    if (i10 == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.b(r6);
                            }
                        }
                    }
                }
                return Unit.a;
            case 22:
                NavController.NavControllerNavigatorState navControllerNavigatorState = (NavController.NavControllerNavigatorState) this.k;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.l;
                navBackStackEntry.getClass();
                synchronized (navControllerNavigatorState.a) {
                    try {
                        MutableStateFlow mutableStateFlow = navControllerNavigatorState.b;
                        Iterable iterable = (Iterable) mutableStateFlow.getValue();
                        ArrayList arrayList2 = new ArrayList();
                        for (Object obj5 : iterable) {
                            if (!Intrinsics.a((NavBackStackEntry) obj5, navBackStackEntry)) {
                                arrayList2.add(obj5);
                            } else {
                                mutableStateFlow.setValue(arrayList2);
                            }
                        }
                        mutableStateFlow.setValue(arrayList2);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return Unit.a;
            case 23:
                NavHostEventHandler navHostEventHandler = (NavHostEventHandler) this.k;
                MutableState mutableState2 = (MutableState) this.l;
                if (((List) mutableState2.getValue()).size() <= 1) {
                    z = false;
                }
                navHostEventHandler.f(z);
                NavBackStackEntryInfo navBackStackEntryInfo = new NavBackStackEntryInfo((NavBackStackEntry) CollectionsKt.A((List) mutableState2.getValue()));
                List N = CollectionsKt.N(CollectionsKt.q((List) mutableState2.getValue()));
                ArrayList arrayList3 = new ArrayList(N.size());
                int size = N.size();
                for (int i11 = 0; i11 < size; i11++) {
                    arrayList3.add(new NavBackStackEntryInfo((NavBackStackEntry) N.get(i11)));
                }
                EmptyList emptyList = EmptyList.j;
                navHostEventHandler.a = navBackStackEntryInfo;
                navHostEventHandler.b = arrayList3;
                navHostEventHandler.c = emptyList;
                NavigationEventDispatcher navigationEventDispatcher = navHostEventHandler.e;
                if (navigationEventDispatcher != null && (navigationEventProcessor = navigationEventDispatcher.b) != null) {
                    navigationEventProcessor.d(navHostEventHandler);
                }
                return Unit.a;
            case 24:
                NextFrameEndCallbackQueue nextFrameEndCallbackQueue = (NextFrameEndCallbackQueue) this.k;
                ee eeVar = (ee) this.l;
                if (nextFrameEndCallbackQueue.a.get() == 0) {
                    eeVar.a();
                }
                return Unit.a;
            case 25:
                ((Function1) this.k).b(((PeerTrayItem.Peer) ((PeerTrayItem) this.l)).a.c());
                return Unit.a;
            case 26:
                MutableScatterSet mutableScatterSet = (MutableScatterSet) this.k;
                ControlledComposition controlledComposition = (ControlledComposition) this.l;
                MutableStateFlow mutableStateFlow2 = Recomposer.z;
                Object[] objArr = mutableScatterSet.b;
                long[] jArr = mutableScatterSet.a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i12 = 0;
                    while (true) {
                        long j = jArr[i12];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i13 = 8 - ((~(i12 - length)) >>> 31);
                            for (int i14 = 0; i14 < i13; i14++) {
                                if ((255 & j) < 128) {
                                    ((CompositionImpl) controlledComposition).A(objArr[(i12 << 3) + i14]);
                                }
                                j >>= 8;
                            }
                            if (i13 != 8) {
                            }
                        }
                        if (i12 != length) {
                            i12++;
                        }
                    }
                }
                return Unit.a;
            case 27:
                NuancedPermissionState nuancedPermissionState = (NuancedPermissionState) this.k;
                Context context = (Context) this.l;
                if (nuancedPermissionState.a) {
                    Toast.makeText(context, "Notifications can be disabled in system settings", 0).show();
                } else {
                    NuancedPermissionState.a(nuancedPermissionState);
                }
                return Unit.a;
            case 28:
                NavHostController navHostController = (NavHostController) this.k;
                String str3 = ((Peer) this.l).c().n;
                str3.getClass();
                NavController.b(navHostController, "settings/device/".concat(str3));
                return Unit.a;
            default:
                ((SimpleLinkTextButton) this.k).b.b((String) this.l);
                return Unit.a;
        }
    }

    public /* synthetic */ p0(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }
}
