package androidx.compose.runtime.internal;

import android.os.Trace;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.tooling.ComposeStackTraceKt;
import androidx.compose.runtime.tooling.CompositionErrorContext;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import defpackage.p0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RememberEventDispatcher implements RememberManager {
    public Set a;
    public CompositionErrorContext b;
    public final MutableVector c;
    public MutableScatterSet d;
    public MutableVector e;
    public final MutableVector f;
    public final MutableVector g;
    public MutableScatterSet h;
    public MutableScatterMap i;
    public ArrayList j;
    public ScatterSet k;

    public RememberEventDispatcher() {
        MutableVector mutableVector = new MutableVector(new RememberObserverHolder[16]);
        this.c = mutableVector;
        MutableScatterSet mutableScatterSet = ScatterSetKt.a;
        this.d = new MutableScatterSet();
        this.e = mutableVector;
        this.f = new MutableVector(new Object[16]);
        this.g = new MutableVector(new Function0[16]);
    }

    public static final boolean f(RememberObserverHolder rememberObserverHolder, MutableVector mutableVector) {
        Object[] objArr = mutableVector.j;
        int i = mutableVector.l;
        for (int i2 = 0; i2 < i; i2++) {
            RememberObserver rememberObserver = ((GapRememberObserverHolder) ((RememberObserverHolder) objArr[i2])).a;
            if (rememberObserver instanceof PausedCompositionRemembers) {
                MutableVector mutableVector2 = ((PausedCompositionRemembers) rememberObserver).k;
                if (mutableVector2.j(rememberObserverHolder) || f(rememberObserverHolder, mutableVector2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void a() {
        this.a = null;
        this.b = null;
        MutableVector mutableVector = this.c;
        mutableVector.g();
        this.d.f();
        this.e = mutableVector;
        this.f.g();
        this.g.g();
        this.h = null;
        this.i = null;
        this.j = null;
    }

    public final void b() {
        Set set = this.a;
        if (set != null && !set.isEmpty()) {
            Trace.beginSection("Compose:abandons");
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    RememberObserver rememberObserver = (RememberObserver) it.next();
                    it.remove();
                    rememberObserver.a();
                }
            } finally {
                Trace.endSection();
            }
        }
    }

    public final void c() {
        Set set = this.a;
        if (set != null) {
            this.k = null;
            MutableVector mutableVector = this.f;
            int i = 9;
            if (mutableVector.l != 0) {
                Trace.beginSection("Compose:onForgotten");
                try {
                    MutableScatterSet mutableScatterSet = this.h;
                    int i2 = mutableVector.l;
                    while (true) {
                        i2--;
                        if (-1 >= i2) {
                            break;
                        }
                        Object obj = mutableVector.j[i2];
                        try {
                            if (obj instanceof RememberObserverHolder) {
                                RememberObserver rememberObserver = ((GapRememberObserverHolder) ((RememberObserverHolder) obj)).a;
                                set.remove(rememberObserver);
                                rememberObserver.b();
                            }
                            if (obj instanceof ComposeNodeLifecycleCallback) {
                                if (mutableScatterSet != null && mutableScatterSet.a(obj)) {
                                    ((ComposeNodeLifecycleCallback) obj).a();
                                } else {
                                    ((ComposeNodeLifecycleCallback) obj).b();
                                }
                            }
                        } catch (Throwable th) {
                            CompositionErrorContext compositionErrorContext = this.b;
                            if (compositionErrorContext != null) {
                                ComposeStackTraceKt.a(th, new p0(i, (CompositionErrorContextImpl) compositionErrorContext, obj));
                            }
                            throw th;
                        }
                    }
                } finally {
                }
            }
            MutableVector mutableVector2 = this.c;
            if (mutableVector2.l != 0) {
                Trace.beginSection("Compose:onRemembered");
                try {
                    Set set2 = this.a;
                    if (set2 != null) {
                        Object[] objArr = mutableVector2.j;
                        int i3 = mutableVector2.l;
                        for (int i4 = 0; i4 < i3; i4++) {
                            RememberObserverHolder rememberObserverHolder = (RememberObserverHolder) objArr[i4];
                            RememberObserver rememberObserver2 = ((GapRememberObserverHolder) rememberObserverHolder).a;
                            set2.remove(rememberObserver2);
                            try {
                                rememberObserver2.c();
                            } catch (Throwable th2) {
                                CompositionErrorContext compositionErrorContext2 = this.b;
                                if (compositionErrorContext2 != null) {
                                    ComposeStackTraceKt.a(th2, new p0(i, (CompositionErrorContextImpl) compositionErrorContext2, rememberObserverHolder));
                                }
                                throw th2;
                            }
                        }
                    }
                } finally {
                }
            }
        }
    }

    public final void d() {
        MutableVector mutableVector = this.g;
        if (mutableVector.l != 0) {
            Trace.beginSection("Compose:sideeffects");
            try {
                Object[] objArr = mutableVector.j;
                int i = mutableVector.l;
                for (int i2 = 0; i2 < i; i2++) {
                    ((Function0) objArr[i2]).a();
                }
                mutableVector.g();
            } finally {
                Trace.endSection();
            }
        }
    }

    public final void e(RememberObserverHolder rememberObserverHolder) {
        if (this.d.a(rememberObserverHolder)) {
            this.d.m(rememberObserverHolder);
            if (!this.e.j(rememberObserverHolder)) {
                MutableVector mutableVector = this.c;
                if (!mutableVector.j(rememberObserverHolder)) {
                    f(rememberObserverHolder, mutableVector);
                }
            }
            Set set = this.a;
            if (set != null) {
                set.add(((GapRememberObserverHolder) rememberObserverHolder).a);
                return;
            }
            return;
        }
        ScatterSet scatterSet = this.k;
        if (scatterSet != null && scatterSet.a(rememberObserverHolder)) {
            return;
        }
        this.f.b(rememberObserverHolder);
    }

    public final void g(Set set, CompositionErrorContextImpl compositionErrorContextImpl) {
        a();
        this.a = set;
        this.b = compositionErrorContextImpl;
    }
}
