package defpackage;

import android.app.RemoteAction;
import android.graphics.RectF;
import android.view.textclassifier.TextClassification;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.lazy.grid.GridCells$Adaptive;
import androidx.compose.foundation.lazy.grid.LazyGridSlots;
import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material.ButtonKt;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.AndroidUriHandler;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupLayout;
import androidx.compose.ui.window.PopupProperties;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController;
import androidx.navigation.compose.DialogHostKt;
import androidx.navigation.compose.DialogNavigator;
import io.ktor.http.URLBuilder;
import io.ktor.http.URLParserKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.ChildHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.flow.internal.SafeCollector;
import kotlinx.coroutines.internal.ScopeCoroutine;
import net.blip.android.ui.androidtheme.AndroidAvatarTheme;
import net.blip.android.ui.home.ConnectionStatusHUDKt;
import net.blip.android.ui.home.HomeScreenKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.settings.ComposableSingletons$SettingsScreenKt;
import net.blip.android.ui.util.NuancedPermissionState;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.frontend.Messaging;
import net.blip.libblip.frontend.MessagingStatus;
import net.blip.libblip.frontend.State;
import net.blip.shared.AvatarKt;
import net.blip.shared.AvatarTheme;
import net.blip.shared.Paintable;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ d(GridCells$Adaptive gridCells$Adaptive, Arrangement.Horizontal horizontal) {
        this.j = 13;
        this.k = horizontal;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0248, code lost:
    
        if (r7 == null) goto L90;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x024f  */
    /* JADX WARN: Type inference failed for: r8v16, types: [java.util.Set[], java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r8v17, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v20, types: [java.util.Collection] */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        boolean z3;
        MessagingStatus messagingStatus;
        int i;
        boolean z4;
        String str;
        boolean z5;
        ArrayList arrayList;
        Object obj3 = null;
        boolean z6 = false;
        boolean z7 = false;
        final int i2 = 1;
        switch (this.j) {
            case 0:
                AbstractComposeView abstractComposeView = (AbstractComposeView) this.k;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i3 = AbstractComposeView.s;
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    abstractComposeView.a(0, gapComposer);
                } else {
                    gapComposer.Q();
                }
                return Unit.a;
            case 1:
                Pair pair = (Pair) this.k;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    ButtonKt.b((Function0) pair.k, false, null, ComposableLambdaKt.b(1327655128, new b0(z6 ? 1 : 0, pair), gapComposer2), gapComposer2, 510);
                } else {
                    gapComposer2.Q();
                }
                return Unit.a;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return Boolean.valueOf(((TextInclusionStrategy) this.k).a(RectHelper_androidKt.c((RectF) obj), RectHelper_androidKt.c((RectF) obj2)));
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Integer) obj2).getClass();
                int i4 = ComposeView.v;
                ((ComposeView) this.k).a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return Unit.a;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                RememberManager rememberManager = (RememberManager) this.k;
                ((Integer) obj).getClass();
                if (obj2 instanceof ComposeNodeLifecycleCallback) {
                    ComposeNodeLifecycleCallback composeNodeLifecycleCallback = (ComposeNodeLifecycleCallback) obj2;
                    RememberEventDispatcher rememberEventDispatcher = (RememberEventDispatcher) rememberManager;
                    MutableScatterSet mutableScatterSet = rememberEventDispatcher.h;
                    if (mutableScatterSet == null) {
                        MutableScatterSet mutableScatterSet2 = ScatterSetKt.a;
                        mutableScatterSet = new MutableScatterSet();
                        rememberEventDispatcher.h = mutableScatterSet;
                    }
                    mutableScatterSet.l(composeNodeLifecycleCallback);
                    rememberEventDispatcher.f.b(composeNodeLifecycleCallback);
                }
                if (obj2 instanceof RememberObserverHolder) {
                    ((RememberEventDispatcher) rememberManager).e((RememberObserverHolder) obj2);
                }
                if (obj2 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj2).d();
                }
                return Unit.a;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Integer) obj2).getClass();
                ConnectionStatusHUDKt.a((MessagingStatus) this.k, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.a;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj2).getClass();
                CoreTextFieldKt.d((TextFieldSelectionManager) this.k, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.a;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                TextContextMenuItem textContextMenuItem = (TextContextMenuItem) this.k;
                ((Integer) obj2).getClass();
                PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.a;
                GapComposer gapComposer3 = (GapComposer) ((Composer) obj);
                gapComposer3.W(666084174);
                String str2 = textContextMenuItem.b;
                gapComposer3.p(false);
                return str2;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                DialogHostKt.a((DialogNavigator) this.k, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.a;
            case KeyModifiers.a /* 9 */:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z6 = true;
                }
                GapComposer gapComposer4 = (GapComposer) composer3;
                if (!gapComposer4.N(intValue3 & 1, z6)) {
                    gapComposer4.Q();
                    return Unit.a;
                }
                throw null;
            case KeyModifiers.b /* 10 */:
                ((Integer) obj2).getClass();
                HomeScreenKt.a((NavController) this.k, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.a;
            case 11:
                State state = (State) this.k;
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer5 = (GapComposer) composer4;
                if (gapComposer5.N(intValue4 & 1, z3)) {
                    BiasAlignment biasAlignment = Alignment.Companion.h;
                    Modifier.Companion companion = Modifier.Companion.b;
                    MeasurePolicy d = BoxKt.d(biasAlignment, false);
                    int hashCode = Long.hashCode(gapComposer5.T);
                    PersistentCompositionLocalMap l = gapComposer5.l();
                    Modifier c = ComposedModifierKt.c(gapComposer5, companion);
                    ComposeUiNode.b.getClass();
                    x9 x9Var = LayoutNode.b0;
                    gapComposer5.Z();
                    if (gapComposer5.S) {
                        gapComposer5.k(x9Var);
                    } else {
                        gapComposer5.j0();
                    }
                    Updater.c(gapComposer5, d, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer5, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer5, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer5);
                    Updater.c(gapComposer5, c, ComposeUiNode.Companion.b);
                    Messaging messaging = state.t;
                    if (messaging != null && (messagingStatus = messaging.m) != null) {
                        ConnectionStatusHUDKt.a(messagingStatus, gapComposer5, 0);
                        gapComposer5.p(true);
                    } else {
                        LoggerKt.a.getClass();
                        Logger.j("state missing messaging", new Pair[0]);
                        throw null;
                    }
                } else {
                    gapComposer5.Q();
                }
                return Unit.a;
            case KeyModifiers.c /* 12 */:
                ((Integer) obj2).getClass();
                ((InfiniteTransition) this.k).a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return Unit.a;
            case 13:
                Arrangement.Horizontal horizontal = (Arrangement.Horizontal) this.k;
                Density density = (Density) obj;
                Constraints constraints = (Constraints) obj2;
                if (Constraints.h(constraints.a) == Integer.MAX_VALUE) {
                    InlineClassHelperKt.a("LazyVerticalGrid's width should be bound by parent.");
                }
                int h = Constraints.h(constraints.a);
                int y0 = density.y0(horizontal.a());
                int max = Math.max((h + y0) / (density.y0(160.0f) + y0), 1);
                int i5 = h - ((max - 1) * y0);
                int i6 = i5 / max;
                int i7 = i5 % max;
                ArrayList arrayList2 = new ArrayList(max);
                for (int i8 = 0; i8 < max; i8++) {
                    if (i8 < i7) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    arrayList2.add(Integer.valueOf(i + i6));
                }
                int[] W = CollectionsKt.W(arrayList2);
                int[] iArr = new int[W.length];
                horizontal.c(density, h, W, LayoutDirection.j, iArr);
                return new LazyGridSlots(W, iArr);
            case 14:
                ((TextDragObserver) this.k).e(((Offset) obj2).a);
                return Unit.a;
            case 15:
                Modifier.Companion companion2 = Modifier.Companion.b;
                Paintable paintable = (Paintable) this.k;
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if ((intValue5 & 3) != 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer6 = (GapComposer) composer5;
                if (gapComposer6.N(intValue5 & 1, z4)) {
                    AvatarTheme.Appearance b = ((AndroidAvatarTheme) ((AvatarTheme) gapComposer6.j(AvatarKt.a))).b(gapComposer6);
                    boolean h2 = gapComposer6.h(paintable);
                    Object K = gapComposer6.K();
                    if (h2 || K == Composer.Companion.a) {
                        K = new ma(9, paintable);
                        gapComposer6.g0(K);
                    }
                    AvatarKt.e(companion2, b, (Function1) K, gapComposer6, 0);
                } else {
                    gapComposer6.Q();
                }
                return Unit.a;
            case 16:
                ((Integer) obj2).getClass();
                wc wcVar = PopupLayout.N;
                ((PopupLayout) this.k).a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return Unit.a;
            case 17:
                Recomposer recomposer = (Recomposer) this.k;
                Set set = (Set) obj;
                synchronized (recomposer.c) {
                    try {
                        if (((Recomposer.State) recomposer.u.getValue()).compareTo(Recomposer.State.n) >= 0) {
                            MutableScatterSet mutableScatterSet3 = recomposer.h;
                            if (set instanceof ScatterSetWrapper) {
                                ScatterSet scatterSet = ((ScatterSetWrapper) set).j;
                                Object[] objArr = scatterSet.b;
                                long[] jArr = scatterSet.a;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i9 = 0;
                                    while (true) {
                                        long j = jArr[i9];
                                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i10 = 8 - ((~(i9 - length)) >>> 31);
                                            for (int i11 = 0; i11 < i10; i11++) {
                                                if ((255 & j) < 128) {
                                                    Object obj4 = objArr[(i9 << 3) + i11];
                                                    if (!(obj4 instanceof StateObjectImpl) || ((StateObjectImpl) obj4).h(1)) {
                                                        mutableScatterSet3.d(obj4);
                                                    }
                                                }
                                                j >>= 8;
                                            }
                                            if (i10 != 8) {
                                            }
                                        }
                                        if (i9 != length) {
                                            i9++;
                                        }
                                    }
                                }
                            } else {
                                for (Object obj5 : set) {
                                    if (!(obj5 instanceof StateObjectImpl) || ((StateObjectImpl) obj5).h(1)) {
                                        mutableScatterSet3.d(obj5);
                                    }
                                }
                            }
                            obj3 = recomposer.y();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (obj3 != null) {
                    ((CancellableContinuationImpl) obj3).g(Unit.a);
                }
                return Unit.a;
            case 18:
                SafeCollector safeCollector = (SafeCollector) this.k;
                int intValue6 = ((Integer) obj).intValue();
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                CoroutineContext.Key key = element.getKey();
                CoroutineContext.Element v = safeCollector.n.v(key);
                if (key != Job.Key.j) {
                    if (element != v) {
                        intValue6 = Integer.MIN_VALUE;
                    }
                    intValue6++;
                } else {
                    Job job = (Job) v;
                    Job job2 = (Job) element;
                    while (job2 != null) {
                        if (job2 == job || !(job2 instanceof ScopeCoroutine)) {
                            obj3 = job2;
                            if (obj3 == job) {
                                throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + obj3 + ", expected child of " + job + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
                            }
                        } else {
                            ChildHandle childHandle = (ChildHandle) JobSupport.k.get((ScopeCoroutine) job2);
                            if (childHandle != null) {
                                job2 = childHandle.getParent();
                            } else {
                                job2 = null;
                            }
                        }
                    }
                    if (obj3 == job) {
                    }
                }
                return Integer.valueOf(intValue6);
            case 19:
                Ref$LongRef ref$LongRef = (Ref$LongRef) this.k;
                ((PointerInputChange) obj).a();
                ref$LongRef.j = ((Offset) obj2).a;
                return Unit.a;
            case 20:
                NuancedPermissionState nuancedPermissionState = (NuancedPermissionState) this.k;
                Composer composer6 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if ((intValue7 & 3) != 2) {
                    z7 = true;
                }
                GapComposer gapComposer7 = (GapComposer) composer6;
                if (gapComposer7.N(intValue7 & 1, z7)) {
                    if (nuancedPermissionState.a) {
                        str = "On";
                    } else {
                        str = "Tap to turn on";
                    }
                    ListRowKt.c(null, "Notifications", str, 0L, gapComposer7, 48, 9);
                } else {
                    gapComposer7.Q();
                }
                return Unit.a;
            case 21:
                final UriHandler uriHandler = (UriHandler) this.k;
                Composer composer7 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                if ((intValue8 & 3) != 2) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                GapComposer gapComposer8 = (GapComposer) composer7;
                if (gapComposer8.N(intValue8 & 1, z5)) {
                    String str3 = Strings.a;
                    String a = StringsKt.a(gapComposer8);
                    ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$SettingsScreenKt.e;
                    boolean h3 = gapComposer8.h(uriHandler) | gapComposer8.f(a);
                    Object K2 = gapComposer8.K();
                    Object obj6 = K2;
                    if (h3 || K2 == composer$Companion$Empty$1) {
                        f9 f9Var = new f9(uriHandler, a, i2);
                        gapComposer8.g0(f9Var);
                        obj6 = f9Var;
                    }
                    ListRowKt.b(null, composableLambdaImpl, null, null, (Function0) obj6, null, ComposableSingletons$SettingsScreenKt.f, gapComposer8, 1572912, 45);
                    ComposableLambdaImpl composableLambdaImpl2 = ComposableSingletons$SettingsScreenKt.g;
                    boolean h4 = gapComposer8.h(uriHandler);
                    Object K3 = gapComposer8.K();
                    Object obj7 = K3;
                    if (h4 || K3 == composer$Companion$Empty$1) {
                        final int i12 = z6 ? 1 : 0;
                        Function0 function0 = new Function0() { // from class: gf
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i13 = i12;
                                Unit unit = Unit.a;
                                UriHandler uriHandler2 = uriHandler;
                                switch (i13) {
                                    case 0:
                                        ((AndroidUriHandler) uriHandler2).a(Strings.b);
                                        return unit;
                                    default:
                                        ((AndroidUriHandler) uriHandler2).a(Strings.d);
                                        return unit;
                                }
                            }
                        };
                        gapComposer8.g0(function0);
                        obj7 = function0;
                    }
                    ListRowKt.b(null, composableLambdaImpl2, null, null, (Function0) obj7, null, ComposableSingletons$SettingsScreenKt.h, gapComposer8, 1572912, 45);
                    ComposableLambdaImpl composableLambdaImpl3 = ComposableSingletons$SettingsScreenKt.i;
                    boolean h5 = gapComposer8.h(uriHandler);
                    Object K4 = gapComposer8.K();
                    Object obj8 = K4;
                    if (h5 || K4 == composer$Companion$Empty$1) {
                        Function0 function02 = new Function0() { // from class: gf
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i13 = i2;
                                Unit unit = Unit.a;
                                UriHandler uriHandler2 = uriHandler;
                                switch (i13) {
                                    case 0:
                                        ((AndroidUriHandler) uriHandler2).a(Strings.b);
                                        return unit;
                                    default:
                                        ((AndroidUriHandler) uriHandler2).a(Strings.d);
                                        return unit;
                                }
                            }
                        };
                        gapComposer8.g0(function02);
                        obj8 = function02;
                    }
                    ListRowKt.b(null, composableLambdaImpl3, null, null, (Function0) obj8, null, ComposableSingletons$SettingsScreenKt.j, gapComposer8, 1572912, 45);
                } else {
                    gapComposer8.Q();
                }
                return Unit.a;
            case 22:
                final SnapshotStateObserver snapshotStateObserver = (SnapshotStateObserver) this.k;
                Set set2 = (Set) obj;
                AtomicReference atomicReference = snapshotStateObserver.b;
                while (true) {
                    Object obj9 = atomicReference.get();
                    if (obj9 == null) {
                        arrayList = set2;
                    } else if (obj9 instanceof Set) {
                        arrayList = CollectionsKt.C(new Set[]{obj9, set2});
                    } else if (obj9 instanceof List) {
                        arrayList = CollectionsKt.F((Collection) obj9, CollectionsKt.B(set2));
                    } else {
                        ComposerKt.b("Unexpected notification");
                        f7.h();
                        return null;
                    }
                    while (!atomicReference.compareAndSet(obj9, arrayList)) {
                        if (atomicReference.get() != obj9) {
                            break;
                        }
                    }
                    if (snapshotStateObserver.d()) {
                        snapshotStateObserver.a.b(new Function0() { // from class: androidx.compose.runtime.snapshots.b
                            /* JADX WARN: Finally extract failed */
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                int i13;
                                SnapshotStateObserver snapshotStateObserver2 = SnapshotStateObserver.this;
                                do {
                                    synchronized (snapshotStateObserver2.g) {
                                        try {
                                            if (!snapshotStateObserver2.c) {
                                                snapshotStateObserver2.c = true;
                                                try {
                                                    MutableVector mutableVector = snapshotStateObserver2.f;
                                                    Object[] objArr2 = mutableVector.j;
                                                    int i14 = mutableVector.l;
                                                    for (int i15 = 0; i15 < i14; i15++) {
                                                        SnapshotStateObserver.ObservedScopeMap observedScopeMap = (SnapshotStateObserver.ObservedScopeMap) objArr2[i15];
                                                        MutableScatterSet mutableScatterSet4 = observedScopeMap.g;
                                                        Function1 function1 = observedScopeMap.a;
                                                        Object[] objArr3 = mutableScatterSet4.b;
                                                        long[] jArr2 = mutableScatterSet4.a;
                                                        int length2 = jArr2.length - 2;
                                                        if (length2 >= 0) {
                                                            int i16 = 0;
                                                            while (true) {
                                                                long j2 = jArr2[i16];
                                                                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                    int i17 = 8;
                                                                    int i18 = 8 - ((~(i16 - length2)) >>> 31);
                                                                    int i19 = 0;
                                                                    while (i19 < i18) {
                                                                        if ((j2 & 255) < 128) {
                                                                            i13 = i17;
                                                                            function1.b(objArr3[(i16 << 3) + i19]);
                                                                        } else {
                                                                            i13 = i17;
                                                                        }
                                                                        j2 >>= i13;
                                                                        i19++;
                                                                        i17 = i13;
                                                                    }
                                                                    if (i18 != i17) {
                                                                        break;
                                                                    }
                                                                }
                                                                if (i16 == length2) {
                                                                    break;
                                                                }
                                                                i16++;
                                                            }
                                                        }
                                                        mutableScatterSet4.f();
                                                    }
                                                    snapshotStateObserver2.c = false;
                                                } catch (Throwable th2) {
                                                    snapshotStateObserver2.c = false;
                                                    throw th2;
                                                }
                                            }
                                        } catch (Throwable th3) {
                                            throw th3;
                                        }
                                    }
                                } while (snapshotStateObserver2.d());
                                return Unit.a;
                            }
                        });
                    }
                    return Unit.a;
                    break;
                }
            case 23:
                TextClassification textClassification = (TextClassification) this.k;
                ((Integer) obj2).intValue();
                GapComposer gapComposer9 = (GapComposer) ((Composer) obj);
                gapComposer9.W(950061013);
                String valueOf = String.valueOf(textClassification.getLabel());
                gapComposer9.p(false);
                return valueOf;
            case 24:
                RemoteAction remoteAction = (RemoteAction) this.k;
                ((Integer) obj2).intValue();
                GapComposer gapComposer10 = (GapComposer) ((Composer) obj);
                gapComposer10.W(-1376593684);
                String obj10 = remoteAction.getTitle().toString();
                gapComposer10.p(false);
                return obj10;
            case 25:
                ((Integer) obj2).getClass();
                ((TextLinkScope) this.k).a(RecomposeScopeImplKt.a(1), (Composer) obj);
                return Unit.a;
            case 26:
                URLBuilder uRLBuilder = (URLBuilder) this.k;
                String str4 = (String) obj;
                List list = (List) obj2;
                List list2 = URLParserKt.a;
                str4.getClass();
                list.getClass();
                uRLBuilder.i.a(list, str4);
                return Unit.a;
            case 27:
                return new IntOffset(((BiasAlignment.Vertical) this.k).a(0, (int) (((IntSize) obj).a & 4294967295L)) & 4294967295L);
            default:
                return new IntOffset(((BiasAlignment) this.k).a(0L, ((IntSize) obj).a, (LayoutDirection) obj2));
        }
    }

    public /* synthetic */ d(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    public /* synthetic */ d(int i, int i2, Object obj) {
        this.j = i2;
        this.k = obj;
    }

    public /* synthetic */ d(Paintable paintable) {
        this.j = 15;
        this.k = paintable;
    }
}
