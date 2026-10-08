package androidx.navigation.compose;

import android.content.Context;
import androidx.navigation.NavController;
import androidx.navigation.NavGraphNavigator;
import androidx.navigation.NavHostController;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.internal.NavControllerImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract /* synthetic */ class NavHostControllerKt__NavHostController_androidKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.navigation.NavHostController, androidx.navigation.NavController] */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.navigation.Navigator, java.lang.Object] */
    public static final NavHostController a(Context context) {
        context.getClass();
        ?? navController = new NavController(context);
        NavControllerImpl navControllerImpl = navController.b;
        NavigatorProvider navigatorProvider = navControllerImpl.t;
        navigatorProvider.a(new NavGraphNavigator(navigatorProvider));
        NavigatorProvider navigatorProvider2 = navControllerImpl.t;
        navigatorProvider2.a(new ComposeNavigator());
        navigatorProvider2.a(new Object());
        return navController;
    }
}
