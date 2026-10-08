package net.blip.android.ui.navigation;

import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import defpackage.lh;
import defpackage.u2;
import kotlin.coroutines.Continuation;
import kotlin.random.Random;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.NonCancellable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavigationResultKt {
    public static final Object a(NavController navController, lh lhVar, Continuation continuation) {
        int b = Random.k.b();
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) navController.b.f.i();
        if (navBackStackEntry != null) {
            lhVar.b(new Integer(b));
            return BuildersKt.e(NonCancellable.k, new NavigationResultKt$awaitNavigationResult$2(navController, b, navBackStackEntry, null), continuation);
        }
        u2.l("navController missing back stack");
        return null;
    }
}
