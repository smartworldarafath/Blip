package androidx.navigation;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.navigation.internal.NavContext;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.u2;
import defpackage.x9;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavBackStackEntry implements LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {
    public final NavContext j;
    public NavDestination k;
    public final Bundle l;
    public Lifecycle.State m;
    public final NavViewModelStoreProvider n;
    public final String o;
    public final Bundle p;
    public boolean r;
    public Lifecycle.State v;
    public final SavedStateRegistryController q = SavedStateRegistryController.Companion.a(this);
    public final Lazy s = LazyKt.b(new x9(20));
    public final LifecycleRegistry t = new LifecycleRegistry(this, true);
    public final Lazy u = LazyKt.b(new Object());

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static NavBackStackEntry a(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider) {
            String uuid = UUID.randomUUID().toString();
            uuid.getClass();
            navDestination.getClass();
            state.getClass();
            return new NavBackStackEntry(navContext, navDestination, bundle, state, navViewModelStoreProvider, uuid, null);
        }
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, kotlin.jvm.functions.Function0] */
    public NavBackStackEntry(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2) {
        this.j = navContext;
        this.k = navDestination;
        this.l = bundle;
        this.m = state;
        this.n = navViewModelStoreProvider;
        this.o = str;
        this.p = bundle2;
        LazyKt.b(new b(0, this));
        this.v = Lifecycle.State.k;
    }

    public final Bundle b() {
        Bundle bundle = this.l;
        if (bundle == null) {
            return null;
        }
        Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        a.putAll(bundle);
        return a;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider.Factory c() {
        return (SavedStateViewModelFactory) this.s.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final CreationExtras d() {
        Application application;
        Context context;
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(0);
        LinkedHashMap linkedHashMap = mutableCreationExtras.a;
        linkedHashMap.put(SavedStateHandleSupport.a, this);
        linkedHashMap.put(SavedStateHandleSupport.b, this);
        Bundle b = b();
        if (b != null) {
            linkedHashMap.put(SavedStateHandleSupport.c, b);
        }
        Application application2 = null;
        NavContext navContext = this.j;
        if (navContext != null) {
            Context context2 = navContext.a;
            if (context2 != null) {
                context = context2.getApplicationContext();
            } else {
                context = null;
            }
            if (context instanceof Application) {
                application = (Application) context;
                if (application != null) {
                    application2 = application;
                }
                if (application2 != null) {
                    linkedHashMap.put(ViewModelProvider.AndroidViewModelFactory.d, application2);
                }
                return mutableCreationExtras;
            }
        }
        application = null;
        if (application != null) {
        }
        if (application2 != null) {
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore e() {
        if (this.r) {
            if (this.t.i != Lifecycle.State.j) {
                NavViewModelStoreProvider navViewModelStoreProvider = this.n;
                if (navViewModelStoreProvider != null) {
                    String str = this.o;
                    str.getClass();
                    return ((NavViewModelStoreProviderImpl) navViewModelStoreProvider).a.b(str);
                }
                u2.l("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.");
                return null;
            }
            u2.l("You cannot access the NavBackStackEntry's ViewModels after the NavBackStackEntry is destroyed.");
            return null;
        }
        u2.l("You cannot access the NavBackStackEntry's ViewModels until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
        return null;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (obj != null && (obj instanceof NavBackStackEntry)) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
            Bundle bundle = navBackStackEntry.l;
            Bundle bundle2 = this.l;
            if (Intrinsics.a(bundle2, bundle)) {
                z = true;
            } else if (bundle2 != null && bundle != null) {
                z = SavedStateReader.a(bundle2, bundle);
            } else {
                z = false;
            }
            if (Intrinsics.a(this.o, navBackStackEntry.o) && Intrinsics.a(this.k, navBackStackEntry.k) && Intrinsics.a(this.t, navBackStackEntry.t) && Intrinsics.a(this.q.b, navBackStackEntry.q.b) && z) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry f() {
        return this.q.b;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle g() {
        return this.t;
    }

    public final void h() {
        if (!this.r) {
            SavedStateRegistryController savedStateRegistryController = this.q;
            savedStateRegistryController.a();
            this.r = true;
            if (this.n != null) {
                SavedStateHandleSupport.b(this);
            }
            savedStateRegistryController.b(this.p);
        }
        int ordinal = this.m.ordinal();
        int ordinal2 = this.v.ordinal();
        LifecycleRegistry lifecycleRegistry = this.t;
        if (ordinal < ordinal2) {
            Lifecycle.State state = this.m;
            lifecycleRegistry.getClass();
            state.getClass();
            lifecycleRegistry.d("setCurrentState");
            lifecycleRegistry.f(state);
            return;
        }
        Lifecycle.State state2 = this.v;
        lifecycleRegistry.getClass();
        state2.getClass();
        lifecycleRegistry.d("setCurrentState");
        lifecycleRegistry.f(state2);
    }

    public final int hashCode() {
        int hashCode = this.k.hashCode() + (this.o.hashCode() * 31);
        Bundle bundle = this.l;
        if (bundle != null) {
            hashCode = (hashCode * 31) + SavedStateReader.b(bundle);
        }
        int hashCode2 = this.t.hashCode();
        return this.q.b.hashCode() + ((hashCode2 + (hashCode * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Reflection.a(sb.getClass()).c());
        sb.append("(" + this.o + ")");
        sb.append(" destination=");
        sb.append(this.k);
        return sb.toString();
    }
}
