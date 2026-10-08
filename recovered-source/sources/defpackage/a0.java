package defpackage;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.ContentTransform;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.material.AlertDialogKt;
import androidx.compose.material.AnchoredDragScope;
import androidx.compose.material.AnchoredDraggableState;
import androidx.compose.material.AnchoredDraggableState$anchoredDragScope$1;
import androidx.compose.material.ButtonKt;
import androidx.compose.material.TextKt;
import androidx.compose.material.Typography;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.ReusableRememberObserverHolder;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.platform.SemanticsNodeCopy;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.core.app.NotificationManagerCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.DialogHostKt;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.compose.NavBackStackEntryProviderKt;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.audiopicker.AudioPickerScreenKt;
import net.blip.android.ui.gallery.GalleryVideoPlayerKt;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.navigation.NavResultWriter;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.android.ui.onboarding.ComposableSingletons$OnboardingEnableNotificationsStepKt;
import net.blip.android.ui.onboarding.ComposablesKt;
import net.blip.android.ui.onboarding.OnboardingCompanionDeviceSetupStep;
import net.blip.android.ui.onboarding.OnboardingEnableNotificationsStep;
import net.blip.android.ui.onboarding.OnboardingShareInstructionsStep;
import net.blip.android.ui.onboarding.OnboardingSplashStep;
import net.blip.android.ui.util.NuancedPermissionState;
import net.blip.android.ui.util.NuancedPermissionStateKt;
import net.blip.android.ui.util.SystemBarsMetrics;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.shared.OnDisposeKt;
import net.blip.shared.OnboardingStepperKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a0 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ a0(int i, int i2, Object obj, Object obj2) {
        this.j = i2;
        this.k = obj;
        this.l = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i = this.j;
        int i2 = 7;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i3 = 3;
        Unit unit = Unit.a;
        Object obj3 = this.l;
        Object obj4 = this.k;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AlertDialogKt.a((Function2) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(7));
                return unit;
            case 1:
                float floatValue = ((Float) obj).floatValue();
                float floatValue2 = ((Float) obj2).floatValue();
                AnchoredDraggableState anchoredDraggableState = ((AnchoredDraggableState$anchoredDragScope$1) ((AnchoredDragScope) obj4)).a;
                ((SnapshotMutableFloatStateImpl) anchoredDraggableState.j).k(floatValue);
                ((SnapshotMutableFloatStateImpl) anchoredDraggableState.k).k(floatValue2);
                ((Ref$FloatRef) obj3).j = floatValue;
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                AndroidContentCaptureManager androidContentCaptureManager = (AndroidContentCaptureManager) obj3;
                int intValue = ((Integer) obj).intValue();
                SemanticsNode semanticsNode = (SemanticsNode) obj2;
                if (!((SemanticsNodeCopy) obj4).b.a(semanticsNode.f)) {
                    androidContentCaptureManager.m(intValue, semanticsNode);
                    androidContentCaptureManager.q.j(unit);
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((Integer) obj2).getClass();
                AndroidDialog_androidKt.b((Modifier) obj3, (Function2) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                NavResultWriter navResultWriter = (NavResultWriter) obj4;
                NavHostController navHostController = (NavHostController) obj3;
                Composer composer = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue2 & 1, z)) {
                    Modifier c = SizeKt.c(WindowInsetsPadding_androidKt.b(PaddingKt.h(Modifier.Companion.b, 0.0f, 60.0f, 0.0f, 0.0f, 13)), 1.0f);
                    float f = ((SystemBarsMetrics) gapComposer.j(SystemBarsMetricsKt.a)).b;
                    boolean h = gapComposer.h(navResultWriter) | gapComposer.h(navHostController);
                    Object K = gapComposer.K();
                    if (h || K == composer$Companion$Empty$1) {
                        K = new b(i3, navResultWriter, navHostController);
                        gapComposer.g0(K);
                    }
                    AudioPickerScreenKt.a(c, f, (Function1) K, gapComposer, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Integer) obj2).getClass();
                ComposablesKt.b((ImageVector) obj4, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj2).getClass();
                ComposablesKt.d((Modifier) obj4, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(55));
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                ((ContextMenuScope) obj4).a((ContextMenuColors) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                DefaultTextContextMenuDropdownProvider_androidKt.a((TextContextMenuSession) obj4, (TextContextMenuData) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case KeyModifiers.a /* 9 */:
                ((Integer) obj2).getClass();
                DialogHostKt.b((List) obj4, (Collection) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case KeyModifiers.b /* 10 */:
                DialogNavigator.Destination destination = (DialogNavigator.Destination) obj4;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                Composer composer2 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue3 & 1, z2)) {
                    destination.p.f(navBackStackEntry, gapComposer2, 0);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case 11:
                List list = (List) obj4;
                PagerState pagerState = (PagerState) obj3;
                Composer composer3 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z5 = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue4 & 1, z5)) {
                    if (!list.isEmpty()) {
                        ScreenLockupKt.c(null, (pagerState.d.a() + 1) + " of " + list.size(), TextStyle.a(((AndroidTextStyles) gapComposer3.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer3.j(AndroidColorsKt.a)).d, 0L, FontWeight.t, 0L, 0L, null, 0, 16744442), gapComposer3, 0, 1);
                    }
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case KeyModifiers.c /* 12 */:
                ((Integer) obj2).getClass();
                GalleryVideoPlayerKt.b((Modifier) obj4, (ExoPlayer) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case 13:
                RememberManager rememberManager = (RememberManager) obj4;
                SlotWriter slotWriter = (SlotWriter) obj3;
                int intValue5 = ((Integer) obj).intValue();
                if (obj2 instanceof ComposeNodeLifecycleCallback) {
                    ((RememberEventDispatcher) rememberManager).f.b((ComposeNodeLifecycleCallback) obj2);
                } else if (!(obj2 instanceof ReusableRememberObserverHolder)) {
                    if (obj2 instanceof RememberObserverHolder) {
                        GapComposerKt.d(slotWriter, intValue5, obj2);
                        ((RememberEventDispatcher) rememberManager).e((RememberObserverHolder) obj2);
                    } else if (obj2 instanceof RecomposeScopeImpl) {
                        GapComposerKt.d(slotWriter, intValue5, obj2);
                        ((RecomposeScopeImpl) obj2).d();
                    }
                }
                return unit;
            case 14:
                return ((LazyLayoutMeasurePolicy) obj3).a(new LazyLayoutMeasureScopeImpl((LazyLayoutItemContentFactory) obj4, (SubcomposeMeasureScope) obj), ((Constraints) obj2).a);
            case 15:
                Typography typography = (Typography) obj4;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                Composer composer4 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if ((intValue6 & 3) != 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue6 & 1, z3)) {
                    TextKt.a(typography.i, ComposableLambdaKt.b(905505767, new c0(composableLambdaImpl, i2, false ? (byte) 1 : (byte) 0), gapComposer4), gapComposer4, 48);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case 16:
                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj4;
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj3;
                Composer composer5 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                if ((intValue7 & 3) != 2) {
                    z7 = true;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue7 & 1, z7)) {
                    CompositionLocalKt.b(new ProvidedValue[]{LocalViewModelStoreOwner.a.b(navBackStackEntry2), LocalLifecycleOwnerKt.a.b(navBackStackEntry2), LocalSavedStateRegistryOwnerKt.a.b(navBackStackEntry2)}, composableLambdaImpl2, gapComposer5, 8);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case 17:
                ((Integer) obj2).getClass();
                NavBackStackEntryProviderKt.b((SaveableStateHolder) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return unit;
            case 18:
                NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) obj4;
                AnimatedContentScope animatedContentScope = (AnimatedContentScope) obj3;
                Composer composer6 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if ((intValue8 & 3) != 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.N(intValue8 & 1, z4)) {
                    NavDestination navDestination = navBackStackEntry3.k;
                    navDestination.getClass();
                    ((ComposeNavigator.Destination) navDestination).o.j(animatedContentScope, navBackStackEntry3, gapComposer6, 0);
                } else {
                    gapComposer6.Q();
                }
                return unit;
            case 19:
                ((Integer) obj2).getClass();
                NavigationRootKt.c((NavHostController) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case 20:
                NodeCoordinator nodeCoordinator = (NodeCoordinator) obj4;
                fc fcVar = (fc) obj3;
                Canvas canvas = (Canvas) obj;
                GraphicsLayer graphicsLayer = (GraphicsLayer) obj2;
                LayoutNode layoutNode = nodeCoordinator.D;
                if (layoutNode.M()) {
                    nodeCoordinator.Y = canvas;
                    nodeCoordinator.X = graphicsLayer;
                    LayoutNodeKt.a(layoutNode).getSnapshotObserver().a.e(nodeCoordinator, NodeCoordinator.f0, fcVar);
                    nodeCoordinator.b0 = false;
                } else {
                    nodeCoordinator.b0 = true;
                }
                return unit;
            case 21:
                NotificationManagerCompat notificationManagerCompat = (NotificationManagerCompat) obj4;
                MutableState mutableState = (MutableState) obj3;
                Lifecycle.Event event = (Lifecycle.Event) obj2;
                ((LifecycleOwner) obj).getClass();
                event.getClass();
                if (event == Lifecycle.Event.ON_RESUME) {
                    mutableState.setValue(Boolean.valueOf(notificationManagerCompat.b.areNotificationsEnabled()));
                }
                return unit;
            case 22:
                ((Integer) obj2).getClass();
                NuancedPermissionStateKt.a((LifecycleOwner) obj3, (Function2) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case 23:
                ((Integer) obj2).getClass();
                OnDisposeKt.a(obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case 24:
                ((Integer) obj2).getClass();
                ((OnboardingCompanionDeviceSetupStep) obj4).a((Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case 25:
                NuancedPermissionState nuancedPermissionState = (NuancedPermissionState) obj4;
                MutableState mutableState2 = (MutableState) obj3;
                Composer composer7 = (Composer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                if ((intValue9 & 3) != 2) {
                    z6 = true;
                }
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (gapComposer7.N(intValue9 & 1, z6)) {
                    ColumnMeasurePolicy a = ColumnKt.a(Arrangement.e(8.0f), Alignment.Companion.n, gapComposer7, 54);
                    int hashCode = Long.hashCode(gapComposer7.T);
                    PersistentCompositionLocalMap l = gapComposer7.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer7, Modifier.Companion.b);
                    ComposeUiNode.b.getClass();
                    gapComposer7.Z();
                    if (gapComposer7.S) {
                        gapComposer7.k(LayoutNode.b0);
                    } else {
                        gapComposer7.j0();
                    }
                    Updater.c(gapComposer7, a, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer7, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer7, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer7);
                    Updater.c(gapComposer7, c2, ComposeUiNode.Companion.b);
                    boolean h2 = gapComposer7.h(nuancedPermissionState);
                    Object K2 = gapComposer7.K();
                    if (h2 || K2 == composer$Companion$Empty$1) {
                        K2 = new l3(nuancedPermissionState, 3);
                        gapComposer7.g0(K2);
                    }
                    ComposablesKt.a("Enable notifications", false, (Function0) K2, gapComposer7, 6, 2);
                    boolean f2 = gapComposer7.f(mutableState2);
                    Object K3 = gapComposer7.K();
                    if (f2 || K3 == composer$Companion$Empty$1) {
                        K3 = new o1(mutableState2, 27);
                        gapComposer7.g0(K3);
                    }
                    ButtonKt.b((Function0) K3, false, null, ComposableSingletons$OnboardingEnableNotificationsStepKt.e, gapComposer7, 510);
                    gapComposer7.p(true);
                } else {
                    gapComposer7.Q();
                }
                return unit;
            case 26:
                ((Integer) obj2).getClass();
                ((OnboardingEnableNotificationsStep) obj4).a((Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case 27:
                ((Integer) obj2).getClass();
                ((OnboardingShareInstructionsStep) obj4).a((Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case 28:
                ((Integer) obj2).getClass();
                ((OnboardingSplashStep) obj4).a((Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            default:
                ((Integer) obj2).getClass();
                OnboardingStepperKt.a((ContentTransform) obj4, (ContentTransform) obj3, (Composer) obj, RecomposeScopeImplKt.a(152792503));
                return unit;
        }
    }

    public /* synthetic */ a0(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    public /* synthetic */ a0(Object obj, Function2 function2, int i, int i2) {
        this.j = i2;
        this.l = obj;
        this.k = function2;
    }
}
