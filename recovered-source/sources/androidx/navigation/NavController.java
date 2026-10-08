package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.activity.OnBackPressedCallback;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDeepLinkBuilder;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation.internal.NavDestinationImpl;
import defpackage.g9;
import defpackage.k8;
import defpackage.la;
import defpackage.p0;
import defpackage.pb;
import defpackage.q;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavController {
    public final Context a;
    public final NavControllerImpl b;
    public final NavContext c;
    public final Activity d;
    public boolean e;
    public final NavController$onBackPressedCallback$1 f;
    public final boolean g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class NavControllerNavigatorState extends NavigatorState {
        public final Navigator g;
        public final /* synthetic */ NavController h;

        public NavControllerNavigatorState(NavController navController, Navigator navigator) {
            navigator.getClass();
            this.h = navController;
            this.g = navigator;
        }

        @Override // androidx.navigation.NavigatorState
        public final NavBackStackEntry a(NavDestination navDestination, Bundle bundle) {
            NavControllerImpl navControllerImpl = this.h.b;
            navControllerImpl.getClass();
            return NavBackStackEntry.Companion.a(navControllerImpl.a.c, navDestination, bundle, navControllerImpl.h(), navControllerImpl.p);
        }

        @Override // androidx.navigation.NavigatorState
        public final void b(NavBackStackEntry navBackStackEntry) {
            NavViewModelStoreProvider navViewModelStoreProvider;
            navBackStackEntry.getClass();
            NavControllerImpl navControllerImpl = this.h.b;
            MutableStateFlow mutableStateFlow = navControllerImpl.i;
            String str = navBackStackEntry.o;
            LinkedHashMap linkedHashMap = navControllerImpl.x;
            boolean a = Intrinsics.a(linkedHashMap.get(navBackStackEntry), Boolean.TRUE);
            MutableStateFlow mutableStateFlow2 = this.c;
            mutableStateFlow2.setValue(SetsKt.b((Set) mutableStateFlow2.getValue(), navBackStackEntry));
            linkedHashMap.remove(navBackStackEntry);
            ArrayDeque arrayDeque = navControllerImpl.f;
            if (!arrayDeque.contains(navBackStackEntry)) {
                navControllerImpl.q(navBackStackEntry);
                if (navBackStackEntry.t.i.compareTo(Lifecycle.State.l) >= 0) {
                    navBackStackEntry.v = Lifecycle.State.j;
                    navBackStackEntry.h();
                }
                if (!arrayDeque.isEmpty()) {
                    Iterator<E> it = arrayDeque.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.a(((NavBackStackEntry) it.next()).o, str)) {
                            break;
                        }
                    }
                }
                if (!a && (navViewModelStoreProvider = navControllerImpl.p) != null) {
                    ((NavViewModelStoreProviderImpl) navViewModelStoreProvider).a(str);
                }
                navControllerImpl.r();
                mutableStateFlow.h(navControllerImpl.o());
                return;
            }
            if (!this.d) {
                navControllerImpl.r();
                navControllerImpl.g.h(new ArrayList(arrayDeque));
                mutableStateFlow.h(navControllerImpl.o());
            }
        }

        @Override // androidx.navigation.NavigatorState
        public final void c(NavBackStackEntry navBackStackEntry, boolean z) {
            navBackStackEntry.getClass();
            NavControllerImpl navControllerImpl = this.h.b;
            p0 p0Var = new p0(this, navBackStackEntry, z);
            navControllerImpl.getClass();
            Navigator b = navControllerImpl.t.b(navBackStackEntry.k.j);
            navControllerImpl.x.put(navBackStackEntry, Boolean.valueOf(z));
            if (b.equals(this.g)) {
                pb pbVar = navControllerImpl.w;
                if (pbVar != null) {
                    pbVar.b(navBackStackEntry);
                    p0Var.a();
                    return;
                }
                ArrayDeque arrayDeque = navControllerImpl.f;
                int indexOf = arrayDeque.indexOf(navBackStackEntry);
                if (indexOf < 0) {
                    Log.i("NavController", "Ignoring pop of " + navBackStackEntry + " as it was not found on the current back stack");
                    return;
                }
                int i = indexOf + 1;
                if (i != arrayDeque.l) {
                    navControllerImpl.l(((NavBackStackEntry) arrayDeque.get(i)).k.k.d, true, false);
                }
                NavControllerImpl.n(navControllerImpl, navBackStackEntry);
                p0Var.a();
                navControllerImpl.b.a();
                navControllerImpl.b();
                return;
            }
            Object obj = navControllerImpl.u.get(b);
            obj.getClass();
            ((NavControllerNavigatorState) obj).c(navBackStackEntry, z);
        }

        @Override // androidx.navigation.NavigatorState
        public final void d(NavBackStackEntry navBackStackEntry, boolean z) {
            Object obj;
            navBackStackEntry.getClass();
            MutableStateFlow mutableStateFlow = this.c;
            Iterable iterable = (Iterable) mutableStateFlow.getValue();
            boolean z2 = iterable instanceof Collection;
            StateFlow stateFlow = this.e;
            if (!z2 || !((Collection) iterable).isEmpty()) {
                Iterator it = iterable.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (((NavBackStackEntry) it.next()) == navBackStackEntry) {
                        Iterable iterable2 = (Iterable) stateFlow.getValue();
                        if (!(iterable2 instanceof Collection) || !((Collection) iterable2).isEmpty()) {
                            Iterator it2 = iterable2.iterator();
                            while (it2.hasNext()) {
                                if (((NavBackStackEntry) it2.next()) == navBackStackEntry) {
                                }
                            }
                            return;
                        }
                        return;
                    }
                }
            }
            mutableStateFlow.setValue(SetsKt.c((Set) mutableStateFlow.getValue(), navBackStackEntry));
            List list = (List) stateFlow.getValue();
            ListIterator listIterator = list.listIterator(list.size());
            while (true) {
                if (listIterator.hasPrevious()) {
                    obj = listIterator.previous();
                    NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj;
                    if (!Intrinsics.a(navBackStackEntry2, navBackStackEntry) && ((List) stateFlow.getValue()).lastIndexOf(navBackStackEntry2) < ((List) stateFlow.getValue()).lastIndexOf(navBackStackEntry)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) obj;
            if (navBackStackEntry3 != null) {
                mutableStateFlow.setValue(SetsKt.c((Set) mutableStateFlow.getValue(), navBackStackEntry3));
            }
            c(navBackStackEntry, z);
        }

        @Override // androidx.navigation.NavigatorState
        public final void e(NavBackStackEntry navBackStackEntry) {
            navBackStackEntry.getClass();
            NavControllerImpl navControllerImpl = this.h.b;
            navControllerImpl.getClass();
            Navigator b = navControllerImpl.t.b(navBackStackEntry.k.j);
            if (b.equals(this.g)) {
                Function1 function1 = navControllerImpl.v;
                if (function1 != null) {
                    function1.b(navBackStackEntry);
                    f(navBackStackEntry);
                    return;
                }
                Log.i("NavController", "Ignoring add of destination " + navBackStackEntry.k + " outside of the call to navigate(). ");
                return;
            }
            Object obj = navControllerImpl.u.get(b);
            if (obj != null) {
                ((NavControllerNavigatorState) obj).e(navBackStackEntry);
            } else {
                u2.f(q.i("NavigatorBackStack for ", navBackStackEntry.k.j, " should already be created"));
            }
        }

        public final void f(NavBackStackEntry navBackStackEntry) {
            navBackStackEntry.getClass();
            synchronized (this.a) {
                MutableStateFlow mutableStateFlow = this.b;
                mutableStateFlow.setValue(CollectionsKt.G((Collection) mutableStateFlow.getValue(), navBackStackEntry));
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.navigation.NavController$onBackPressedCallback$1] */
    public NavController(Context context) {
        Object obj;
        context.getClass();
        this.a = context;
        this.b = new NavControllerImpl(this, new g9(this, 2));
        this.c = new NavContext(context);
        Iterator it = SequencesKt.c(context, new la(9)).iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((Context) obj) instanceof Activity) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        this.d = (Activity) obj;
        this.f = new OnBackPressedCallback() { // from class: androidx.navigation.NavController$onBackPressedCallback$1
            {
                super(false);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public final void b() {
                NavController.this.d();
            }
        };
        this.g = true;
        NavigatorProvider navigatorProvider = this.b.t;
        navigatorProvider.a(new NavGraphNavigator(navigatorProvider));
        this.b.t.a(new ActivityNavigator(this.a));
        LazyKt.b(new g9(this, 3));
    }

    public static void b(NavController navController, String str) {
        String str2;
        navController.getClass();
        NavControllerImpl navControllerImpl = navController.b;
        navControllerImpl.getClass();
        if (navControllerImpl.c != null) {
            NavGraph i = navControllerImpl.i();
            NavDestination.DeepLinkMatch f = i.f(str, true, i);
            if (f != null) {
                NavDestination navDestination = f.j;
                Bundle b = navDestination.b(f.k);
                if (b == null) {
                    b = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                }
                int i2 = NavDestination.n;
                String str3 = navDestination.k.e;
                if (str3 != null) {
                    str2 = "android-app://androidx.navigation/".concat(str3);
                } else {
                    str2 = "";
                }
                Uri parse = Uri.parse(str2);
                parse.getClass();
                Intent intent = new Intent();
                intent.setDataAndType(parse, null);
                intent.setAction(null);
                b.putParcelable("android-support-nav:controller:deepLinkIntent", intent);
                navControllerImpl.k(navDestination, b, null);
                return;
            }
            k8.m("Navigation destination that matches route ", str, " cannot be found in the navigation graph ", navControllerImpl.c);
            return;
        }
        k8.r("Cannot navigate to ", str, ". Navigation graph has not been set for NavController ", navControllerImpl, ".");
    }

    public final int a() {
        ArrayDeque arrayDeque = this.b.f;
        int i = 0;
        if (arrayDeque != null && arrayDeque.isEmpty()) {
            return 0;
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            if (!(((NavBackStackEntry) it.next()).k instanceof NavGraph) && (i = i + 1) < 0) {
                throw new ArithmeticException("Count overflow has happened.");
            }
        }
        return i;
    }

    public final void c() {
        Intent intent;
        Bundle bundle;
        int[] iArr;
        Bundle bundle2;
        Bundle b;
        Bundle bundle3;
        if (a() == 1) {
            Activity activity = this.d;
            if (activity != null) {
                intent = activity.getIntent();
            } else {
                intent = null;
            }
            if (intent != null) {
                bundle = intent.getExtras();
            } else {
                bundle = null;
            }
            if (bundle != null) {
                iArr = bundle.getIntArray("android-support-nav:controller:deepLinkIds");
            } else {
                iArr = null;
            }
            int i = 0;
            NavControllerImpl navControllerImpl = this.b;
            if (iArr != null && e(intent)) {
                if (this.e) {
                    activity.getClass();
                    Intent intent2 = activity.getIntent();
                    Bundle extras = intent2.getExtras();
                    extras.getClass();
                    int[] intArray = extras.getIntArray("android-support-nav:controller:deepLinkIds");
                    intArray.getClass();
                    ArrayList arrayList = new ArrayList(intArray.length);
                    for (int i2 : intArray) {
                        arrayList.add(Integer.valueOf(i2));
                    }
                    ArrayList parcelableArrayList = extras.getParcelableArrayList("android-support-nav:controller:deepLinkArgs");
                    if (arrayList.size() >= 2) {
                        int intValue = ((Number) CollectionsKt.L(arrayList)).intValue();
                        if (parcelableArrayList != null) {
                        }
                        NavDestination d = NavControllerImpl.d(intValue, navControllerImpl.g(), null, false);
                        if (d instanceof NavGraph) {
                            int i3 = NavGraph.p;
                            intValue = NavGraph.Companion.a((NavGraph) d).k.d;
                        }
                        NavDestination f = navControllerImpl.f();
                        if (f != null && intValue == f.k.d) {
                            NavDeepLinkBuilder navDeepLinkBuilder = new NavDeepLinkBuilder((NavHostController) this);
                            Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                            a.putParcelable("android-support-nav:controller:deepLinkIntent", intent2);
                            Bundle bundle4 = extras.getBundle("android-support-nav:controller:deepLinkExtras");
                            if (bundle4 != null) {
                                a.putAll(bundle4);
                            }
                            navDeepLinkBuilder.c.putExtra("android-support-nav:controller:deepLinkExtras", a);
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                Object next = it.next();
                                int i4 = i + 1;
                                if (i >= 0) {
                                    int intValue2 = ((Number) next).intValue();
                                    if (parcelableArrayList != null) {
                                        bundle3 = (Bundle) parcelableArrayList.get(i);
                                    } else {
                                        bundle3 = null;
                                    }
                                    navDeepLinkBuilder.e.add(new NavDeepLinkBuilder.DeepLinkDestination(intValue2, bundle3));
                                    if (navDeepLinkBuilder.d != null) {
                                        navDeepLinkBuilder.c();
                                    }
                                    i = i4;
                                } else {
                                    CollectionsKt.T();
                                    throw null;
                                }
                            }
                            navDeepLinkBuilder.a().c();
                            activity.finish();
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            NavDestination f2 = navControllerImpl.f();
            f2.getClass();
            int i5 = f2.k.d;
            for (NavGraph navGraph = f2.l; navGraph != null; navGraph = navGraph.l) {
                NavDestinationImpl navDestinationImpl = navGraph.k;
                if (navGraph.o.c != i5) {
                    Bundle a2 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    if (activity != null && activity.getIntent() != null && activity.getIntent().getData() != null) {
                        Intent intent3 = activity.getIntent();
                        intent3.getClass();
                        a2.putParcelable("android-support-nav:controller:deepLinkIntent", intent3);
                        NavGraph i6 = navControllerImpl.i();
                        Intent intent4 = activity.getIntent();
                        intent4.getClass();
                        NavDestination.DeepLinkMatch e = i6.e(new NavDeepLinkRequest(intent4.getData(), intent4.getAction(), intent4.getType()), i6);
                        if (e != null) {
                            bundle2 = e.k;
                        } else {
                            bundle2 = null;
                        }
                        if (bundle2 != null && (b = e.j.b(e.k)) != null) {
                            a2.putAll(b);
                        }
                    }
                    NavDeepLinkBuilder navDeepLinkBuilder2 = new NavDeepLinkBuilder((NavHostController) this);
                    int i7 = navDestinationImpl.d;
                    ArrayList arrayList2 = navDeepLinkBuilder2.e;
                    arrayList2.clear();
                    arrayList2.add(new NavDeepLinkBuilder.DeepLinkDestination(i7, null));
                    if (navDeepLinkBuilder2.d != null) {
                        navDeepLinkBuilder2.c();
                    }
                    navDeepLinkBuilder2.c.putExtra("android-support-nav:controller:deepLinkExtras", a2);
                    navDeepLinkBuilder2.a().c();
                    if (activity != null) {
                        activity.finish();
                        return;
                    }
                    return;
                }
                i5 = navDestinationImpl.d;
            }
            return;
        }
        d();
    }

    public final boolean d() {
        NavControllerImpl navControllerImpl = this.b;
        if (!navControllerImpl.f.isEmpty()) {
            NavDestination f = navControllerImpl.f();
            f.getClass();
            if (navControllerImpl.l(f.k.d, true, false) && navControllerImpl.b()) {
                return true;
            }
        }
        return false;
    }

    public final boolean e(Intent intent) {
        if (intent == null) {
            return false;
        }
        Activity activity = this.d;
        if (activity == null) {
            return true;
        }
        if (intent.hasExtra("android.intent.extra.REFERRER") || intent.hasExtra("android.intent.extra.REFERRER_NAME")) {
            return false;
        }
        String callingPackage = activity.getCallingPackage();
        if (callingPackage == null) {
            Uri referrer = activity.getReferrer();
            if (referrer != null) {
                callingPackage = referrer.getAuthority();
            } else {
                callingPackage = null;
            }
        }
        return Intrinsics.a(callingPackage, this.a.getPackageName());
    }
}
