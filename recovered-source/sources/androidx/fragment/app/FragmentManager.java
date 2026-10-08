package androidx.fragment.app;

import android.util.Log;
import androidx.activity.OnBackPressedCallback;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.util.Consumer;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.FragmentManager;
import defpackage.u2;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FragmentManager {
    public final ArrayList a = new ArrayList();
    public final FragmentStore b = new FragmentStore();
    public final AtomicInteger c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.fragment.app.FragmentManager$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 extends FragmentFactory {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.fragment.app.FragmentManager$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 {
    }

    public FragmentManager() {
        new OnBackPressedCallback() { // from class: androidx.fragment.app.FragmentManager.1
            @Override // androidx.activity.OnBackPressedCallback
            public final void b() {
                FragmentManager.this.f();
                throw null;
            }
        };
        this.c = new AtomicInteger();
        Collections.synchronizedMap(new HashMap());
        Collections.synchronizedMap(new HashMap());
        Collections.synchronizedMap(new HashMap());
        new CopyOnWriteArrayList();
        new CopyOnWriteArrayList();
        final int i = 0;
        new Consumer(this) { // from class: p8
            public final /* synthetic */ FragmentManager b;

            {
                this.b = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i2 = i;
                FragmentManager fragmentManager = this.b;
                switch (i2) {
                    case 0:
                        fragmentManager.a(false);
                        return;
                    case 1:
                        if (((Integer) obj).intValue() == 80) {
                            fragmentManager.b(false);
                            return;
                        }
                        return;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        boolean z = ((MultiWindowModeChangedInfo) obj).a;
                        fragmentManager.c(false);
                        return;
                    default:
                        boolean z2 = ((PictureInPictureModeChangedInfo) obj).a;
                        fragmentManager.d(false);
                        return;
                }
            }
        };
        final int i2 = 1;
        new Consumer(this) { // from class: p8
            public final /* synthetic */ FragmentManager b;

            {
                this.b = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i2;
                FragmentManager fragmentManager = this.b;
                switch (i22) {
                    case 0:
                        fragmentManager.a(false);
                        return;
                    case 1:
                        if (((Integer) obj).intValue() == 80) {
                            fragmentManager.b(false);
                            return;
                        }
                        return;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        boolean z = ((MultiWindowModeChangedInfo) obj).a;
                        fragmentManager.c(false);
                        return;
                    default:
                        boolean z2 = ((PictureInPictureModeChangedInfo) obj).a;
                        fragmentManager.d(false);
                        return;
                }
            }
        };
        final int i3 = 2;
        new Consumer(this) { // from class: p8
            public final /* synthetic */ FragmentManager b;

            {
                this.b = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i3;
                FragmentManager fragmentManager = this.b;
                switch (i22) {
                    case 0:
                        fragmentManager.a(false);
                        return;
                    case 1:
                        if (((Integer) obj).intValue() == 80) {
                            fragmentManager.b(false);
                            return;
                        }
                        return;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        boolean z = ((MultiWindowModeChangedInfo) obj).a;
                        fragmentManager.c(false);
                        return;
                    default:
                        boolean z2 = ((PictureInPictureModeChangedInfo) obj).a;
                        fragmentManager.d(false);
                        return;
                }
            }
        };
        final int i4 = 3;
        new Consumer(this) { // from class: p8
            public final /* synthetic */ FragmentManager b;

            {
                this.b = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i22 = i4;
                FragmentManager fragmentManager = this.b;
                switch (i22) {
                    case 0:
                        fragmentManager.a(false);
                        return;
                    case 1:
                        if (((Integer) obj).intValue() == 80) {
                            fragmentManager.b(false);
                            return;
                        }
                        return;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        boolean z = ((MultiWindowModeChangedInfo) obj).a;
                        fragmentManager.c(false);
                        return;
                    default:
                        boolean z2 = ((PictureInPictureModeChangedInfo) obj).a;
                        fragmentManager.d(false);
                        return;
                }
            }
        };
        new ArrayDeque();
        new Runnable() { // from class: androidx.fragment.app.FragmentManager.5
            @Override // java.lang.Runnable
            public final void run() {
                FragmentManager.this.f();
                throw null;
            }
        };
    }

    public static boolean g(int i) {
        if (Log.isLoggable("FragmentManager", i)) {
            return true;
        }
        return false;
    }

    public final void a(boolean z) {
        for (Fragment fragment : this.b.a()) {
            if (fragment != null && z) {
                fragment.l.a(true);
            }
        }
    }

    public final void b(boolean z) {
        for (Fragment fragment : this.b.a()) {
            if (fragment != null && z) {
                fragment.l.b(true);
            }
        }
    }

    public final void c(boolean z) {
        for (Fragment fragment : this.b.a()) {
            if (fragment != null && z) {
                fragment.l.c(true);
            }
        }
    }

    public final void d(boolean z) {
        for (Fragment fragment : this.b.a()) {
            if (fragment != null && z) {
                fragment.l.d(true);
            }
        }
    }

    public final void e(boolean z) {
        if (z) {
            synchronized (this.a) {
                try {
                    if (!z) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        u2.l("FragmentManager has not been attached to a host.");
    }

    public final void f() {
        throw new IllegalStateException("FragmentManager has not been attached to a host.");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        sb.append("null");
        sb.append("}}");
        return sb.toString();
    }
}
