package androidx.fragment.app;

import android.content.ComponentCallbacks;
import android.content.res.Configuration;
import android.view.ContextMenu;
import android.view.View;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import java.util.ArrayList;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {
    public static final Object r = null;
    public final int j = -1;
    public final String k = UUID.randomUUID().toString();
    public final FragmentManager l = new FragmentManager();
    public final Lifecycle.State m = Lifecycle.State.n;
    public LifecycleRegistry n;
    public SavedStateRegistryController o;
    public final ArrayList p;
    public final AnonymousClass2 q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.fragment.app.Fragment$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends OnPreAttachedListener {
        public AnonymousClass2() {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class OnPreAttachedListener {
    }

    public Fragment() {
        new LiveData();
        new AtomicInteger();
        this.p = new ArrayList();
        this.q = new AnonymousClass2();
        this.n = new LifecycleRegistry(this, true);
        this.o = SavedStateRegistryController.Companion.a(this);
        ArrayList arrayList = this.p;
        AnonymousClass2 anonymousClass2 = this.q;
        if (!arrayList.contains(anonymousClass2)) {
            if (this.j >= 0) {
                Fragment fragment = Fragment.this;
                fragment.o.a();
                SavedStateHandleSupport.b(fragment);
                return;
            }
            arrayList.add(anonymousClass2);
        }
    }

    public final int b() {
        Lifecycle.State state = Lifecycle.State.j;
        return this.m.ordinal();
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider.Factory c() {
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final CreationExtras d() {
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore e() {
        throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return false;
        }
        return true;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry f() {
        return this.o.b;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle g() {
        return this.n;
    }

    public final FragmentManager h() {
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.k);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }
}
