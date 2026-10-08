package androidx.navigation.compose;

import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavGraphNavigator;
import androidx.navigation.Navigator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Navigator.Name("navigation")
/* loaded from: classes.dex */
public final class ComposeNavGraphNavigator extends NavGraphNavigator {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ComposeNavGraph extends NavGraph {
    }

    @Override // androidx.navigation.NavGraphNavigator, androidx.navigation.Navigator
    public final NavDestination a() {
        return new NavGraph(this);
    }

    @Override // androidx.navigation.NavGraphNavigator
    /* renamed from: g */
    public final NavGraph a() {
        return new NavGraph(this);
    }
}
