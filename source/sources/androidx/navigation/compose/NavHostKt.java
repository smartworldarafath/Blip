package androidx.navigation.compose;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.collection.MutableObjectFloatMap;
import androidx.collection.ObjectFloatMapKt;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.SizeTransform;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.core.app.TaskStackBuilder;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryState;
import androidx.navigation.NavController;
import androidx.navigation.NavDeepLinkRequest;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.NavOptions;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.NavViewModelStoreProviderKt;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.NavHostKt;
import androidx.navigation.internal.NavBackStackEntryStateImpl;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation.internal.NavGraphImpl;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import androidx.savedstate.SavedStateReaderKt;
import defpackage.i1;
import defpackage.k8;
import defpackage.la;
import defpackage.p0;
import defpackage.u2;
import defpackage.ub;
import defpackage.z6;
import defpackage.zb;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavHostKt {
    /* JADX WARN: Removed duplicated region for block: B:211:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0483 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:469:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x03b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final NavHostController navHostController, final NavGraph navGraph, final Modifier modifier, final Alignment alignment, final Function1 function1, final Function1 function12, final Function1 function13, final Function1 function14, final Function2 function2, final Function2 function22, Composer composer, final int i, final int i2) {
        GapComposer gapComposer;
        GapComposer gapComposer2;
        LifecycleOwner lifecycleOwner;
        NavigatorProvider navigatorProvider;
        NavigatorProvider navigatorProvider2;
        DialogNavigator dialogNavigator;
        final boolean z;
        SaveableStateHolder saveableStateHolder;
        NavBackStackEntry navBackStackEntry;
        int i3;
        boolean z2;
        MutableObjectFloatMap mutableObjectFloatMap;
        final ComposeNavigator composeNavigator;
        Function1 function15;
        DialogNavigator dialogNavigator2;
        MutableObjectFloatMap mutableObjectFloatMap2;
        ComposeNavigator composeNavigator2;
        State state;
        boolean z3;
        int[] intArray;
        Bundle bundle;
        int[] iArr;
        NavDestination.DeepLinkMatch e;
        int[] iArr2;
        ArrayList arrayList;
        int length;
        int i4;
        String str;
        NavDestination a;
        NavGraph navGraph2;
        Bundle bundle2;
        int i5;
        NavDestination a2;
        NavGraph navGraph3;
        GapComposer gapComposer3 = (GapComposer) composer;
        gapComposer3.X(82273676);
        int i6 = (i & 6) == 0 ? (gapComposer3.h(navHostController) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i6 |= gapComposer3.h(navGraph) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i6 |= gapComposer3.f(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i6 |= gapComposer3.f(alignment) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i6 |= gapComposer3.h(function1) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i6 |= gapComposer3.h(function12) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i6 |= gapComposer3.h(function13) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i6 |= gapComposer3.h(function14) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i6 |= gapComposer3.h(function2) ? 67108864 : 33554432;
        }
        if ((i & 805306368) == 0) {
            i6 |= gapComposer3.h(function22) ? 536870912 : 268435456;
        }
        int i7 = i6;
        int i8 = (i2 & 6) == 0 ? i2 | (gapComposer3.h(null) ? 4 : 2) : i2;
        if (gapComposer3.N(i7 & 1, ((306783379 & i7) == 306783378 && (i8 & 3) == 2) ? false : true)) {
            gapComposer3.S();
            if ((i & 1) != 0 && !gapComposer3.x()) {
                gapComposer3.Q();
            }
            gapComposer3.q();
            LifecycleOwner lifecycleOwner2 = (LifecycleOwner) gapComposer3.j(LocalLifecycleOwnerKt.a);
            ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) gapComposer3.j(LocalViewModelStoreOwner.a);
            if (viewModelStoreOwner != null) {
                ViewModelStore e2 = viewModelStoreOwner.e();
                navHostController.getClass();
                NavControllerImpl navControllerImpl = navHostController.b;
                e2.getClass();
                navControllerImpl.getClass();
                NavigatorProvider navigatorProvider3 = navControllerImpl.t;
                if (navControllerImpl.p == null) {
                    if (navControllerImpl.f.isEmpty()) {
                        navControllerImpl.p = NavViewModelStoreProviderKt.a(e2);
                    } else {
                        u2.l("ViewModelStore should be set before setGraph call");
                        return;
                    }
                }
                navGraph.getClass();
                navControllerImpl.getClass();
                LinkedHashMap linkedHashMap = navControllerImpl.u;
                NavGraphImpl navGraphImpl = navGraph.o;
                ArrayDeque arrayDeque = navControllerImpl.f;
                if (!arrayDeque.isEmpty() && navControllerImpl.h() == Lifecycle.State.j) {
                    u2.l("You cannot set a new graph on a NavController with entries on the back stack after the NavController has been destroyed. Please ensure that your NavHost has the same lifetime as your NavController.");
                    return;
                }
                if (!Intrinsics.a(navControllerImpl.c, navGraph)) {
                    NavGraph navGraph4 = navControllerImpl.c;
                    if (navGraph4 != null) {
                        Iterator it = new ArrayList(navControllerImpl.m.keySet()).iterator();
                        while (it.hasNext()) {
                            Integer num = (Integer) it.next();
                            num.getClass();
                            int intValue = num.intValue();
                            Iterator it2 = linkedHashMap.values().iterator();
                            while (it2.hasNext()) {
                                ((NavController.NavControllerNavigatorState) it2.next()).d = true;
                            }
                            NavOptionsBuilder navOptionsBuilder = new NavOptionsBuilder();
                            navOptionsBuilder.c = true;
                            boolean z4 = navOptionsBuilder.b;
                            Iterator it3 = it;
                            NavOptions.Builder builder = navOptionsBuilder.a;
                            builder.a = z4;
                            builder.b = true;
                            boolean z5 = navOptionsBuilder.e;
                            builder.c = -1;
                            builder.d = false;
                            builder.e = z5;
                            boolean p = navControllerImpl.p(intValue, null, builder.a());
                            Iterator it4 = linkedHashMap.values().iterator();
                            while (it4.hasNext()) {
                                ((NavController.NavControllerNavigatorState) it4.next()).d = false;
                                p = p;
                            }
                            if (p) {
                                navControllerImpl.l(intValue, true, false);
                            }
                            it = it3;
                        }
                        navControllerImpl.l(navGraph4.k.d, true, false);
                    }
                    navControllerImpl.c = navGraph;
                    NavigatorProvider navigatorProvider4 = navControllerImpl.t;
                    NavController navController = navControllerImpl.a;
                    NavContext navContext = navController.c;
                    Bundle bundle3 = navControllerImpl.d;
                    if (bundle3 != null && bundle3.containsKey("android-support-nav:controller:navigatorState:names")) {
                        ArrayList<String> stringArrayList = bundle3.getStringArrayList("android-support-nav:controller:navigatorState:names");
                        if (stringArrayList != null) {
                            Iterator<String> it5 = stringArrayList.iterator();
                            while (it5.hasNext()) {
                                Iterator<String> it6 = it5;
                                String next = it5.next();
                                navigatorProvider4.b(next);
                                if (bundle3.containsKey(next) && bundle3.getBundle(next) == null) {
                                    SavedStateReaderKt.a(next);
                                    throw null;
                                }
                                it5 = it6;
                            }
                        } else {
                            SavedStateReaderKt.a("android-support-nav:controller:navigatorState:names");
                            throw null;
                        }
                    }
                    Bundle[] bundleArr = navControllerImpl.e;
                    if (bundleArr != null) {
                        int length2 = bundleArr.length;
                        int i9 = 0;
                        while (i9 < length2) {
                            int i10 = i9;
                            int i11 = length2;
                            NavBackStackEntryState navBackStackEntryState = new NavBackStackEntryState(bundleArr[i10]);
                            NavBackStackEntryStateImpl navBackStackEntryStateImpl = navBackStackEntryState.a;
                            NavDestination c = navControllerImpl.c(navBackStackEntryStateImpl.b, null);
                            if (c != null) {
                                NavBackStackEntry a3 = navBackStackEntryState.a(navContext, c, navControllerImpl.h(), navControllerImpl.p);
                                Navigator b = navigatorProvider4.b(c.j);
                                Object obj = linkedHashMap.get(b);
                                if (obj == null) {
                                    obj = new NavController.NavControllerNavigatorState(navController, b);
                                    linkedHashMap.put(b, obj);
                                }
                                arrayDeque.addLast(a3);
                                ((NavController.NavControllerNavigatorState) obj).f(a3);
                                NavGraph navGraph5 = a3.k.l;
                                if (navGraph5 != null) {
                                    navControllerImpl.j(a3, navControllerImpl.e(navGraph5.k.d));
                                }
                                i9 = i10 + 1;
                                length2 = i11;
                            } else {
                                int i12 = NavDestination.n;
                                k8.q("Restoring the Navigation back stack failed: destination ", NavDestination.Companion.a(navContext, navBackStackEntryStateImpl.b), " cannot be found from the current destination ", navControllerImpl.f());
                                return;
                            }
                        }
                        navControllerImpl.b.a();
                        navControllerImpl.e = null;
                    }
                    Collection values = MapsKt.i(navigatorProvider4.a).values();
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj2 : values) {
                        if (!((Navigator) obj2).b) {
                            arrayList2.add(obj2);
                        }
                    }
                    Iterator it7 = arrayList2.iterator();
                    while (it7.hasNext()) {
                        Navigator navigator = (Navigator) it7.next();
                        Object obj3 = linkedHashMap.get(navigator);
                        if (obj3 == null) {
                            navigator.getClass();
                            obj3 = new NavController.NavControllerNavigatorState(navController, navigator);
                            linkedHashMap.put(navigator, obj3);
                        }
                        navigator.getClass();
                        navigator.a = (NavController.NavControllerNavigatorState) obj3;
                        navigator.b = true;
                    }
                    if (navControllerImpl.c != null && arrayDeque.isEmpty()) {
                        Activity activity = navController.d;
                        if (!navController.e && activity != null) {
                            Intent intent = activity.getIntent();
                            NavControllerImpl navControllerImpl2 = navController.b;
                            if (intent != null) {
                                Bundle extras = intent.getExtras();
                                boolean z6 = extras != null && extras.containsKey("android-support-nav:controller:deepLinkIds") && navController.e(intent);
                                if (z6) {
                                    try {
                                        intArray = extras.getIntArray("android-support-nav:controller:deepLinkIds");
                                        z3 = z6;
                                    } catch (Exception e3) {
                                        z3 = z6;
                                        Log.e("NavController", "handleDeepLink() could not extract deepLink from " + intent, e3);
                                    }
                                    ArrayList parcelableArrayList = !z3 ? extras.getParcelableArrayList("android-support-nav:controller:deepLinkArgs") : null;
                                    Bundle a4 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                                    bundle = !z3 ? extras.getBundle("android-support-nav:controller:deepLinkExtras") : null;
                                    if (bundle != null) {
                                        a4.putAll(bundle);
                                    }
                                    if (intArray != null || intArray.length == 0) {
                                        NavGraph i13 = navControllerImpl2.i();
                                        iArr = intArray;
                                        lifecycleOwner = lifecycleOwner2;
                                        gapComposer2 = gapComposer3;
                                        e = i13.e(new NavDeepLinkRequest(intent.getData(), intent.getAction(), intent.getType()), i13);
                                        if (e != null) {
                                            NavDestination navDestination = e.j;
                                            int[] c2 = navDestination.c(null);
                                            Bundle b2 = navDestination.b(e.k);
                                            if (b2 != null) {
                                                a4.putAll(b2);
                                            }
                                            iArr2 = c2;
                                            arrayList = null;
                                            if (iArr2 != null && iArr2.length != 0) {
                                                navControllerImpl2.getClass();
                                                NavGraph navGraph6 = navControllerImpl2.c;
                                                length = iArr2.length;
                                                i4 = 0;
                                                while (true) {
                                                    if (i4 < length) {
                                                        navigatorProvider = navigatorProvider3;
                                                        str = null;
                                                        break;
                                                    }
                                                    i5 = length;
                                                    int i14 = iArr2[i4];
                                                    if (i4 == 0) {
                                                        navigatorProvider = navigatorProvider3;
                                                        NavGraph navGraph7 = navControllerImpl2.c;
                                                        navGraph7.getClass();
                                                        a2 = navGraph7.k.d == i14 ? navControllerImpl2.c : null;
                                                    } else {
                                                        navigatorProvider = navigatorProvider3;
                                                        navGraph6.getClass();
                                                        a2 = navGraph6.o.a(i14);
                                                    }
                                                    if (a2 == null) {
                                                        int i15 = NavDestination.n;
                                                        str = NavDestination.Companion.a(navControllerImpl2.a.c, i14);
                                                        break;
                                                    }
                                                    if (i4 != iArr2.length - 1 && (a2 instanceof NavGraph)) {
                                                        while (true) {
                                                            navGraph3 = (NavGraph) a2;
                                                            navGraph3.getClass();
                                                            NavGraphImpl navGraphImpl2 = navGraph3.o;
                                                            if (!(navGraphImpl2.a(navGraphImpl2.c) instanceof NavGraph)) {
                                                                break;
                                                            } else {
                                                                a2 = navGraphImpl2.a(navGraphImpl2.c);
                                                            }
                                                        }
                                                        navGraph6 = navGraph3;
                                                    }
                                                    i4++;
                                                    length = i5;
                                                    navigatorProvider3 = navigatorProvider;
                                                }
                                                if (str == null) {
                                                    Log.i("NavController", "Could not find destination " + str + " in the navigation graph, ignoring the deep link from " + intent);
                                                    NavGraph navGraph8 = navControllerImpl.c;
                                                    navGraph8.getClass();
                                                    navControllerImpl.k(navGraph8, null, null);
                                                } else {
                                                    a4.putParcelable("android-support-nav:controller:deepLinkIntent", intent);
                                                    int length3 = iArr2.length;
                                                    Bundle[] bundleArr2 = new Bundle[length3];
                                                    for (int i16 = 0; i16 < length3; i16++) {
                                                        Bundle a5 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                                                        a5.putAll(a4);
                                                        if (arrayList != null && (bundle2 = (Bundle) arrayList.get(i16)) != null) {
                                                            a5.putAll(bundle2);
                                                        }
                                                        bundleArr2[i16] = a5;
                                                    }
                                                    int flags = intent.getFlags();
                                                    int i17 = flags & 268435456;
                                                    if (i17 != 0 && (flags & 32768) == 0) {
                                                        intent.addFlags(32768);
                                                        TaskStackBuilder taskStackBuilder = new TaskStackBuilder(navController.a);
                                                        taskStackBuilder.b(intent);
                                                        taskStackBuilder.c();
                                                        activity.finish();
                                                        activity.overridePendingTransition(0, 0);
                                                    } else if (i17 != 0) {
                                                        if (!navControllerImpl2.f.isEmpty()) {
                                                            NavGraph navGraph9 = navControllerImpl2.c;
                                                            navGraph9.getClass();
                                                            navControllerImpl2.l(navGraph9.k.d, true, false);
                                                        }
                                                        int i18 = 0;
                                                        while (i18 < iArr2.length) {
                                                            int i19 = iArr2[i18];
                                                            int i20 = i18 + 1;
                                                            Bundle bundle4 = bundleArr2[i18];
                                                            NavDestination c3 = navControllerImpl2.c(i19, null);
                                                            if (c3 != null) {
                                                                defpackage.b bVar = new defpackage.b(25, c3, navController);
                                                                NavOptionsBuilder navOptionsBuilder2 = new NavOptionsBuilder();
                                                                bVar.b(navOptionsBuilder2);
                                                                boolean z7 = navOptionsBuilder2.b;
                                                                NavOptions.Builder builder2 = navOptionsBuilder2.a;
                                                                builder2.a = z7;
                                                                builder2.b = navOptionsBuilder2.c;
                                                                int i21 = navOptionsBuilder2.d;
                                                                boolean z8 = navOptionsBuilder2.e;
                                                                builder2.c = i21;
                                                                builder2.d = false;
                                                                builder2.e = z8;
                                                                navControllerImpl2.k(c3, bundle4, builder2.a());
                                                                i18 = i20;
                                                            } else {
                                                                int i22 = NavDestination.n;
                                                                k8.q("Deep Linking failed: destination ", NavDestination.Companion.a(navContext, i19), " cannot be found from the current destination ", navControllerImpl2.f());
                                                                return;
                                                            }
                                                        }
                                                        navController.e = true;
                                                    } else {
                                                        NavGraph navGraph10 = navControllerImpl2.c;
                                                        int length4 = iArr2.length;
                                                        for (int i23 = 0; i23 < length4; i23++) {
                                                            int i24 = iArr2[i23];
                                                            Bundle bundle5 = bundleArr2[i23];
                                                            if (i23 == 0) {
                                                                a = navControllerImpl2.c;
                                                            } else {
                                                                navGraph10.getClass();
                                                                a = navGraph10.o.a(i24);
                                                            }
                                                            if (a != null) {
                                                                if (i23 != iArr2.length - 1) {
                                                                    if (a instanceof NavGraph) {
                                                                        while (true) {
                                                                            navGraph2 = (NavGraph) a;
                                                                            navGraph2.getClass();
                                                                            NavGraphImpl navGraphImpl3 = navGraph2.o;
                                                                            if (!(navGraphImpl3.a(navGraphImpl3.c) instanceof NavGraph)) {
                                                                                break;
                                                                            } else {
                                                                                a = navGraphImpl3.a(navGraphImpl3.c);
                                                                            }
                                                                        }
                                                                        navGraph10 = navGraph2;
                                                                    }
                                                                } else {
                                                                    NavOptions.Builder builder3 = new NavOptions.Builder();
                                                                    NavGraph navGraph11 = navControllerImpl2.c;
                                                                    navGraph11.getClass();
                                                                    builder3.c = navGraph11.k.d;
                                                                    builder3.d = true;
                                                                    builder3.e = false;
                                                                    builder3.f = 0;
                                                                    builder3.g = 0;
                                                                    navControllerImpl2.k(a, bundle5, builder3.a());
                                                                }
                                                            } else {
                                                                int i25 = NavDestination.n;
                                                                throw new IllegalStateException("Deep Linking failed: destination " + NavDestination.Companion.a(navContext, i24) + " cannot be found in graph " + navGraph10);
                                                            }
                                                        }
                                                        navController.e = true;
                                                    }
                                                }
                                            }
                                            navigatorProvider = navigatorProvider3;
                                            NavGraph navGraph82 = navControllerImpl.c;
                                            navGraph82.getClass();
                                            navControllerImpl.k(navGraph82, null, null);
                                        }
                                    } else {
                                        iArr = intArray;
                                        gapComposer2 = gapComposer3;
                                        lifecycleOwner = lifecycleOwner2;
                                    }
                                    iArr2 = iArr;
                                    arrayList = parcelableArrayList;
                                    if (iArr2 != null) {
                                        navControllerImpl2.getClass();
                                        NavGraph navGraph62 = navControllerImpl2.c;
                                        length = iArr2.length;
                                        i4 = 0;
                                        while (true) {
                                            if (i4 < length) {
                                            }
                                            i4++;
                                            length = i5;
                                            navigatorProvider3 = navigatorProvider;
                                        }
                                        if (str == null) {
                                        }
                                    }
                                    navigatorProvider = navigatorProvider3;
                                    NavGraph navGraph822 = navControllerImpl.c;
                                    navGraph822.getClass();
                                    navControllerImpl.k(navGraph822, null, null);
                                } else {
                                    z3 = z6;
                                }
                                intArray = null;
                                if (!z3) {
                                }
                                Bundle a42 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                                if (!z3) {
                                }
                                if (bundle != null) {
                                }
                                if (intArray != null) {
                                }
                                NavGraph i132 = navControllerImpl2.i();
                                iArr = intArray;
                                lifecycleOwner = lifecycleOwner2;
                                gapComposer2 = gapComposer3;
                                e = i132.e(new NavDeepLinkRequest(intent.getData(), intent.getAction(), intent.getType()), i132);
                                if (e != null) {
                                }
                                iArr2 = iArr;
                                arrayList = parcelableArrayList;
                                if (iArr2 != null) {
                                }
                                navigatorProvider = navigatorProvider3;
                                NavGraph navGraph8222 = navControllerImpl.c;
                                navGraph8222.getClass();
                                navControllerImpl.k(navGraph8222, null, null);
                            }
                        }
                        gapComposer2 = gapComposer3;
                        lifecycleOwner = lifecycleOwner2;
                        navigatorProvider = navigatorProvider3;
                        NavGraph navGraph82222 = navControllerImpl.c;
                        navGraph82222.getClass();
                        navControllerImpl.k(navGraph82222, null, null);
                    } else {
                        gapComposer2 = gapComposer3;
                        lifecycleOwner = lifecycleOwner2;
                        navigatorProvider = navigatorProvider3;
                        navControllerImpl.b();
                    }
                } else {
                    gapComposer2 = gapComposer3;
                    lifecycleOwner = lifecycleOwner2;
                    navigatorProvider = navigatorProvider3;
                    int f = navGraphImpl.b.f();
                    for (int i26 = 0; i26 < f; i26++) {
                        NavDestination navDestination2 = (NavDestination) navGraphImpl.b.g(i26);
                        NavGraph navGraph12 = navControllerImpl.c;
                        navGraph12.getClass();
                        int d = navGraph12.o.b.d(i26);
                        NavGraph navGraph13 = navControllerImpl.c;
                        navGraph13.getClass();
                        SparseArrayCompat sparseArrayCompat = navGraph13.o.b;
                        if (sparseArrayCompat.j) {
                            SparseArrayCompatKt.a(sparseArrayCompat);
                        }
                        int a6 = ContainerHelpersKt.a(sparseArrayCompat.m, d, sparseArrayCompat.k);
                        if (a6 >= 0) {
                            Object[] objArr = sparseArrayCompat.l;
                            Object obj4 = objArr[a6];
                            objArr[a6] = navDestination2;
                        }
                    }
                    Iterator<E> it8 = arrayDeque.iterator();
                    while (it8.hasNext()) {
                        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) it8.next();
                        int i27 = NavDestination.n;
                        List<NavDestination> i28 = CollectionsKt.i(SequencesKt.h(NavDestination.Companion.b(navBackStackEntry2.k)));
                        NavDestination navDestination3 = navControllerImpl.c;
                        navDestination3.getClass();
                        for (NavDestination navDestination4 : i28) {
                            if (!Intrinsics.a(navDestination4, navControllerImpl.c) || !navDestination3.equals(navGraph)) {
                                if (navDestination3 instanceof NavGraph) {
                                    navDestination3 = ((NavGraph) navDestination3).o.a(navDestination4.k.d);
                                    navDestination3.getClass();
                                }
                            }
                        }
                        navBackStackEntry2.k = navDestination3;
                    }
                }
                NavigatorProvider navigatorProvider5 = navigatorProvider;
                Navigator b3 = navigatorProvider5.b("composable");
                ComposeNavigator composeNavigator3 = b3 instanceof ComposeNavigator ? (ComposeNavigator) b3 : null;
                if (composeNavigator3 == null) {
                    RecomposeScopeImpl r = gapComposer2.r();
                    if (r != null) {
                        final int i29 = 0;
                        r.d = new Function2() { // from class: yb
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj5, Object obj6) {
                                int i30 = i29;
                                Unit unit = Unit.a;
                                int i31 = i2;
                                int i32 = i;
                                switch (i30) {
                                    case 0:
                                        ((Integer) obj6).getClass();
                                        int a7 = RecomposeScopeImplKt.a(i32 | 1);
                                        int a8 = RecomposeScopeImplKt.a(i31);
                                        NavHostKt.a(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function2, function22, (Composer) obj5, a7, a8);
                                        return unit;
                                    case 1:
                                        ((Integer) obj6).getClass();
                                        int a9 = RecomposeScopeImplKt.a(i32 | 1);
                                        int a10 = RecomposeScopeImplKt.a(i31);
                                        NavHostKt.a(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function2, function22, (Composer) obj5, a9, a10);
                                        return unit;
                                    default:
                                        ((Integer) obj6).getClass();
                                        int a11 = RecomposeScopeImplKt.a(i32 | 1);
                                        int a12 = RecomposeScopeImplKt.a(i31);
                                        NavHostKt.a(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function2, function22, (Composer) obj5, a11, a12);
                                        return unit;
                                }
                            }
                        };
                        return;
                    }
                    return;
                }
                GapComposer gapComposer4 = gapComposer2;
                MutableState b4 = SnapshotStateKt.b(composeNavigator3.b().e, gapComposer4);
                boolean z9 = ((List) b4.getValue()).size() > 1;
                NavigationEventDispatcherOwner navigationEventDispatcherOwner = (NavigationEventDispatcherOwner) gapComposer4.j(LocalNavigationEventDispatcherOwner.a);
                if (navigationEventDispatcherOwner != null) {
                    NavigationEventDispatcher b5 = navigationEventDispatcherOwner.b();
                    boolean f2 = gapComposer4.f(composeNavigator3);
                    Object K = gapComposer4.K();
                    Object obj5 = Composer.Companion.a;
                    if (f2 || K == obj5) {
                        K = new NavHostEventHandler(composeNavigator3);
                        gapComposer4.g0(K);
                    }
                    NavHostEventHandler navHostEventHandler = (NavHostEventHandler) K;
                    Boolean valueOf = Boolean.valueOf(z9);
                    boolean h = gapComposer4.h(navHostEventHandler) | gapComposer4.g(z9);
                    Object K2 = gapComposer4.K();
                    if (h || K2 == obj5) {
                        K2 = new ub(navHostEventHandler, z9);
                        gapComposer4.g0(K2);
                    }
                    LifecycleEffectKt.a(valueOf, navHostEventHandler, null, (Function1) K2, gapComposer4, 0);
                    boolean h2 = gapComposer4.h(b5) | gapComposer4.h(navHostEventHandler);
                    Object K3 = gapComposer4.K();
                    if (h2 || K3 == obj5) {
                        K3 = new defpackage.b(26, b5, navHostEventHandler);
                        gapComposer4.g0(K3);
                    }
                    EffectsKt.b(b5, navHostEventHandler, (Function1) K3, gapComposer4);
                    boolean booleanValue = ((Boolean) ((SnapshotMutableStateImpl) navHostEventHandler.h).getValue()).booleanValue();
                    float j = ((SnapshotMutableFloatStateImpl) navHostEventHandler.i).j();
                    final int j2 = ((SnapshotMutableIntStateImpl) navHostEventHandler.j).j();
                    LifecycleOwner lifecycleOwner3 = lifecycleOwner;
                    boolean h3 = gapComposer4.h(navHostController) | gapComposer4.h(lifecycleOwner3);
                    Object K4 = gapComposer4.K();
                    if (h3 || K4 == obj5) {
                        K4 = new defpackage.b(28, navHostController, lifecycleOwner3);
                        gapComposer4.g0(K4);
                    }
                    EffectsKt.c(lifecycleOwner3, (Function1) K4, gapComposer4);
                    boolean h4 = gapComposer4.h(navHostEventHandler) | gapComposer4.f(b4);
                    Object K5 = gapComposer4.K();
                    if (h4 || K5 == obj5) {
                        K5 = new p0(23, navHostEventHandler, b4);
                        gapComposer4.g0(K5);
                    }
                    EffectsKt.g((Function0) K5, gapComposer4);
                    SaveableStateHolder a7 = SaveableStateHolderKt.a(gapComposer4);
                    MutableState b6 = SnapshotStateKt.b(navControllerImpl.j, gapComposer4);
                    Object K6 = gapComposer4.K();
                    if (K6 == obj5) {
                        K6 = SnapshotStateKt.e(new zb(b6, 0));
                        gapComposer4.g0(K6);
                    }
                    final State state2 = (State) K6;
                    NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) CollectionsKt.A((List) state2.getValue());
                    Object K7 = gapComposer4.K();
                    if (K7 == obj5) {
                        int i30 = ObjectFloatMapKt.a;
                        K7 = new MutableObjectFloatMap(6);
                        gapComposer4.g0(K7);
                    }
                    MutableObjectFloatMap mutableObjectFloatMap3 = (MutableObjectFloatMap) K7;
                    if (navBackStackEntry3 != null) {
                        gapComposer4.W(-1407338484);
                        boolean g = ((i7 & 57344) == 16384) | gapComposer4.g(booleanValue) | gapComposer4.d(j2) | ((i7 & 234881024) == 67108864) | gapComposer4.h(composeNavigator3) | ((((i7 & 3670016) ^ 1572864) > 1048576 && gapComposer4.f(function13)) || (i7 & 1572864) == 1048576);
                        Object K8 = gapComposer4.K();
                        if (g || K8 == obj5) {
                            z = booleanValue;
                            final int i31 = 0;
                            navigatorProvider2 = navigatorProvider5;
                            saveableStateHolder = a7;
                            gapComposer = gapComposer4;
                            navBackStackEntry = navBackStackEntry3;
                            i3 = 536870912;
                            z2 = true;
                            mutableObjectFloatMap = mutableObjectFloatMap3;
                            composeNavigator = composeNavigator3;
                            Function1 function16 = new Function1() { // from class: vb
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj6) {
                                    int i32 = i31;
                                    Function1 function17 = function1;
                                    Function1 function18 = function13;
                                    ComposeNavigator composeNavigator4 = composeNavigator;
                                    int i33 = j2;
                                    Function2 function23 = function2;
                                    boolean z10 = z;
                                    AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj6;
                                    switch (i32) {
                                        case 0:
                                            NavDestination navDestination5 = ((NavBackStackEntry) animatedContentTransitionScope.c()).k;
                                            navDestination5.getClass();
                                            ComposeNavigator.Destination destination = (ComposeNavigator.Destination) navDestination5;
                                            if (z10) {
                                                int i34 = NavDestination.n;
                                                for (NavDestination navDestination6 : NavDestination.Companion.b(destination)) {
                                                }
                                                return (EnterTransition) function23.n(animatedContentTransitionScope, Integer.valueOf(i33));
                                            }
                                            if (((Boolean) ((SnapshotMutableStateImpl) composeNavigator4.c).getValue()).booleanValue()) {
                                                int i35 = NavDestination.n;
                                                for (NavDestination navDestination7 : NavDestination.Companion.b(destination)) {
                                                }
                                                return (EnterTransition) function18.b(animatedContentTransitionScope);
                                            }
                                            int i36 = NavDestination.n;
                                            for (NavDestination navDestination8 : NavDestination.Companion.b(destination)) {
                                            }
                                            return (EnterTransition) function17.b(animatedContentTransitionScope);
                                        default:
                                            NavDestination navDestination9 = ((NavBackStackEntry) animatedContentTransitionScope.a()).k;
                                            navDestination9.getClass();
                                            ComposeNavigator.Destination destination2 = (ComposeNavigator.Destination) navDestination9;
                                            if (z10) {
                                                int i37 = NavDestination.n;
                                                for (NavDestination navDestination10 : NavDestination.Companion.b(destination2)) {
                                                }
                                                return (ExitTransition) function23.n(animatedContentTransitionScope, Integer.valueOf(i33));
                                            }
                                            if (((Boolean) ((SnapshotMutableStateImpl) composeNavigator4.c).getValue()).booleanValue()) {
                                                int i38 = NavDestination.n;
                                                for (NavDestination navDestination11 : NavDestination.Companion.b(destination2)) {
                                                }
                                                return (ExitTransition) function18.b(animatedContentTransitionScope);
                                            }
                                            int i39 = NavDestination.n;
                                            for (NavDestination navDestination12 : NavDestination.Companion.b(destination2)) {
                                            }
                                            return (ExitTransition) function17.b(animatedContentTransitionScope);
                                    }
                                }
                            };
                            gapComposer.g0(function16);
                            K8 = function16;
                        } else {
                            z = booleanValue;
                            navigatorProvider2 = navigatorProvider5;
                            saveableStateHolder = a7;
                            gapComposer = gapComposer4;
                            navBackStackEntry = navBackStackEntry3;
                            i3 = 536870912;
                            z2 = true;
                            mutableObjectFloatMap = mutableObjectFloatMap3;
                            composeNavigator = composeNavigator3;
                        }
                        Function1 function17 = (Function1) K8;
                        boolean g2 = gapComposer.g(z) | gapComposer.d(j2) | ((i7 & 1879048192) == i3 ? z2 : false) | gapComposer.h(composeNavigator) | (((((i7 & 29360128) ^ 12582912) <= 8388608 || !gapComposer.f(function14)) && (i7 & 12582912) != 8388608) ? false : z2) | ((i7 & 458752) == 131072 ? z2 : false);
                        Object K9 = gapComposer.K();
                        if (g2 || K9 == obj5) {
                            final int i32 = 1;
                            function15 = function17;
                            Function1 function18 = new Function1() { // from class: vb
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj6) {
                                    int i322 = i32;
                                    Function1 function172 = function12;
                                    Function1 function182 = function14;
                                    ComposeNavigator composeNavigator4 = composeNavigator;
                                    int i33 = j2;
                                    Function2 function23 = function22;
                                    boolean z10 = z;
                                    AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj6;
                                    switch (i322) {
                                        case 0:
                                            NavDestination navDestination5 = ((NavBackStackEntry) animatedContentTransitionScope.c()).k;
                                            navDestination5.getClass();
                                            ComposeNavigator.Destination destination = (ComposeNavigator.Destination) navDestination5;
                                            if (z10) {
                                                int i34 = NavDestination.n;
                                                for (NavDestination navDestination6 : NavDestination.Companion.b(destination)) {
                                                }
                                                return (EnterTransition) function23.n(animatedContentTransitionScope, Integer.valueOf(i33));
                                            }
                                            if (((Boolean) ((SnapshotMutableStateImpl) composeNavigator4.c).getValue()).booleanValue()) {
                                                int i35 = NavDestination.n;
                                                for (NavDestination navDestination7 : NavDestination.Companion.b(destination)) {
                                                }
                                                return (EnterTransition) function182.b(animatedContentTransitionScope);
                                            }
                                            int i36 = NavDestination.n;
                                            for (NavDestination navDestination8 : NavDestination.Companion.b(destination)) {
                                            }
                                            return (EnterTransition) function172.b(animatedContentTransitionScope);
                                        default:
                                            NavDestination navDestination9 = ((NavBackStackEntry) animatedContentTransitionScope.a()).k;
                                            navDestination9.getClass();
                                            ComposeNavigator.Destination destination2 = (ComposeNavigator.Destination) navDestination9;
                                            if (z10) {
                                                int i37 = NavDestination.n;
                                                for (NavDestination navDestination10 : NavDestination.Companion.b(destination2)) {
                                                }
                                                return (ExitTransition) function23.n(animatedContentTransitionScope, Integer.valueOf(i33));
                                            }
                                            if (((Boolean) ((SnapshotMutableStateImpl) composeNavigator4.c).getValue()).booleanValue()) {
                                                int i38 = NavDestination.n;
                                                for (NavDestination navDestination11 : NavDestination.Companion.b(destination2)) {
                                                }
                                                return (ExitTransition) function182.b(animatedContentTransitionScope);
                                            }
                                            int i39 = NavDestination.n;
                                            for (NavDestination navDestination12 : NavDestination.Companion.b(destination2)) {
                                            }
                                            return (ExitTransition) function172.b(animatedContentTransitionScope);
                                    }
                                }
                            };
                            gapComposer.g0(function18);
                            K9 = function18;
                        } else {
                            function15 = function17;
                        }
                        final Function1 function19 = (Function1) K9;
                        boolean z10 = (i8 & 14) == 4 ? z2 : false;
                        Object K10 = gapComposer.K();
                        if (z10 || K10 == obj5) {
                            K10 = new la(17);
                            gapComposer.g0(K10);
                        }
                        final Function1 function110 = (Function1) K10;
                        Boolean bool = Boolean.TRUE;
                        boolean h5 = gapComposer.h(composeNavigator);
                        Object K11 = gapComposer.K();
                        if (h5 || K11 == obj5) {
                            K11 = new defpackage.b(27, state2, composeNavigator);
                            gapComposer.g0(K11);
                        }
                        EffectsKt.c(bool, (Function1) K11, gapComposer);
                        Object K12 = gapComposer.K();
                        if (K12 == obj5) {
                            K12 = new SeekableTransitionState(navBackStackEntry);
                            gapComposer.g0(K12);
                        }
                        SeekableTransitionState seekableTransitionState = (SeekableTransitionState) K12;
                        Transition d2 = TransitionKt.d(seekableTransitionState, "entry", gapComposer, 56);
                        if (z) {
                            gapComposer.W(-1404600068);
                            Float valueOf2 = Float.valueOf(j);
                            boolean f3 = gapComposer.f(b4) | gapComposer.h(seekableTransitionState) | gapComposer.c(j);
                            Object K13 = gapComposer.K();
                            if (f3 || K13 == obj5) {
                                K13 = new NavHostKt$NavHost$20$1(seekableTransitionState, j, b4, null);
                                gapComposer.g0(K13);
                            }
                            EffectsKt.e(gapComposer, valueOf2, (Function2) K13);
                            gapComposer.p(false);
                            dialogNavigator2 = null;
                        } else {
                            gapComposer.W(-1404181630);
                            boolean h6 = gapComposer.h(seekableTransitionState) | gapComposer.h(navBackStackEntry) | gapComposer.f(d2);
                            Object K14 = gapComposer.K();
                            if (h6 || K14 == obj5) {
                                dialogNavigator2 = null;
                                K14 = new NavHostKt$NavHost$21$1(seekableTransitionState, navBackStackEntry, d2, null);
                                gapComposer.g0(K14);
                            } else {
                                dialogNavigator2 = null;
                            }
                            EffectsKt.e(gapComposer, navBackStackEntry, (Function2) K14);
                            gapComposer.p(false);
                        }
                        final MutableObjectFloatMap mutableObjectFloatMap4 = mutableObjectFloatMap;
                        boolean h7 = gapComposer.h(mutableObjectFloatMap4) | gapComposer.h(composeNavigator) | gapComposer.g(z) | gapComposer.f(function15) | gapComposer.f(function19) | gapComposer.f(function110);
                        Object K15 = gapComposer.K();
                        if (h7 || K15 == obj5) {
                            final boolean z11 = z;
                            final ComposeNavigator composeNavigator4 = composeNavigator;
                            final Function1 function111 = function15;
                            K15 = new Function1() { // from class: wb
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj6) {
                                    float f4;
                                    AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj6;
                                    if (((List) state2.getValue()).contains(animatedContentTransitionScope.a())) {
                                        String str2 = ((NavBackStackEntry) animatedContentTransitionScope.a()).o;
                                        MutableObjectFloatMap mutableObjectFloatMap5 = MutableObjectFloatMap.this;
                                        int a8 = mutableObjectFloatMap5.a(str2);
                                        if (a8 >= 0) {
                                            f4 = mutableObjectFloatMap5.c[a8];
                                        } else {
                                            mutableObjectFloatMap5.d(str2, 0.0f);
                                            f4 = 0.0f;
                                        }
                                        if (!Intrinsics.a(((NavBackStackEntry) animatedContentTransitionScope.c()).o, ((NavBackStackEntry) animatedContentTransitionScope.a()).o)) {
                                            if (!((Boolean) ((SnapshotMutableStateImpl) composeNavigator4.c).getValue()).booleanValue() && !z11) {
                                                f4 += 1.0f;
                                            } else {
                                                f4 -= 1.0f;
                                            }
                                        }
                                        mutableObjectFloatMap5.d(((NavBackStackEntry) animatedContentTransitionScope.c()).o, f4);
                                        return new ContentTransform((EnterTransition) function111.b(animatedContentTransitionScope), (ExitTransition) function19.b(animatedContentTransitionScope), f4, (SizeTransform) function110.b(animatedContentTransitionScope));
                                    }
                                    return AnimatedContentKt.d(EnterTransition.a, ExitTransition.a);
                                }
                            };
                            mutableObjectFloatMap2 = mutableObjectFloatMap4;
                            composeNavigator2 = composeNavigator4;
                            state = state2;
                            gapComposer.g0(K15);
                        } else {
                            composeNavigator2 = composeNavigator;
                            state = state2;
                            mutableObjectFloatMap2 = mutableObjectFloatMap4;
                        }
                        Function1 function112 = (Function1) K15;
                        Object K16 = gapComposer.K();
                        if (K16 == obj5) {
                            K16 = new la(18);
                            gapComposer.g0(K16);
                        }
                        dialogNavigator = dialogNavigator2;
                        AnimatedContentKt.a(d2, modifier, function112, alignment, (Function1) K16, ComposableLambdaKt.b(-2066070464, new i1(seekableTransitionState, navBackStackEntry, z, saveableStateHolder, state), gapComposer), gapComposer, ((i7 >> 3) & 112) | 221184 | (i7 & 7168), 0);
                        Object a8 = d2.a.a();
                        Object value = ((SnapshotMutableStateImpl) d2.d).getValue();
                        boolean f4 = gapComposer.f(d2) | gapComposer.h(navHostController) | gapComposer.h(navBackStackEntry) | gapComposer.h(composeNavigator2) | gapComposer.h(mutableObjectFloatMap2);
                        Object K17 = gapComposer.K();
                        if (f4 || K17 == obj5) {
                            NavHostKt$NavHost$25$1 navHostKt$NavHost$25$1 = new NavHostKt$NavHost$25$1(d2, navHostController, navBackStackEntry, mutableObjectFloatMap2, state, composeNavigator2, null);
                            gapComposer.g0(navHostKt$NavHost$25$1);
                            K17 = navHostKt$NavHost$25$1;
                        }
                        EffectsKt.f(a8, value, (Function2) K17, gapComposer);
                        gapComposer.p(false);
                    } else {
                        gapComposer = gapComposer4;
                        navigatorProvider2 = navigatorProvider5;
                        dialogNavigator = null;
                        gapComposer.W(-1399025834);
                        gapComposer.p(false);
                    }
                    Navigator b7 = navigatorProvider2.b("dialog");
                    DialogNavigator dialogNavigator3 = b7 instanceof DialogNavigator ? (DialogNavigator) b7 : dialogNavigator;
                    if (dialogNavigator3 == null) {
                        RecomposeScopeImpl r2 = gapComposer.r();
                        if (r2 != null) {
                            final int i33 = 1;
                            r2.d = new Function2() { // from class: yb
                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj52, Object obj6) {
                                    int i302 = i33;
                                    Unit unit = Unit.a;
                                    int i312 = i2;
                                    int i322 = i;
                                    switch (i302) {
                                        case 0:
                                            ((Integer) obj6).getClass();
                                            int a72 = RecomposeScopeImplKt.a(i322 | 1);
                                            int a82 = RecomposeScopeImplKt.a(i312);
                                            NavHostKt.a(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function2, function22, (Composer) obj52, a72, a82);
                                            return unit;
                                        case 1:
                                            ((Integer) obj6).getClass();
                                            int a9 = RecomposeScopeImplKt.a(i322 | 1);
                                            int a10 = RecomposeScopeImplKt.a(i312);
                                            NavHostKt.a(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function2, function22, (Composer) obj52, a9, a10);
                                            return unit;
                                        default:
                                            ((Integer) obj6).getClass();
                                            int a11 = RecomposeScopeImplKt.a(i322 | 1);
                                            int a12 = RecomposeScopeImplKt.a(i312);
                                            NavHostKt.a(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function2, function22, (Composer) obj52, a11, a12);
                                            return unit;
                                    }
                                }
                            };
                            return;
                        }
                        return;
                    }
                    DialogHostKt.a(dialogNavigator3, gapComposer, 0);
                } else {
                    u2.l("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                    return;
                }
            } else {
                u2.l("NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner");
                return;
            }
        } else {
            gapComposer = gapComposer3;
            gapComposer.Q();
        }
        RecomposeScopeImpl r3 = gapComposer.r();
        if (r3 != null) {
            final int i34 = 2;
            r3.d = new Function2() { // from class: yb
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj52, Object obj6) {
                    int i302 = i34;
                    Unit unit = Unit.a;
                    int i312 = i2;
                    int i322 = i;
                    switch (i302) {
                        case 0:
                            ((Integer) obj6).getClass();
                            int a72 = RecomposeScopeImplKt.a(i322 | 1);
                            int a82 = RecomposeScopeImplKt.a(i312);
                            NavHostKt.a(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function2, function22, (Composer) obj52, a72, a82);
                            return unit;
                        case 1:
                            ((Integer) obj6).getClass();
                            int a9 = RecomposeScopeImplKt.a(i322 | 1);
                            int a10 = RecomposeScopeImplKt.a(i312);
                            NavHostKt.a(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function2, function22, (Composer) obj52, a9, a10);
                            return unit;
                        default:
                            ((Integer) obj6).getClass();
                            int a11 = RecomposeScopeImplKt.a(i322 | 1);
                            int a12 = RecomposeScopeImplKt.a(i312);
                            NavHostKt.a(navHostController, navGraph, modifier, alignment, function1, function12, function13, function14, function2, function22, (Composer) obj52, a11, a12);
                            return unit;
                    }
                }
            };
        }
    }

    public static final void b(final NavHostController navHostController, final String str, final Modifier modifier, Alignment alignment, final Function1 function1, final Function1 function12, Function1 function13, Function1 function14, Function2 function2, Function2 function22, final Function1 function15, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        boolean z;
        final Alignment alignment2;
        final Function1 function16;
        final Function1 function17;
        final Function2 function23;
        GapComposer gapComposer;
        final Function2 function24;
        Alignment alignment3;
        boolean z2;
        Function2 function25;
        int i5;
        Function2 function26;
        Function1 function18;
        Function1 function19;
        boolean z3;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(621695386);
        if (gapComposer2.h(navHostController)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i6 = i | i2;
        if (gapComposer2.f(str)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i7 = i6 | i3;
        char c = 128;
        if (gapComposer2.f(modifier)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i8 = i7 | i4 | 843082752;
        if (gapComposer2.h(function15)) {
            c = 256;
        }
        int i9 = '6' | c;
        if ((306783379 & i8) == 306783378 && (i9 & 147) == 146) {
            z = false;
        } else {
            z = true;
        }
        if (gapComposer2.N(i8 & 1, z)) {
            gapComposer2.S();
            if ((i & 1) != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
                alignment3 = alignment;
                function19 = function14;
                i5 = i8 & (-264241153);
                z2 = true;
                function18 = function13;
                function26 = function2;
                function25 = function22;
            } else {
                alignment3 = Alignment.Companion.a;
                z6 z6Var = DefaultNavTransitions.a;
                z2 = true;
                function25 = DefaultNavTransitions.b;
                i5 = i8 & (-264241153);
                function26 = z6Var;
                function18 = function1;
                function19 = function12;
            }
            gapComposer2.q();
            if ((i5 & 112) == 32) {
                z3 = z2;
            } else {
                z3 = false;
            }
            if ((i9 & 896) != 256) {
                z2 = false;
            }
            boolean z4 = z3 | z2;
            Object K = gapComposer2.K();
            if (z4 || K == Composer.Companion.a) {
                NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHostController.b.t, str);
                function15.b(navGraphBuilder);
                K = navGraphBuilder.c();
                gapComposer2.g0(K);
            }
            Function1 function110 = function18;
            Alignment alignment4 = alignment3;
            a(navHostController, (NavGraph) K, modifier, alignment4, function1, function12, function110, function19, function26, function25, gapComposer2, (i5 & 8078) | 906190848, 6);
            alignment2 = alignment4;
            gapComposer = gapComposer2;
            function24 = function25;
            function23 = function26;
            function17 = function19;
            function16 = function110;
        } else {
            gapComposer2.Q();
            alignment2 = alignment;
            function16 = function13;
            function17 = function14;
            function23 = function2;
            gapComposer = gapComposer2;
            function24 = function22;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(str, modifier, alignment2, function1, function12, function16, function17, function23, function24, function15, i) { // from class: xb
                public final /* synthetic */ String k;
                public final /* synthetic */ Modifier l;
                public final /* synthetic */ Alignment m;
                public final /* synthetic */ Function1 n;
                public final /* synthetic */ Function1 o;
                public final /* synthetic */ Function1 p;
                public final /* synthetic */ Function1 q;
                public final /* synthetic */ Function2 r;
                public final /* synthetic */ Function2 s;
                public final /* synthetic */ Function1 t;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a = RecomposeScopeImplKt.a(1769473);
                    NavHostKt.b(NavHostController.this, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, (Composer) obj, a);
                    return Unit.a;
                }
            };
        }
    }
}
