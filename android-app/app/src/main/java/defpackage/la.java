package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.activity.compose.LocalActivityKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.CompositionLocalMapKt;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverNodeOwnerScope;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.compose.BackStackEntryIdViewModel;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.internal.NavGraphImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.blip.libblip.frontend.Onboarding;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class la implements Function1 {
    public final /* synthetic */ int j;

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        ContextWrapper contextWrapper;
        int i = this.j;
        Context context = null;
        Unit unit = Unit.a;
        switch (i) {
            case 0:
                return unit;
            case 1:
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ComputedProvidableCompositionLocal computedProvidableCompositionLocal = LocalActivityKt.a;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.b;
                PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalMap.getClass();
                Context context2 = (Context) CompositionLocalMapKt.a(persistentCompositionLocalMap, staticProvidableCompositionLocal);
                while (true) {
                    if (context2 instanceof ContextWrapper) {
                        if (context2 instanceof Activity) {
                            context = context2;
                        } else {
                            context2 = ((ContextWrapper) context2).getBaseContext();
                        }
                    }
                }
                return (Activity) context;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Long) obj).getClass();
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Placeable.PlacementScope) obj).getClass();
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                return jb.e("[", paragraphInfo.b, ", ", paragraphInfo.c, ")");
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new BackStackEntryIdViewModel(SavedStateHandleSupport.a((CreationExtras) obj));
            case KeyModifiers.a /* 9 */:
                Context context3 = (Context) obj;
                context3.getClass();
                if (!(context3 instanceof ContextWrapper)) {
                    return null;
                }
                return ((ContextWrapper) context3).getBaseContext();
            case KeyModifiers.b /* 10 */:
                NavDestination navDestination = (NavDestination) obj;
                navDestination.getClass();
                return Integer.valueOf(navDestination.k.d);
            case 11:
                NavDestination navDestination2 = (NavDestination) obj;
                navDestination2.getClass();
                NavGraph navGraph = navDestination2.l;
                if (navGraph == null || navGraph.o.c != navDestination2.k.d) {
                    return null;
                }
                return navGraph;
            case KeyModifiers.c /* 12 */:
                NavDestination navDestination3 = (NavDestination) obj;
                navDestination3.getClass();
                NavGraph navGraph2 = navDestination3.l;
                if (navGraph2 == null || navGraph2.o.c != navDestination3.k.d) {
                    return null;
                }
                return navGraph2;
            case 13:
                Context context4 = (Context) obj;
                context4.getClass();
                if (context4 instanceof ContextWrapper) {
                    contextWrapper = (ContextWrapper) context4;
                } else {
                    contextWrapper = null;
                }
                if (contextWrapper == null) {
                    return null;
                }
                return contextWrapper.getBaseContext();
            case 14:
                Context context5 = (Context) obj;
                context5.getClass();
                if (!(context5 instanceof Activity)) {
                    return null;
                }
                return (Activity) context5;
            case 15:
                NavDestination navDestination4 = (NavDestination) obj;
                navDestination4.getClass();
                return navDestination4.l;
            case 16:
                NavDestination navDestination5 = (NavDestination) obj;
                navDestination5.getClass();
                if (!(navDestination5 instanceof NavGraph)) {
                    return null;
                }
                NavGraphImpl navGraphImpl = ((NavGraph) navDestination5).o;
                return navGraphImpl.a(navGraphImpl.c);
            case 17:
                NavDestination navDestination6 = ((NavBackStackEntry) ((AnimatedContentTransitionScope) obj).c()).k;
                navDestination6.getClass();
                int i2 = NavDestination.n;
                for (NavDestination navDestination7 : NavDestination.Companion.b((ComposeNavigator.Destination) navDestination6)) {
                }
                return null;
            case 18:
                return ((NavBackStackEntry) obj).o;
            case 19:
                NodeCoordinator nodeCoordinator = (NodeCoordinator) obj;
                LayoutNode layoutNode = nodeCoordinator.D;
                try {
                    if (nodeCoordinator.z()) {
                        nodeCoordinator.E1(true);
                    }
                    return unit;
                } catch (Throwable th) {
                    layoutNode.c0(th);
                    throw null;
                }
            case 20:
                OwnedLayer ownedLayer = ((NodeCoordinator) obj).c0;
                if (ownedLayer != null) {
                    ((GraphicsLayerOwnerLayer) ownedLayer).c();
                }
                return unit;
            case 21:
                ObserverNodeOwnerScope observerNodeOwnerScope = (ObserverNodeOwnerScope) obj;
                if (observerNodeOwnerScope.z()) {
                    observerNodeOwnerScope.j.s0();
                }
                return unit;
            case 22:
                Onboarding.Step step = (Onboarding.Step) obj;
                step.getClass();
                return step.m;
            case 23:
                LayoutNode layoutNode2 = (LayoutNode) obj;
                if (layoutNode2.L()) {
                    LayoutNode.X(layoutNode2, false, 7);
                }
                return unit;
            case 24:
                LayoutNode layoutNode3 = (LayoutNode) obj;
                if (layoutNode3.L()) {
                    LayoutNode.Z(layoutNode3, false, 7);
                }
                return unit;
            case 25:
                LayoutNode layoutNode4 = (LayoutNode) obj;
                if (layoutNode4.L()) {
                    layoutNode4.J();
                }
                return unit;
            case 26:
                LayoutNode layoutNode5 = (LayoutNode) obj;
                if (layoutNode5.L()) {
                    layoutNode5.Y(false);
                }
                return unit;
            case 27:
                LayoutNode layoutNode6 = (LayoutNode) obj;
                if (layoutNode6.L()) {
                    layoutNode6.Y(false);
                }
                return unit;
            case 28:
                LayoutNode layoutNode7 = (LayoutNode) obj;
                if (layoutNode7.L()) {
                    layoutNode7.W(false);
                }
                return unit;
            default:
                LayoutNode layoutNode8 = (LayoutNode) obj;
                if (layoutNode8.L()) {
                    layoutNode8.W(false);
                }
                return unit;
        }
    }

    public /* synthetic */ la(int i) {
        this.j = i;
    }
}
