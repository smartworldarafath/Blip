package androidx.navigation.compose;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation.NamedNavArgument;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavigatorProvider;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavGraphBuilderKt {
    public static void a(NavGraphBuilder navGraphBuilder, String str, List list, ComposableLambdaImpl composableLambdaImpl, int i) {
        if ((i & 2) != 0) {
            list = EmptyList.j;
        }
        NavigatorProvider navigatorProvider = navGraphBuilder.f;
        navigatorProvider.getClass();
        ComposeNavigatorDestinationBuilder composeNavigatorDestinationBuilder = new ComposeNavigatorDestinationBuilder((ComposeNavigator) navigatorProvider.b(NavigatorProvider.Companion.a(ComposeNavigator.class)), str, composableLambdaImpl);
        for (NamedNavArgument namedNavArgument : list) {
            namedNavArgument.getClass();
            composeNavigatorDestinationBuilder.c.put("isFromShareIntent", namedNavArgument.a);
        }
        navGraphBuilder.h.add(composeNavigatorDestinationBuilder.a());
    }
}
