package androidx.navigation.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewModelStoreOwnerDefaults;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.InitializerViewModelFactoryBuilder;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.internal.WeakReference;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import defpackage.a0;
import defpackage.la;
import defpackage.ob;
import defpackage.u2;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavBackStackEntryProviderKt {
    public static final void a(NavBackStackEntry navBackStackEntry, SaveableStateHolder saveableStateHolder, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(233973821);
        if (gapComposer.h(navBackStackEntry)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.h(saveableStateHolder)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        if ((i5 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            CompositionLocalKt.b(new ProvidedValue[]{LocalViewModelStoreOwner.a.b(navBackStackEntry), LocalLifecycleOwnerKt.a.b(navBackStackEntry), LocalSavedStateRegistryOwnerKt.a.b(navBackStackEntry)}, ComposableLambdaKt.b(1808964477, new ob(saveableStateHolder, navBackStackEntry, composableLambdaImpl), gapComposer), gapComposer, 56);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new ob(navBackStackEntry, saveableStateHolder, composableLambdaImpl, i);
        }
    }

    public static final void b(SaveableStateHolder saveableStateHolder, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(832919318);
        if (gapComposer.h(saveableStateHolder)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = new la(8);
                gapComposer.g0(K);
            }
            Function1 function1 = (Function1) K;
            ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) gapComposer.j(LocalViewModelStoreOwner.a);
            if (viewModelStoreOwner != null) {
                ClassReference a = Reflection.a(BackStackEntryIdViewModel.class);
                InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
                initializerViewModelFactoryBuilder.a(Reflection.a(BackStackEntryIdViewModel.class), function1);
                BackStackEntryIdViewModel backStackEntryIdViewModel = (BackStackEntryIdViewModel) ViewModelKt.a(a, viewModelStoreOwner, initializerViewModelFactoryBuilder.b(), ViewModelStoreOwnerDefaults.a(viewModelStoreOwner), gapComposer);
                backStackEntryIdViewModel.d = new WeakReference(saveableStateHolder);
                saveableStateHolder.a(backStackEntryIdViewModel.c, composableLambdaImpl, gapComposer, ((i3 << 6) & 896) | 48);
            } else {
                u2.l("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                return;
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 17, saveableStateHolder, composableLambdaImpl);
        }
    }
}
