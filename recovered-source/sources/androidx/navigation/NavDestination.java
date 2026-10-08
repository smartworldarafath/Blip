package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt$valueIterator$1;
import androidx.core.os.BundleKt;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.savedstate.SavedStateReader;
import defpackage.fe;
import defpackage.jb;
import defpackage.la;
import defpackage.sb;
import io.sentry.d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavDestination {
    public static final /* synthetic */ int n = 0;
    public final String j;
    public final NavDestinationImpl k;
    public NavGraph l;
    public final SparseArrayCompat m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static String a(NavContext navContext, int i) {
            navContext.getClass();
            if (i <= 16777215) {
                return String.valueOf(i);
            }
            try {
                Context context = navContext.a;
                context.getClass();
                String resourceName = context.getResources().getResourceName(i);
                resourceName.getClass();
                return resourceName;
            } catch (Resources.NotFoundException unused) {
                return String.valueOf(i);
            }
        }

        public static Sequence b(NavDestination navDestination) {
            navDestination.getClass();
            return SequencesKt.c(navDestination, new la(15));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DeepLinkMatch implements Comparable<DeepLinkMatch> {
        public final NavDestination j;
        public final Bundle k;
        public final boolean l;
        public final int m;
        public final boolean n;

        public DeepLinkMatch(NavDestination navDestination, Bundle bundle, boolean z, int i, boolean z2) {
            this.j = navDestination;
            this.k = bundle;
            this.l = z;
            this.m = i;
            this.n = z2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final int compareTo(DeepLinkMatch deepLinkMatch) {
            deepLinkMatch.getClass();
            boolean z = deepLinkMatch.n;
            boolean z2 = deepLinkMatch.l;
            Bundle bundle = deepLinkMatch.k;
            boolean z3 = this.l;
            if (!z3 || z2) {
                if (z3 || !z2) {
                    int i = this.m - deepLinkMatch.m;
                    if (i <= 0) {
                        if (i >= 0) {
                            Bundle bundle2 = this.k;
                            if (bundle2 == null || bundle != null) {
                                if (bundle2 != null || bundle == null) {
                                    if (bundle2 != null) {
                                        int size = bundle2.size();
                                        bundle.getClass();
                                        int size2 = size - bundle.size();
                                        if (size2 <= 0) {
                                            if (size2 < 0) {
                                                return -1;
                                            }
                                        } else {
                                            return 1;
                                        }
                                    }
                                    boolean z4 = this.n;
                                    if (z4 && !z) {
                                        return 1;
                                    }
                                    if (!z4 && z) {
                                        return -1;
                                    }
                                    return 0;
                                }
                                return -1;
                            }
                            return 1;
                        }
                        return -1;
                    }
                    return 1;
                }
                return -1;
            }
            return 1;
        }
    }

    static {
        new LinkedHashMap();
    }

    public NavDestination(Navigator navigator) {
        navigator.getClass();
        LinkedHashMap linkedHashMap = NavigatorProvider.b;
        this.j = NavigatorProvider.Companion.a(navigator.getClass());
        this.k = new NavDestinationImpl(this);
        this.m = new SparseArrayCompat(0);
    }

    public final Bundle b(Bundle bundle) {
        Object obj;
        LinkedHashMap linkedHashMap = this.k.c;
        if (bundle == null && linkedHashMap.isEmpty()) {
            return null;
        }
        Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            NavArgument navArgument = (NavArgument) entry.getValue();
            navArgument.getClass();
            str.getClass();
            if (navArgument.b && (obj = navArgument.c) != null) {
                navArgument.a.e(a, str, obj);
            }
        }
        if (bundle != null) {
            a.putAll(bundle);
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String str2 = (String) entry2.getKey();
                NavArgument navArgument2 = (NavArgument) entry2.getValue();
                navArgument2.getClass();
                NavType navType = navArgument2.a;
                str2.getClass();
                if (!a.containsKey(str2) || !SavedStateReader.d(str2, a)) {
                    try {
                        navType.a(str2, a);
                    } catch (IllegalStateException unused) {
                    }
                }
                fe.l(jb.h("Wrong argument type for '", str2, "' in argument savedState. ", navType.b(), " expected."));
                return null;
            }
        }
        return a;
    }

    public final int[] c(NavDestination navDestination) {
        NavGraph navGraph;
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            NavDestinationImpl navDestinationImpl = this.k;
            NavGraph navGraph2 = this.l;
            if (navDestination != null) {
                navGraph = navDestination.l;
            } else {
                navGraph = null;
            }
            if (navGraph != null) {
                NavGraph navGraph3 = navDestination.l;
                navGraph3.getClass();
                if (navGraph3.o.a(navDestinationImpl.d) == this) {
                    arrayDeque.addFirst(this);
                    break;
                }
            }
            if (navGraph2 == null || navGraph2.o.c != navDestinationImpl.d) {
                arrayDeque.addFirst(this);
            }
            if (Intrinsics.a(navGraph2, navDestination) || navGraph2 == null) {
                break;
            }
            this = navGraph2;
        }
        List X = CollectionsKt.X(arrayDeque);
        ArrayList arrayList = new ArrayList(CollectionsKt.m(X, 10));
        Iterator it = X.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((NavDestination) it.next()).k.d));
        }
        return CollectionsKt.W(arrayList);
    }

    public DeepLinkMatch d(NavDeepLinkRequest navDeepLinkRequest) {
        boolean d;
        Bundle bundle;
        int i;
        boolean z;
        Regex regex;
        MatchResult c;
        NavDestinationImpl navDestinationImpl = this.k;
        LinkedHashMap linkedHashMap = navDestinationImpl.c;
        Uri uri = navDeepLinkRequest.a;
        ArrayList arrayList = navDestinationImpl.b;
        if (arrayList.isEmpty()) {
            return null;
        }
        Iterator it = arrayList.iterator();
        DeepLinkMatch deepLinkMatch = null;
        while (it.hasNext()) {
            NavDeepLink navDeepLink = (NavDeepLink) it.next();
            navDeepLink.getClass();
            Lazy lazy = navDeepLink.d;
            if (((Regex) lazy.getValue()) == null) {
                d = true;
            } else if (uri == null) {
                d = false;
            } else {
                Regex regex2 = (Regex) lazy.getValue();
                regex2.getClass();
                d = regex2.d(uri.toString());
            }
            if (d) {
                if (uri != null) {
                    bundle = navDeepLink.c(uri, linkedHashMap);
                } else {
                    bundle = null;
                }
                String str = navDeepLink.a;
                if (uri != null && str != null) {
                    List<String> pathSegments = uri.getPathSegments();
                    Uri parse = Uri.parse(str);
                    parse.getClass();
                    i = CollectionsKt.w(pathSegments, parse.getPathSegments()).size();
                } else {
                    i = 0;
                }
                String str2 = navDeepLinkRequest.b;
                if (str2 != null && str2.equals(null)) {
                    z = true;
                } else {
                    z = false;
                }
                if (bundle == null) {
                    if (z) {
                        linkedHashMap.getClass();
                        Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                        if (uri != null && (regex = (Regex) lazy.getValue()) != null && (c = regex.c(uri.toString())) != null) {
                            navDeepLink.d(c, a, linkedHashMap);
                            if (((Boolean) navDeepLink.e.getValue()).booleanValue()) {
                                navDeepLink.e(uri, a, linkedHashMap);
                            }
                        }
                        if (NavArgumentKt.a(linkedHashMap, new sb(1, a)).isEmpty()) {
                        }
                    }
                }
                DeepLinkMatch deepLinkMatch2 = new DeepLinkMatch(navDestinationImpl.a, bundle, navDeepLink.l, i, z);
                if (deepLinkMatch == null || deepLinkMatch2.compareTo(deepLinkMatch) > 0) {
                    deepLinkMatch = deepLinkMatch2;
                }
            }
        }
        return deepLinkMatch;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object obj) {
        boolean z;
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        boolean z2;
        if (this != obj) {
            if (obj != null && (obj instanceof NavDestination)) {
                NavDestinationImpl navDestinationImpl = this.k;
                ArrayList arrayList = navDestinationImpl.b;
                NavDestination navDestination = (NavDestination) obj;
                SparseArrayCompat sparseArrayCompat = navDestination.m;
                NavDestinationImpl navDestinationImpl2 = navDestination.k;
                boolean a = Intrinsics.a(arrayList, navDestinationImpl2.b);
                final SparseArrayCompat sparseArrayCompat2 = this.m;
                if (sparseArrayCompat2.f() == sparseArrayCompat.f()) {
                    Iterator it = SequencesKt.a(new IntIterator() { // from class: androidx.collection.SparseArrayKt$keyIterator$1
                        public int j;

                        @Override // java.util.Iterator
                        public final boolean hasNext() {
                            if (this.j < SparseArrayCompat.this.f()) {
                                return true;
                            }
                            return false;
                        }

                        @Override // kotlin.collections.IntIterator
                        public final int nextInt() {
                            int i = this.j;
                            this.j = i + 1;
                            return SparseArrayCompat.this.d(i);
                        }
                    }).iterator();
                    while (it.hasNext()) {
                        int intValue = ((Number) it.next()).intValue();
                        if (!Intrinsics.a(sparseArrayCompat2.c(intValue), sparseArrayCompat.c(intValue))) {
                        }
                    }
                    z = true;
                    linkedHashMap = navDestinationImpl.c;
                    linkedHashMap2 = navDestinationImpl2.c;
                    if (linkedHashMap.size() == linkedHashMap2.size()) {
                        Set<Map.Entry> entrySet = linkedHashMap.entrySet();
                        entrySet.getClass();
                        for (Map.Entry entry : entrySet) {
                            if (linkedHashMap2.containsKey(entry.getKey()) && Intrinsics.a(linkedHashMap2.get(entry.getKey()), entry.getValue())) {
                            }
                        }
                        z2 = true;
                        if (navDestinationImpl.d == navDestinationImpl2.d || !Intrinsics.a(navDestinationImpl.e, navDestinationImpl2.e) || !a || !z || !z2) {
                        }
                    }
                    z2 = false;
                    if (navDestinationImpl.d == navDestinationImpl2.d) {
                    }
                }
                z = false;
                linkedHashMap = navDestinationImpl.c;
                linkedHashMap2 = navDestinationImpl2.c;
                if (linkedHashMap.size() == linkedHashMap2.size()) {
                }
                z2 = false;
                if (navDestinationImpl.d == navDestinationImpl2.d) {
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        NavDestinationImpl navDestinationImpl = this.k;
        int i4 = navDestinationImpl.d * 31;
        String str = navDestinationImpl.e;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i5 = i4 + i;
        Iterator it = navDestinationImpl.b.iterator();
        while (it.hasNext()) {
            int i6 = i5 * 31;
            String str2 = ((NavDeepLink) it.next()).a;
            if (str2 != null) {
                i3 = str2.hashCode();
            } else {
                i3 = 0;
            }
            i5 = (i6 + i3) * 961;
        }
        SparseArrayCompat sparseArrayCompat = this.m;
        sparseArrayCompat.getClass();
        SparseArrayKt$valueIterator$1 sparseArrayKt$valueIterator$1 = new SparseArrayKt$valueIterator$1(sparseArrayCompat);
        if (!sparseArrayKt$valueIterator$1.hasNext()) {
            LinkedHashMap linkedHashMap = navDestinationImpl.c;
            for (String str3 : linkedHashMap.keySet()) {
                int c = jb.c(str3, i5 * 31, 31);
                Object obj = linkedHashMap.get(str3);
                if (obj != null) {
                    i2 = obj.hashCode();
                } else {
                    i2 = 0;
                }
                i5 = c + i2;
            }
            return i5;
        }
        sparseArrayKt$valueIterator$1.next().getClass();
        d.i();
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(0x");
        NavDestinationImpl navDestinationImpl = this.k;
        navDestinationImpl.getClass();
        sb.append(Integer.toHexString(navDestinationImpl.d));
        sb.append(")");
        String str = navDestinationImpl.e;
        if (str != null && !StringsKt.t(str)) {
            sb.append(" route=");
            sb.append(navDestinationImpl.e);
        }
        return sb.toString();
    }
}
