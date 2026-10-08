package androidx.compose.ui.layout;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableLongStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.layout.WindowInsetsRulers;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import defpackage.q;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InsetsListener extends WindowInsetsAnimationCompat.Callback implements Runnable, OnApplyWindowInsetsListener, View.OnAttachStateChangeListener {
    public boolean l;
    public int m;
    public WindowInsetsCompat n;
    public final MutableScatterMap o;
    public final MutableIntState p;
    public final MutableObjectList q;
    public final SnapshotStateList r;

    public InsetsListener() {
        super(1);
        MutableScatterMap mutableScatterMap = new MutableScatterMap(9);
        WindowInsetsRulers.a.getClass();
        mutableScatterMap.o(WindowInsetsRulers.Companion.b, new WindowWindowInsetsAnimationValues("caption bar"));
        mutableScatterMap.o(WindowInsetsRulers.Companion.c, new WindowWindowInsetsAnimationValues("display cutout"));
        mutableScatterMap.o(WindowInsetsRulers.Companion.d, new WindowWindowInsetsAnimationValues("ime"));
        mutableScatterMap.o(WindowInsetsRulers.Companion.e, new WindowWindowInsetsAnimationValues("mandatory system gestures"));
        mutableScatterMap.o(WindowInsetsRulers.Companion.f, new WindowWindowInsetsAnimationValues("navigation bars"));
        mutableScatterMap.o(WindowInsetsRulers.Companion.g, new WindowWindowInsetsAnimationValues("status bars"));
        mutableScatterMap.o(WindowInsetsRulers.Companion.h, new WindowWindowInsetsAnimationValues("system gestures"));
        mutableScatterMap.o(WindowInsetsRulers.Companion.i, new WindowWindowInsetsAnimationValues("tappable element"));
        mutableScatterMap.o(WindowInsetsRulers.Companion.j, new WindowWindowInsetsAnimationValues("waterfall"));
        this.o = mutableScatterMap;
        this.p = SnapshotIntStateKt.a(0);
        this.q = new MutableObjectList(4);
        this.r = new SnapshotStateList();
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void a(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.l = false;
        int d = windowInsetsAnimationCompat.d();
        this.m &= ~d;
        this.n = null;
        WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) WindowInsetsRulers_androidKt.a.b(d);
        if (windowInsetsRulers != null) {
            Object e = this.o.e(windowInsetsRulers);
            e.getClass();
            WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) e;
            MutableFloatState mutableFloatState = windowWindowInsetsAnimationValues.c;
            ((SnapshotMutableFloatStateImpl) mutableFloatState).k(0.0f);
            ((SnapshotMutableFloatStateImpl) windowWindowInsetsAnimationValues.e).k(1.0f);
            ((SnapshotMutableLongStateImpl) windowWindowInsetsAnimationValues.d).k(0L);
            ((SnapshotMutableFloatStateImpl) mutableFloatState).k(0.0f);
            ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues.b).setValue(Boolean.FALSE);
            windowWindowInsetsAnimationValues.j = -1L;
            windowWindowInsetsAnimationValues.k = -1L;
            SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) this.p;
            snapshotMutableIntStateImpl.k(snapshotMutableIntStateImpl.j() + 1);
            Snapshot.Companion.f();
        }
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final void b(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.l = true;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsCompat c(WindowInsetsCompat windowInsetsCompat, List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) list.get(i);
            WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) WindowInsetsRulers_androidKt.a.b(windowInsetsAnimationCompat.d());
            if (windowInsetsRulers != null) {
                Object e = this.o.e(windowInsetsRulers);
                e.getClass();
                WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) e;
                if (((Boolean) ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues.b).getValue()).booleanValue()) {
                    ((SnapshotMutableFloatStateImpl) windowWindowInsetsAnimationValues.c).k(windowInsetsAnimationCompat.c());
                    ((SnapshotMutableFloatStateImpl) windowWindowInsetsAnimationValues.e).k(windowInsetsAnimationCompat.a());
                    ((SnapshotMutableLongStateImpl) windowWindowInsetsAnimationValues.d).k(windowInsetsAnimationCompat.b());
                }
            }
        }
        e(windowInsetsCompat);
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public final WindowInsetsAnimationCompat.BoundsCompat d(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        WindowInsetsCompat windowInsetsCompat = this.n;
        this.l = false;
        this.n = null;
        if (windowInsetsAnimationCompat.b() > 0 && windowInsetsCompat != null) {
            int d = windowInsetsAnimationCompat.d();
            this.m |= d;
            WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) WindowInsetsRulers_androidKt.a.b(d);
            if (windowInsetsRulers != null) {
                Object e = this.o.e(windowInsetsRulers);
                e.getClass();
                WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) e;
                Insets e2 = windowInsetsCompat.e(d);
                long j = e2.d | (e2.a << 48) | (e2.b << 32) | (e2.c << 16);
                long j2 = windowWindowInsetsAnimationValues.h;
                if (!ValueInsets.a(j, j2)) {
                    windowWindowInsetsAnimationValues.j = j2;
                    windowWindowInsetsAnimationValues.k = j;
                    ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues.b).setValue(Boolean.TRUE);
                    ((SnapshotMutableFloatStateImpl) windowWindowInsetsAnimationValues.c).k(windowInsetsAnimationCompat.c());
                    ((SnapshotMutableFloatStateImpl) windowWindowInsetsAnimationValues.e).k(windowInsetsAnimationCompat.a());
                    ((SnapshotMutableLongStateImpl) windowWindowInsetsAnimationValues.d).k(windowInsetsAnimationCompat.b());
                    SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) this.p;
                    snapshotMutableIntStateImpl.k(snapshotMutableIntStateImpl.j() + 1);
                    Snapshot.Companion.f();
                }
            }
        }
        return boundsCompat;
    }

    public final void e(WindowInsetsCompat windowInsetsCompat) {
        char c;
        char c2;
        boolean z;
        char c3;
        boolean z2;
        boolean z3;
        long j;
        long[] jArr;
        int[] iArr;
        Object[] objArr;
        long[] jArr2;
        int[] iArr2;
        Object[] objArr2;
        long j2;
        int i;
        MutableIntObjectMap mutableIntObjectMap = WindowInsetsRulers_androidKt.a;
        int[] iArr3 = mutableIntObjectMap.b;
        Object[] objArr3 = mutableIntObjectMap.c;
        long[] jArr3 = mutableIntObjectMap.a;
        int length = jArr3.length - 2;
        MutableScatterMap mutableScatterMap = this.o;
        if (length >= 0) {
            int i2 = 0;
            z2 = false;
            z3 = false;
            c = 16;
            c2 = ' ';
            while (true) {
                long j3 = jArr3[i2];
                z = true;
                if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8;
                    int i4 = 8 - ((~(i2 - length)) >>> 31);
                    int i5 = 0;
                    c3 = '0';
                    while (i5 < i4) {
                        if ((j3 & 255) < 128) {
                            int i6 = (i2 << 3) + i5;
                            int i7 = iArr3[i6];
                            WindowInsetsRulers windowInsetsRulers = (WindowInsetsRulers) objArr3[i6];
                            Insets e = windowInsetsCompat.e(i7);
                            jArr2 = jArr3;
                            iArr2 = iArr3;
                            long j4 = (e.a << 48) | (e.b << 32) | (e.c << 16) | e.d;
                            Object e2 = mutableScatterMap.e(windowInsetsRulers);
                            e2.getClass();
                            WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) e2;
                            j2 = j3;
                            if (!ValueInsets.a(j4, windowWindowInsetsAnimationValues.h)) {
                                windowWindowInsetsAnimationValues.h = j4;
                                z2 = true;
                                if (!ValueInsets.a(j4, 0L)) {
                                    z3 = true;
                                }
                            }
                            if (i7 != 8) {
                                Insets f = windowInsetsCompat.f(i7);
                                objArr2 = objArr3;
                                long j5 = (f.b << 32) | (f.a << 48) | (f.c << 16) | f.d;
                                if (!ValueInsets.a(windowWindowInsetsAnimationValues.i, j5)) {
                                    windowWindowInsetsAnimationValues.i = j5;
                                    z2 = true;
                                    if (!ValueInsets.a(j5, 0L)) {
                                        z3 = true;
                                    }
                                }
                            } else {
                                objArr2 = objArr3;
                            }
                            ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues.a).setValue(Boolean.valueOf(windowInsetsCompat.q(i7)));
                            i = 8;
                        } else {
                            jArr2 = jArr3;
                            iArr2 = iArr3;
                            objArr2 = objArr3;
                            j2 = j3;
                            i = i3;
                        }
                        j3 = j2 >> i;
                        i5++;
                        i3 = i;
                        objArr3 = objArr2;
                        jArr3 = jArr2;
                        iArr3 = iArr2;
                    }
                    jArr = jArr3;
                    iArr = iArr3;
                    objArr = objArr3;
                    if (i4 != i3) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                    iArr = iArr3;
                    objArr = objArr3;
                    c3 = '0';
                }
                if (i2 == length) {
                    break;
                }
                i2++;
                objArr3 = objArr;
                jArr3 = jArr;
                iArr3 = iArr;
            }
        } else {
            c = 16;
            c2 = ' ';
            z = true;
            c3 = '0';
            z2 = false;
            z3 = false;
        }
        DisplayCutoutCompat d = windowInsetsCompat.d();
        if (d == null) {
            j = 0;
        } else {
            Insets b = d.b();
            j = b.d | (b.a << c3) | (b.b << c2) | (b.c << c);
        }
        WindowInsetsRulers.a.getClass();
        Object e3 = mutableScatterMap.e(WindowInsetsRulers.Companion.j);
        e3.getClass();
        WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues2 = (WindowWindowInsetsAnimationValues) e3;
        ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues2.a).setValue(Boolean.valueOf(!ValueInsets.a(j, 0L)));
        if (!ValueInsets.a(windowWindowInsetsAnimationValues2.h, j)) {
            windowWindowInsetsAnimationValues2.h = j;
            windowWindowInsetsAnimationValues2.i = j;
            z2 = z;
            if (!ValueInsets.a(j, 0L)) {
                z3 = z2;
            }
        }
        SnapshotStateList snapshotStateList = this.r;
        MutableObjectList mutableObjectList = this.q;
        if (d == null) {
            if (mutableObjectList.b > 0) {
                mutableObjectList.k();
                snapshotStateList.clear();
                z2 = z;
            }
        } else {
            List<Rect> boundingRects = d.a.getBoundingRects();
            if (boundingRects.size() < mutableObjectList.b) {
                mutableObjectList.n(boundingRects.size(), mutableObjectList.b);
                snapshotStateList.d(boundingRects.size(), snapshotStateList.size());
                z2 = z;
            } else {
                int size = boundingRects.size() - mutableObjectList.b;
                int i8 = 0;
                while (i8 < size) {
                    mutableObjectList.g(SnapshotStateKt.g(boundingRects.get(mutableObjectList.b)));
                    snapshotStateList.add(new RectRulersImpl(q.g(mutableObjectList.b, "display cutout rect ")));
                    i8++;
                    z2 = z;
                }
            }
            int size2 = boundingRects.size();
            for (int i9 = 0; i9 < size2; i9++) {
                Rect rect = boundingRects.get(i9);
                MutableState mutableState = (MutableState) mutableObjectList.b(i9);
                if (!Intrinsics.a(mutableState.getValue(), rect)) {
                    mutableState.setValue(rect);
                    z2 = z;
                }
            }
            if (!boundingRects.isEmpty()) {
                z3 = z;
            }
        }
        MutableIntState mutableIntState = this.p;
        if ((z3 || ((SnapshotMutableIntStateImpl) mutableIntState).j() != 0) && z2) {
            SnapshotMutableIntStateImpl snapshotMutableIntStateImpl = (SnapshotMutableIntStateImpl) mutableIntState;
            snapshotMutableIntStateImpl.k(snapshotMutableIntStateImpl.j() + 1);
            Snapshot.Companion.f();
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat i(View view, WindowInsetsCompat windowInsetsCompat) {
        if (this.l) {
            this.n = windowInsetsCompat;
            if (Build.VERSION.SDK_INT == 30) {
                view.post(this);
                return windowInsetsCompat;
            }
        } else if (this.m == 0) {
            e(windowInsetsCompat);
        }
        return windowInsetsCompat;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        View view2;
        Object parent = view.getParent();
        if (parent instanceof View) {
            view2 = (View) parent;
        } else {
            view2 = null;
        }
        if (view2 != null) {
            view = view2;
        }
        ViewCompat.q(view, this);
        ViewCompat.r(view, this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        View view2;
        Object parent = view.getParent();
        if (parent instanceof View) {
            view2 = (View) parent;
        } else {
            view2 = null;
        }
        if (view2 != null) {
            view = view2;
        }
        ViewCompat.q(view, null);
        ViewCompat.r(view, null);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.l) {
            this.m = 0;
            this.l = false;
            WindowInsetsCompat windowInsetsCompat = this.n;
            if (windowInsetsCompat != null) {
                e(windowInsetsCompat);
                this.n = null;
            }
        }
    }
}
