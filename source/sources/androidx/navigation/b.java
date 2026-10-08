package androidx.navigation;

import android.net.Uri;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwnerDefaults;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavDeepLink;
import defpackage.fe;
import defpackage.jb;
import defpackage.u2;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ b(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (navBackStackEntry.r) {
                    if (navBackStackEntry.t.i != Lifecycle.State.j) {
                        ViewModelProvider.Factory factory = (ViewModelProvider.Factory) navBackStackEntry.u.getValue();
                        CreationExtras a = ViewModelStoreOwnerDefaults.a(navBackStackEntry);
                        factory.getClass();
                        a.getClass();
                        return ((SavedStateViewModel) new ViewModelProvider(navBackStackEntry.e(), factory, a).a(Reflection.a(SavedStateViewModel.class))).b;
                    }
                    u2.l("You cannot access the NavBackStackEntry's SavedStateHandle after the NavBackStackEntry is destroyed.");
                    return null;
                }
                u2.l("You cannot access the NavBackStackEntry's SavedStateHandle until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
                return null;
            default:
                NavDeepLink navDeepLink = (NavDeepLink) obj;
                String str = navDeepLink.a;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                if (((Boolean) navDeepLink.e.getValue()).booleanValue()) {
                    str.getClass();
                    Uri parse = Uri.parse(str);
                    parse.getClass();
                    for (String str2 : parse.getQueryParameterNames()) {
                        StringBuilder sb = new StringBuilder();
                        List<String> queryParameters = parse.getQueryParameters(str2);
                        if (queryParameters.size() <= 1) {
                            String str3 = (String) CollectionsKt.t(queryParameters);
                            if (str3 == null) {
                                navDeepLink.g = true;
                                str3 = str2;
                            }
                            NavDeepLink.ParamQuery paramQuery = new NavDeepLink.ParamQuery();
                            int i2 = 0;
                            for (MatchResult a2 = Regex.a(NavDeepLink.n, str3); a2 != null; a2 = a2.next()) {
                                MatchGroup c = a2.a().c(1);
                                c.getClass();
                                paramQuery.b.add(c.a);
                                if (a2.b().j > i2) {
                                    String quote = Pattern.quote(str3.substring(i2, a2.b().j));
                                    quote.getClass();
                                    sb.append(quote);
                                }
                                sb.append("([\\s\\S]+?)?");
                                i2 = a2.b().k + 1;
                            }
                            if (i2 < str3.length()) {
                                String quote2 = Pattern.quote(str3.substring(i2));
                                quote2.getClass();
                                sb.append(quote2);
                            }
                            sb.append("$");
                            paramQuery.a = NavDeepLink.g(sb.toString());
                            linkedHashMap.put(str2, paramQuery);
                        } else {
                            fe.l(jb.h("Query parameter ", str2, " must only be present once in ", str, ". To support repeated query parameters, use an array type for your argument and the pattern provided in your URI will be used to parse each query parameter instance."));
                            return null;
                        }
                    }
                }
                return linkedHashMap;
        }
    }
}
