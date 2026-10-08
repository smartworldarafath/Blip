package androidx.navigation.compose;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation.NavDestination;
import androidx.navigation.NavDestinationBuilder;
import androidx.navigation.compose.ComposeNavigator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposeNavigatorDestinationBuilder extends NavDestinationBuilder<ComposeNavigator.Destination> {
    public final ComposeNavigator f;
    public final ComposableLambdaImpl g;

    public ComposeNavigatorDestinationBuilder(ComposeNavigator composeNavigator, String str, ComposableLambdaImpl composableLambdaImpl) {
        super(composeNavigator, str);
        this.f = composeNavigator;
        this.g = composableLambdaImpl;
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public final NavDestination a() {
        return (ComposeNavigator.Destination) super.a();
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public final NavDestination b() {
        return new ComposeNavigator.Destination(this.f, this.g);
    }
}
