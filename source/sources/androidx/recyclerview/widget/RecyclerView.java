package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.os.TraceCompat;
import androidx.core.util.Pools$SimplePool;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.EdgeEffectCompat;
import androidx.customview.poolingcontainer.PoolingContainer;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.R$styleable;
import androidx.recyclerview.widget.AdapterHelper;
import androidx.recyclerview.widget.ChildHelper;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import androidx.recyclerview.widget.ViewBoundsCheck;
import androidx.recyclerview.widget.ViewInfoStore;
import defpackage.fe;
import defpackage.jb;
import defpackage.k8;
import defpackage.u2;
import io.sentry.d;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements ScrollingView {
    public static final int[] F0 = {R.attr.nestedScrollingEnabled};
    public static final float G0 = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final boolean H0 = true;
    public static final boolean I0 = true;
    public static final Class[] J0;
    public static final Interpolator K0;
    public static final StretchEdgeEffectFactory L0;
    public boolean A;
    public final Runnable A0;
    public boolean B;
    public boolean B0;
    public boolean C;
    public int C0;
    public int D;
    public int D0;
    public boolean E;
    public final AnonymousClass4 E0;
    public boolean F;
    public boolean G;
    public int H;
    public final AccessibilityManager I;
    public boolean J;
    public boolean K;
    public int L;
    public int M;
    public EdgeEffectFactory N;
    public EdgeEffect O;
    public EdgeEffect P;
    public EdgeEffect Q;
    public EdgeEffect R;
    public ItemAnimator S;
    public int T;
    public int U;
    public VelocityTracker V;
    public int W;
    public int a0;
    public int b0;
    public int c0;
    public int d0;
    public final int e0;
    public final int f0;
    public final float g0;
    public final float h0;
    public boolean i0;
    public final float j;
    public final ViewFlinger j0;
    public final RecyclerViewDataObserver k;
    public GapWorker k0;
    public final Recycler l;
    public final GapWorker.LayoutPrefetchRegistryImpl l0;
    public SavedState m;
    public final State m0;
    public final AdapterHelper n;
    public OnScrollListener n0;
    public final ChildHelper o;
    public ArrayList o0;
    public final ViewInfoStore p;
    public boolean p0;
    public boolean q;
    public boolean q0;
    public final Rect r;
    public final ItemAnimatorRestoreListener r0;
    public final Rect s;
    public boolean s0;
    public final RectF t;
    public RecyclerViewAccessibilityDelegate t0;
    public Adapter u;
    public final int[] u0;
    public LayoutManager v;
    public NestedScrollingChildHelper v0;
    public final ArrayList w;
    public final int[] w0;
    public final ArrayList x;
    public final int[] x0;
    public final ArrayList y;
    public final int[] y0;
    public OnItemTouchListener z;
    public final ArrayList z0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 {
        public AnonymousClass4() {
        }

        public final void a(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
            boolean z;
            int i;
            int i2;
            viewHolder.n(false);
            RecyclerView recyclerView = RecyclerView.this;
            SimpleItemAnimator simpleItemAnimator = (SimpleItemAnimator) recyclerView.S;
            simpleItemAnimator.getClass();
            if (itemHolderInfo != null && ((i = itemHolderInfo.a) != (i2 = itemHolderInfo2.a) || itemHolderInfo.b != itemHolderInfo2.b)) {
                z = simpleItemAnimator.g(viewHolder, i, itemHolderInfo.b, i2, itemHolderInfo2.b);
            } else {
                DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) simpleItemAnimator;
                defaultItemAnimator.l(viewHolder);
                viewHolder.a.setAlpha(0.0f);
                defaultItemAnimator.i.add(viewHolder);
                z = true;
            }
            if (z) {
                recyclerView.Q();
            }
        }

        public final void b(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
            int i;
            int i2;
            boolean z;
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.l.l(viewHolder);
            recyclerView.e(viewHolder);
            viewHolder.n(false);
            SimpleItemAnimator simpleItemAnimator = (SimpleItemAnimator) recyclerView.S;
            simpleItemAnimator.getClass();
            int i3 = itemHolderInfo.a;
            int i4 = itemHolderInfo.b;
            View view = viewHolder.a;
            if (itemHolderInfo2 == null) {
                i = view.getLeft();
            } else {
                i = itemHolderInfo2.a;
            }
            int i5 = i;
            if (itemHolderInfo2 == null) {
                i2 = view.getTop();
            } else {
                i2 = itemHolderInfo2.b;
            }
            int i6 = i2;
            if (!viewHolder.h() && (i3 != i5 || i4 != i6)) {
                view.layout(i5, i6, view.getWidth() + i5, view.getHeight() + i6);
                z = simpleItemAnimator.g(viewHolder, i3, i4, i5, i6);
            } else {
                DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) simpleItemAnimator;
                defaultItemAnimator.l(viewHolder);
                defaultItemAnimator.h.add(viewHolder);
                z = true;
            }
            if (z) {
                recyclerView.Q();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 {
        public AnonymousClass5() {
        }

        public final void a(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            View childAt = recyclerView.getChildAt(i);
            if (childAt != null) {
                RecyclerView.G(childAt);
                childAt.clearAnimation();
            }
            recyclerView.removeViewAt(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass6 {
        public AnonymousClass6() {
        }

        public final void a(AdapterHelper.UpdateOp updateOp) {
            int i = updateOp.a;
            RecyclerView recyclerView = RecyclerView.this;
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        if (i != 8) {
                            return;
                        }
                        recyclerView.v.V(updateOp.b, updateOp.c);
                        return;
                    }
                    recyclerView.v.X(updateOp.b, updateOp.c);
                    return;
                }
                recyclerView.v.W(updateOp.b, updateOp.c);
                return;
            }
            recyclerView.v.T(updateOp.b, updateOp.c);
        }

        public final ViewHolder b(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            int h = recyclerView.o.h();
            int i2 = 0;
            ViewHolder viewHolder = null;
            while (true) {
                if (i2 >= h) {
                    break;
                }
                ViewHolder G = RecyclerView.G(recyclerView.o.g(i2));
                if (G != null && !G.h() && G.c == i) {
                    if (recyclerView.o.c.contains(G.a)) {
                        viewHolder = G;
                    } else {
                        viewHolder = G;
                        break;
                    }
                }
                i2++;
            }
            if (viewHolder != null) {
                if (!recyclerView.o.c.contains(viewHolder.a)) {
                    return viewHolder;
                }
            }
            return null;
        }

        public final void c(int i, int i2) {
            int i3;
            int i4;
            RecyclerView recyclerView = RecyclerView.this;
            int h = recyclerView.o.h();
            int i5 = i2 + i;
            for (int i6 = 0; i6 < h; i6++) {
                View g = recyclerView.o.g(i6);
                ViewHolder G = RecyclerView.G(g);
                if (G != null && !G.o() && (i4 = G.c) >= i && i4 < i5) {
                    G.a(2);
                    G.a(1024);
                    ((LayoutParams) g.getLayoutParams()).c = true;
                }
            }
            Recycler recycler = recyclerView.l;
            ArrayList arrayList = recycler.c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
                if (viewHolder != null && (i3 = viewHolder.c) >= i && i3 < i5) {
                    viewHolder.a(2);
                    recycler.g(size);
                }
            }
            recyclerView.q0 = true;
        }

        public final void d(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            int h = recyclerView.o.h();
            for (int i3 = 0; i3 < h; i3++) {
                ViewHolder G = RecyclerView.G(recyclerView.o.g(i3));
                if (G != null && !G.o() && G.c >= i) {
                    G.l(i2, false);
                    recyclerView.m0.f = true;
                }
            }
            ArrayList arrayList = recyclerView.l.c;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(i4);
                if (viewHolder != null && viewHolder.c >= i) {
                    viewHolder.l(i2, false);
                }
            }
            recyclerView.requestLayout();
            recyclerView.p0 = true;
        }

        public final void e(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            int i9;
            RecyclerView recyclerView = RecyclerView.this;
            int h = recyclerView.o.h();
            int i10 = -1;
            if (i < i2) {
                i4 = i;
                i3 = i2;
                i5 = -1;
            } else {
                i3 = i;
                i4 = i2;
                i5 = 1;
            }
            for (int i11 = 0; i11 < h; i11++) {
                ViewHolder G = RecyclerView.G(recyclerView.o.g(i11));
                if (G != null && (i9 = G.c) >= i4 && i9 <= i3) {
                    if (i9 == i) {
                        G.l(i2 - i, false);
                    } else {
                        G.l(i5, false);
                    }
                    recyclerView.m0.f = true;
                }
            }
            ArrayList arrayList = recyclerView.l.c;
            if (i < i2) {
                i7 = i;
                i6 = i2;
            } else {
                i6 = i;
                i7 = i2;
                i10 = 1;
            }
            int size = arrayList.size();
            for (int i12 = 0; i12 < size; i12++) {
                ViewHolder viewHolder = (ViewHolder) arrayList.get(i12);
                if (viewHolder != null && (i8 = viewHolder.c) >= i7 && i8 <= i6) {
                    if (i8 == i) {
                        viewHolder.l(i2 - i, false);
                    } else {
                        viewHolder.l(i10, false);
                    }
                }
            }
            recyclerView.requestLayout();
            recyclerView.p0 = true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Adapter<VH extends ViewHolder> {
        public final AdapterDataObservable a = new Observable();
        public final boolean b = false;
        public final StateRestorationPolicy c = StateRestorationPolicy.j;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class StateRestorationPolicy {
            public static final StateRestorationPolicy j;
            public static final /* synthetic */ StateRestorationPolicy[] k;

            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.RecyclerView$Adapter$StateRestorationPolicy, java.lang.Enum] */
            /* JADX WARN: Type inference failed for: r1v1, types: [androidx.recyclerview.widget.RecyclerView$Adapter$StateRestorationPolicy, java.lang.Enum] */
            /* JADX WARN: Type inference failed for: r2v2, types: [androidx.recyclerview.widget.RecyclerView$Adapter$StateRestorationPolicy, java.lang.Enum] */
            static {
                ?? r0 = new Enum("ALLOW", 0);
                j = r0;
                k = new StateRestorationPolicy[]{r0, new Enum("PREVENT_WHEN_EMPTY", 1), new Enum("PREVENT", 2)};
            }

            public static StateRestorationPolicy valueOf(String str) {
                return (StateRestorationPolicy) Enum.valueOf(StateRestorationPolicy.class, str);
            }

            public static StateRestorationPolicy[] values() {
                return (StateRestorationPolicy[]) k.clone();
            }
        }

        public abstract int a();

        public long b(int i) {
            return -1L;
        }

        public abstract void c(ViewHolder viewHolder, int i);

        public abstract ViewHolder d(ViewGroup viewGroup);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class AdapterDataObservable extends Observable<AdapterDataObserver> {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class AdapterDataObserver {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ChildDrawingOrderCallback {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class EdgeEffectFactory {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class ItemAnimator {
        public ItemAnimatorRestoreListener a;
        public ArrayList b;
        public long c;
        public long d;
        public long e;
        public long f;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class ItemHolderInfo {
            public int a;
            public int b;

            public final void a(ViewHolder viewHolder) {
                View view = viewHolder.a;
                this.a = view.getLeft();
                this.b = view.getTop();
                view.getRight();
                view.getBottom();
            }
        }

        public static void b(ViewHolder viewHolder) {
            RecyclerView recyclerView;
            int i = viewHolder.j;
            if (!viewHolder.f() && (i & 4) == 0 && (recyclerView = viewHolder.r) != null) {
                recyclerView.D(viewHolder);
            }
        }

        public abstract boolean a(ViewHolder viewHolder, ViewHolder viewHolder2, ItemHolderInfo itemHolderInfo, ItemHolderInfo itemHolderInfo2);

        public final void c(ViewHolder viewHolder) {
            ItemAnimatorRestoreListener itemAnimatorRestoreListener = this.a;
            if (itemAnimatorRestoreListener != null) {
                RecyclerView recyclerView = RecyclerView.this;
                boolean z = true;
                viewHolder.n(true);
                View view = viewHolder.a;
                if (viewHolder.h != null && viewHolder.i == null) {
                    viewHolder.h = null;
                }
                viewHolder.i = null;
                if ((viewHolder.j & 16) == 0) {
                    Recycler recycler = recyclerView.l;
                    recyclerView.a0();
                    ChildHelper childHelper = recyclerView.o;
                    ChildHelper.Bucket bucket = childHelper.b;
                    AnonymousClass5 anonymousClass5 = childHelper.a;
                    int indexOfChild = RecyclerView.this.indexOfChild(view);
                    if (indexOfChild == -1) {
                        childHelper.j(view);
                    } else if (bucket.d(indexOfChild)) {
                        bucket.f(indexOfChild);
                        childHelper.j(view);
                        anonymousClass5.a(indexOfChild);
                    } else {
                        z = false;
                    }
                    if (z) {
                        ViewHolder G = RecyclerView.G(view);
                        recycler.l(G);
                        recycler.i(G);
                    }
                    recyclerView.b0(!z);
                    if (!z && viewHolder.j()) {
                        recyclerView.removeDetachedView(view, false);
                    }
                }
            }
        }

        public abstract void d(ViewHolder viewHolder);

        public abstract void e();

        public abstract boolean f();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ItemAnimatorRestoreListener {
        public ItemAnimatorRestoreListener() {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class OnFlingListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnItemTouchListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class RecycledViewPool {
        public SparseArray a;
        public int b;
        public Set c;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class ScrapData {
            public final ArrayList a = new ArrayList();
            public final int b = 5;
            public long c = 0;
            public long d = 0;
        }

        public final ScrapData a(int i) {
            SparseArray sparseArray = this.a;
            ScrapData scrapData = (ScrapData) sparseArray.get(i);
            if (scrapData == null) {
                ScrapData scrapData2 = new ScrapData();
                sparseArray.put(i, scrapData2);
                return scrapData2;
            }
            return scrapData;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Recycler {
        public final ArrayList a;
        public ArrayList b;
        public final ArrayList c;
        public final List d;
        public int e;
        public int f;
        public RecycledViewPool g;

        public Recycler() {
            ArrayList arrayList = new ArrayList();
            this.a = arrayList;
            this.b = null;
            this.c = new ArrayList();
            this.d = Collections.unmodifiableList(arrayList);
            this.e = 2;
            this.f = 2;
        }

        public final void a(ViewHolder viewHolder, boolean z) {
            AccessibilityDelegateCompat accessibilityDelegateCompat;
            RecyclerView.g(viewHolder);
            View view = viewHolder.a;
            RecyclerView recyclerView = RecyclerView.this;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = recyclerView.t0;
            if (recyclerViewAccessibilityDelegate != null) {
                RecyclerViewAccessibilityDelegate.ItemDelegate itemDelegate = recyclerViewAccessibilityDelegate.n;
                if (itemDelegate != null) {
                    accessibilityDelegateCompat = (AccessibilityDelegateCompat) itemDelegate.n.remove(view);
                } else {
                    accessibilityDelegateCompat = null;
                }
                ViewCompat.n(view, accessibilityDelegateCompat);
            }
            if (z) {
                ArrayList arrayList = recyclerView.w;
                if (arrayList.size() <= 0) {
                    if (recyclerView.m0 != null) {
                        recyclerView.p.d(viewHolder);
                    }
                } else {
                    arrayList.get(0).getClass();
                    d.i();
                    return;
                }
            }
            viewHolder.s = null;
            viewHolder.r = null;
            RecycledViewPool c = c();
            c.getClass();
            int i = viewHolder.f;
            ArrayList arrayList2 = c.a(i).a;
            if (((RecycledViewPool.ScrapData) c.a.get(i)).b <= arrayList2.size()) {
                PoolingContainer.b(view);
            } else {
                viewHolder.m();
                arrayList2.add(viewHolder);
            }
        }

        public final int b(int i) {
            RecyclerView recyclerView = RecyclerView.this;
            State state = recyclerView.m0;
            if (i >= 0 && i < state.b()) {
                if (!state.g) {
                    return i;
                }
                return recyclerView.n.e(i, 0);
            }
            StringBuilder j = jb.j("invalid position ", i, ". State item count is ");
            j.append(state.b());
            j.append(recyclerView.w());
            throw new IndexOutOfBoundsException(j.toString());
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$RecycledViewPool] */
        public final RecycledViewPool c() {
            if (this.g == null) {
                ?? obj = new Object();
                obj.a = new SparseArray();
                obj.b = 0;
                obj.c = Collections.newSetFromMap(new IdentityHashMap());
                this.g = obj;
                d();
            }
            return this.g;
        }

        public final void d() {
            RecyclerView recyclerView;
            Adapter adapter;
            RecycledViewPool recycledViewPool = this.g;
            if (recycledViewPool != null && (adapter = (recyclerView = RecyclerView.this).u) != null && recyclerView.A) {
                recycledViewPool.c.add(adapter);
            }
        }

        public final void e(Adapter adapter, boolean z) {
            RecycledViewPool recycledViewPool = this.g;
            if (recycledViewPool != null) {
                SparseArray sparseArray = recycledViewPool.a;
                Set set = recycledViewPool.c;
                set.remove(adapter);
                if (set.size() == 0 && !z) {
                    for (int i = 0; i < sparseArray.size(); i++) {
                        ArrayList arrayList = ((RecycledViewPool.ScrapData) sparseArray.get(sparseArray.keyAt(i))).a;
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            PoolingContainer.b(((ViewHolder) arrayList.get(i2)).a);
                        }
                    }
                }
            }
        }

        public final void f() {
            ArrayList arrayList = this.c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                g(size);
            }
            arrayList.clear();
            if (RecyclerView.I0) {
                GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = RecyclerView.this.l0;
                int[] iArr = layoutPrefetchRegistryImpl.c;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                layoutPrefetchRegistryImpl.d = 0;
            }
        }

        public final void g(int i) {
            ArrayList arrayList = this.c;
            a((ViewHolder) arrayList.get(i), true);
            arrayList.remove(i);
        }

        public final void h(View view) {
            ViewHolder G = RecyclerView.G(view);
            boolean j = G.j();
            RecyclerView recyclerView = RecyclerView.this;
            if (j) {
                recyclerView.removeDetachedView(view, false);
            }
            if (G.i()) {
                G.n.l(G);
            } else if (G.p()) {
                G.j &= -33;
            }
            i(G);
            if (recyclerView.S != null && !G.g()) {
                recyclerView.S.d(G);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:46:0x008f, code lost:
        
            r7 = r7 - 1;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x00a5  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void i(ViewHolder viewHolder) {
            boolean z;
            boolean z2;
            RecyclerView recyclerView = RecyclerView.this;
            GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.l0;
            boolean i = viewHolder.i();
            View view = viewHolder.a;
            boolean z3 = false;
            boolean z4 = true;
            if (!i && view.getParent() == null) {
                if (!viewHolder.j()) {
                    if (!viewHolder.o()) {
                        if ((viewHolder.j & 16) == 0) {
                            Field field = ViewCompat.a;
                            if (view.hasTransientState()) {
                                z = true;
                                if (!viewHolder.g()) {
                                    if (this.f > 0 && (viewHolder.j & 526) == 0) {
                                        ArrayList arrayList = this.c;
                                        int size = arrayList.size();
                                        if (size >= this.f && size > 0) {
                                            g(0);
                                            size--;
                                        }
                                        if (RecyclerView.I0 && size > 0) {
                                            int i2 = viewHolder.c;
                                            if (layoutPrefetchRegistryImpl.c != null) {
                                                int i3 = layoutPrefetchRegistryImpl.d * 2;
                                                for (int i4 = 0; i4 < i3; i4 += 2) {
                                                    if (layoutPrefetchRegistryImpl.c[i4] == i2) {
                                                        break;
                                                    }
                                                }
                                            }
                                            int i5 = size - 1;
                                            loop1: while (i5 >= 0) {
                                                int i6 = ((ViewHolder) arrayList.get(i5)).c;
                                                if (layoutPrefetchRegistryImpl.c == null) {
                                                    break;
                                                }
                                                int i7 = layoutPrefetchRegistryImpl.d * 2;
                                                for (int i8 = 0; i8 < i7; i8 += 2) {
                                                    if (layoutPrefetchRegistryImpl.c[i8] == i6) {
                                                        break;
                                                    }
                                                }
                                                break loop1;
                                            }
                                            size = i5 + 1;
                                        }
                                        arrayList.add(size, viewHolder);
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (!z2) {
                                        a(viewHolder, true);
                                    } else {
                                        z4 = false;
                                    }
                                    z3 = z2;
                                } else {
                                    z4 = false;
                                }
                                recyclerView.p.d(viewHolder);
                                if (z3 && !z4 && z) {
                                    PoolingContainer.b(view);
                                    viewHolder.s = null;
                                    viewHolder.r = null;
                                    return;
                                }
                                return;
                            }
                        }
                        z = false;
                        if (!viewHolder.g()) {
                        }
                        recyclerView.p.d(viewHolder);
                        if (z3) {
                            return;
                        } else {
                            return;
                        }
                    }
                    u2.g("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.".concat(recyclerView.w()));
                    return;
                }
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + viewHolder + recyclerView.w());
            }
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(viewHolder.i());
            sb.append(" isAttached:");
            if (view.getParent() != null) {
                z3 = true;
            }
            sb.append(z3);
            sb.append(recyclerView.w());
            throw new IllegalArgumentException(sb.toString());
        }

        public final void j(View view) {
            ItemAnimator itemAnimator;
            ViewHolder G = RecyclerView.G(view);
            int i = G.j & 12;
            RecyclerView recyclerView = RecyclerView.this;
            if (i == 0 && G.k() && (itemAnimator = recyclerView.S) != null) {
                DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) itemAnimator;
                if (G.c().isEmpty() && defaultItemAnimator.g && !G.f()) {
                    if (this.b == null) {
                        this.b = new ArrayList();
                    }
                    G.n = this;
                    G.o = true;
                    this.b.add(G);
                    return;
                }
            }
            if (G.f() && !G.h() && !recyclerView.u.b) {
                u2.g("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.".concat(recyclerView.w()));
                return;
            }
            G.n = this;
            G.o = false;
            this.a.add(G);
        }

        /* JADX WARN: Code restructure failed: missing block: B:180:0x0408, code lost:
        
            if (r10.f() == false) goto L244;
         */
        /* JADX WARN: Code restructure failed: missing block: B:187:0x0434, code lost:
        
            if ((r13 + r11) >= r28) goto L244;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x01b1, code lost:
        
            if (r10.f != 0) goto L110;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:148:0x03c1  */
        /* JADX WARN: Removed duplicated region for block: B:150:0x03c7  */
        /* JADX WARN: Removed duplicated region for block: B:153:0x03c4  */
        /* JADX WARN: Removed duplicated region for block: B:162:0x04ea  */
        /* JADX WARN: Removed duplicated region for block: B:165:0x050a A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:169:0x04f4  */
        /* JADX WARN: Removed duplicated region for block: B:175:0x03f8  */
        /* JADX WARN: Removed duplicated region for block: B:184:0x0425  */
        /* JADX WARN: Removed duplicated region for block: B:190:0x043f  */
        /* JADX WARN: Removed duplicated region for block: B:192:0x0445  */
        /* JADX WARN: Removed duplicated region for block: B:198:0x046a  */
        /* JADX WARN: Removed duplicated region for block: B:207:0x049e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x007f  */
        /* JADX WARN: Removed duplicated region for block: B:214:0x04b6  */
        /* JADX WARN: Removed duplicated region for block: B:228:0x04e1  */
        /* JADX WARN: Removed duplicated region for block: B:230:0x04dc  */
        /* JADX WARN: Removed duplicated region for block: B:232:0x0442  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:255:0x03af  */
        /* JADX WARN: Removed duplicated region for block: B:313:0x020f  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x021a  */
        /* JADX WARN: Type inference failed for: r6v30, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$ItemAnimator$ItemHolderInfo] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final ViewHolder k(int i, long j) {
            ViewHolder viewHolder;
            boolean z;
            boolean z2;
            long j2;
            long j3;
            boolean z3;
            long j4;
            AccessibilityManager accessibilityManager;
            boolean z4;
            boolean z5;
            boolean z6;
            AccessibilityDelegateCompat c;
            boolean z7;
            ViewGroup.LayoutParams layoutParams;
            LayoutParams layoutParams2;
            int i2;
            boolean z8;
            RecyclerView B;
            boolean z9;
            ViewHolder viewHolder2;
            int i3;
            View view;
            int i4;
            boolean z10;
            int size;
            int e;
            RecyclerView recyclerView = RecyclerView.this;
            State state = recyclerView.m0;
            if (i >= 0 && i < state.b()) {
                if (state.g) {
                    ArrayList arrayList = this.b;
                    if (arrayList != null && (size = arrayList.size()) != 0) {
                        int i5 = 0;
                        while (true) {
                            if (i5 < size) {
                                viewHolder = (ViewHolder) this.b.get(i5);
                                if (!viewHolder.p() && viewHolder.b() == i) {
                                    viewHolder.a(32);
                                    break;
                                }
                                i5++;
                            } else if (recyclerView.u.b && (e = recyclerView.n.e(i, 0)) > 0 && e < recyclerView.u.a()) {
                                long b = recyclerView.u.b(e);
                                for (int i6 = 0; i6 < size; i6++) {
                                    ViewHolder viewHolder3 = (ViewHolder) this.b.get(i6);
                                    if (!viewHolder3.p() && viewHolder3.e == b) {
                                        viewHolder3.a(32);
                                        viewHolder = viewHolder3;
                                        break;
                                    }
                                }
                            }
                        }
                        if (viewHolder != null) {
                            z = true;
                            ArrayList arrayList2 = this.a;
                            ArrayList arrayList3 = this.c;
                            if (viewHolder != null) {
                                int size2 = arrayList2.size();
                                for (int i7 = 0; i7 < size2; i7++) {
                                    ViewHolder viewHolder4 = (ViewHolder) arrayList2.get(i7);
                                    if (!viewHolder4.p() && viewHolder4.b() == i && !viewHolder4.f() && (state.g || !viewHolder4.h())) {
                                        viewHolder4.a(32);
                                        viewHolder = viewHolder4;
                                        z2 = true;
                                        break;
                                    }
                                }
                                ArrayList arrayList4 = recyclerView.o.c;
                                int size3 = arrayList4.size();
                                int i8 = 0;
                                while (true) {
                                    if (i8 < size3) {
                                        view = (View) arrayList4.get(i8);
                                        ViewHolder G = RecyclerView.G(view);
                                        z2 = true;
                                        if (G.b() == i && !G.f() && !G.h()) {
                                            break;
                                        }
                                        i8++;
                                    } else {
                                        z2 = true;
                                        view = null;
                                        break;
                                    }
                                }
                                if (view != null) {
                                    ViewHolder G2 = RecyclerView.G(view);
                                    ChildHelper childHelper = recyclerView.o;
                                    ChildHelper.Bucket bucket = childHelper.b;
                                    int indexOfChild = RecyclerView.this.indexOfChild(view);
                                    if (indexOfChild >= 0) {
                                        if (bucket.d(indexOfChild)) {
                                            bucket.a(indexOfChild);
                                            childHelper.j(view);
                                            ChildHelper childHelper2 = recyclerView.o;
                                            ChildHelper.Bucket bucket2 = childHelper2.b;
                                            int indexOfChild2 = RecyclerView.this.indexOfChild(view);
                                            if (indexOfChild2 == -1 || bucket2.d(indexOfChild2)) {
                                                i4 = -1;
                                            } else {
                                                i4 = indexOfChild2 - bucket2.b(indexOfChild2);
                                            }
                                            if (i4 != -1) {
                                                recyclerView.o.c(i4);
                                                j(view);
                                                G2.a(8224);
                                                viewHolder = G2;
                                            } else {
                                                StringBuilder sb = new StringBuilder("layout index should not be -1 after unhiding a view:");
                                                sb.append(G2);
                                                d.h(sb, recyclerView.w());
                                                return null;
                                            }
                                        } else {
                                            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
                                        }
                                    } else {
                                        d.e(view, "view is not a child, cannot hide ");
                                        return null;
                                    }
                                } else {
                                    int size4 = arrayList3.size();
                                    int i9 = 0;
                                    while (true) {
                                        if (i9 < size4) {
                                            ViewHolder viewHolder5 = (ViewHolder) arrayList3.get(i9);
                                            if (!viewHolder5.f() && viewHolder5.b() == i && !viewHolder5.d()) {
                                                arrayList3.remove(i9);
                                                viewHolder = viewHolder5;
                                                break;
                                            }
                                            i9++;
                                        } else {
                                            viewHolder = null;
                                            break;
                                        }
                                    }
                                }
                                if (viewHolder != null) {
                                    if (viewHolder.h()) {
                                        z10 = state.g;
                                    } else {
                                        int i10 = viewHolder.c;
                                        if (i10 >= 0 && i10 < recyclerView.u.a()) {
                                            if (!state.g) {
                                                recyclerView.u.getClass();
                                            }
                                            Adapter adapter = recyclerView.u;
                                            if (!adapter.b || viewHolder.e == adapter.b(viewHolder.c)) {
                                                z10 = z2;
                                            }
                                            z10 = false;
                                        } else {
                                            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + viewHolder + recyclerView.w());
                                        }
                                    }
                                    if (!z10) {
                                        viewHolder.a(4);
                                        if (viewHolder.i()) {
                                            recyclerView.removeDetachedView(viewHolder.a, false);
                                            viewHolder.n.l(viewHolder);
                                        } else if (viewHolder.p()) {
                                            viewHolder.j &= -33;
                                        }
                                        i(viewHolder);
                                        viewHolder = null;
                                    } else {
                                        z = z2;
                                    }
                                }
                            } else {
                                z2 = true;
                            }
                            if (viewHolder != null) {
                                int e2 = recyclerView.n.e(i, 0);
                                if (e2 >= 0) {
                                    j2 = 3;
                                    if (e2 < recyclerView.u.a()) {
                                        recyclerView.u.getClass();
                                        Adapter adapter2 = recyclerView.u;
                                        if (adapter2.b) {
                                            long b2 = adapter2.b(e2);
                                            int size5 = arrayList2.size() - 1;
                                            while (true) {
                                                if (size5 >= 0) {
                                                    j3 = 4;
                                                    ViewHolder viewHolder6 = (ViewHolder) arrayList2.get(size5);
                                                    i3 = e2;
                                                    long j5 = viewHolder6.e;
                                                    View view2 = viewHolder6.a;
                                                    if (j5 == b2 && !viewHolder6.p()) {
                                                        if (viewHolder6.f == 0) {
                                                            viewHolder6.a(32);
                                                            if (viewHolder6.h() && !state.g) {
                                                                viewHolder6.j = (viewHolder6.j & (-15)) | 2;
                                                            }
                                                            viewHolder = viewHolder6;
                                                        } else {
                                                            arrayList2.remove(size5);
                                                            recyclerView.removeDetachedView(view2, false);
                                                            ViewHolder G3 = RecyclerView.G(view2);
                                                            G3.n = null;
                                                            G3.o = false;
                                                            G3.j &= -33;
                                                            i(G3);
                                                        }
                                                    }
                                                    size5--;
                                                    e2 = i3;
                                                } else {
                                                    i3 = e2;
                                                    j3 = 4;
                                                    int size6 = arrayList3.size() - 1;
                                                    while (true) {
                                                        if (size6 < 0) {
                                                            break;
                                                        }
                                                        ViewHolder viewHolder7 = (ViewHolder) arrayList3.get(size6);
                                                        if (viewHolder7.e != b2 || viewHolder7.d()) {
                                                            size6--;
                                                        } else if (viewHolder7.f == 0) {
                                                            arrayList3.remove(size6);
                                                            viewHolder = viewHolder7;
                                                        } else {
                                                            g(size6);
                                                        }
                                                    }
                                                    viewHolder = null;
                                                }
                                            }
                                            if (viewHolder != null) {
                                                viewHolder.c = i3;
                                                z = z2;
                                            }
                                        } else {
                                            j3 = 4;
                                        }
                                        if (viewHolder == null) {
                                            RecycledViewPool.ScrapData scrapData = (RecycledViewPool.ScrapData) c().a.get(0);
                                            if (scrapData != null) {
                                                ArrayList arrayList5 = scrapData.a;
                                                if (!arrayList5.isEmpty()) {
                                                    for (int size7 = arrayList5.size() - 1; size7 >= 0; size7--) {
                                                        if (!((ViewHolder) arrayList5.get(size7)).d()) {
                                                            viewHolder2 = (ViewHolder) arrayList5.remove(size7);
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            viewHolder2 = null;
                                            if (viewHolder2 != null) {
                                                viewHolder2.m();
                                                int[] iArr = RecyclerView.F0;
                                            }
                                            viewHolder = viewHolder2;
                                        }
                                        if (viewHolder == null) {
                                            long nanoTime = recyclerView.getNanoTime();
                                            if (j != Long.MAX_VALUE) {
                                                long j6 = this.g.a(0).c;
                                                if (j6 != 0 && j6 + nanoTime >= j) {
                                                    z9 = false;
                                                } else {
                                                    z9 = z2;
                                                }
                                                if (!z9) {
                                                    return null;
                                                }
                                            }
                                            Adapter adapter3 = recyclerView.u;
                                            adapter3.getClass();
                                            try {
                                                int i11 = TraceCompat.a;
                                                Trace.beginSection("RV CreateView");
                                                viewHolder = adapter3.d(recyclerView);
                                                View view3 = viewHolder.a;
                                                if (view3.getParent() == null) {
                                                    viewHolder.f = 0;
                                                    Trace.endSection();
                                                    if (RecyclerView.I0 && (B = RecyclerView.B(view3)) != null) {
                                                        viewHolder.b = new WeakReference(B);
                                                    }
                                                    long nanoTime2 = recyclerView.getNanoTime() - nanoTime;
                                                    RecycledViewPool.ScrapData a = this.g.a(0);
                                                    long j7 = a.c;
                                                    if (j7 != 0) {
                                                        nanoTime2 = (nanoTime2 / j3) + ((j7 / j3) * 3);
                                                    }
                                                    a.c = nanoTime2;
                                                } else {
                                                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                                                }
                                            } finally {
                                                int i12 = TraceCompat.a;
                                                Trace.endSection();
                                            }
                                        }
                                    }
                                }
                                StringBuilder k = jb.k("Inconsistency detected. Invalid item position ", i, "(offset:", e2, ").state:");
                                k.append(state.b());
                                k.append(recyclerView.w());
                                throw new IndexOutOfBoundsException(k.toString());
                            }
                            j2 = 3;
                            j3 = 4;
                            View view4 = viewHolder.a;
                            if (z && !state.g) {
                                i2 = viewHolder.j;
                                if ((i2 & 8192) == 0) {
                                    z8 = z2;
                                } else {
                                    z8 = false;
                                }
                                if (z8) {
                                    viewHolder.j = i2 & (-8193);
                                    if (state.j) {
                                        ItemAnimator.b(viewHolder);
                                        ItemAnimator itemAnimator = recyclerView.S;
                                        viewHolder.c();
                                        itemAnimator.getClass();
                                        ?? obj = new Object();
                                        obj.a(viewHolder);
                                        recyclerView.R(viewHolder, obj);
                                    }
                                }
                            }
                            if (!state.g && viewHolder.e()) {
                                viewHolder.g = i;
                            } else {
                                if (viewHolder.e()) {
                                    if ((viewHolder.j & 2) != 0) {
                                        z7 = z2;
                                    } else {
                                        z7 = false;
                                    }
                                    if (!z7) {
                                    }
                                }
                                int e3 = recyclerView.n.e(i, 0);
                                viewHolder.s = null;
                                viewHolder.r = recyclerView;
                                int i13 = viewHolder.f;
                                long nanoTime3 = recyclerView.getNanoTime();
                                if (j != Long.MAX_VALUE) {
                                    long j8 = this.g.a(i13).d;
                                    if (j8 != 0) {
                                    }
                                }
                                Adapter adapter4 = recyclerView.u;
                                adapter4.getClass();
                                if (viewHolder.s != null) {
                                    z3 = z2;
                                } else {
                                    z3 = false;
                                }
                                if (z3) {
                                    viewHolder.c = e3;
                                    if (adapter4.b) {
                                        viewHolder.e = adapter4.b(e3);
                                    }
                                    viewHolder.j = (viewHolder.j & (-520)) | 1;
                                    int i14 = TraceCompat.a;
                                    Trace.beginSection("RV OnBindView");
                                }
                                viewHolder.s = adapter4;
                                viewHolder.c();
                                adapter4.c(viewHolder, e3);
                                if (z3) {
                                    ArrayList arrayList6 = viewHolder.k;
                                    if (arrayList6 != null) {
                                        arrayList6.clear();
                                    }
                                    viewHolder.j &= -1025;
                                    ViewGroup.LayoutParams layoutParams3 = view4.getLayoutParams();
                                    if (layoutParams3 instanceof LayoutParams) {
                                        ((LayoutParams) layoutParams3).c = z2;
                                    }
                                }
                                long nanoTime4 = recyclerView.getNanoTime() - nanoTime3;
                                RecycledViewPool.ScrapData a2 = this.g.a(viewHolder.f);
                                j4 = a2.d;
                                if (j4 != 0) {
                                    nanoTime4 = (nanoTime4 / j3) + ((j4 / j3) * j2);
                                }
                                a2.d = nanoTime4;
                                accessibilityManager = recyclerView.I;
                                if (accessibilityManager == null && accessibilityManager.isEnabled()) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                if (!z4) {
                                    Field field = ViewCompat.a;
                                    z5 = true;
                                    if (view4.getImportantForAccessibility() == 0) {
                                        view4.setImportantForAccessibility(1);
                                    }
                                    RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = recyclerView.t0;
                                    if (recyclerViewAccessibilityDelegate != null) {
                                        RecyclerViewAccessibilityDelegate.ItemDelegate itemDelegate = recyclerViewAccessibilityDelegate.n;
                                        if (itemDelegate != null && (c = ViewCompat.c(view4)) != null && c != itemDelegate) {
                                            itemDelegate.n.put(view4, c);
                                        }
                                        ViewCompat.n(view4, itemDelegate);
                                    }
                                } else {
                                    z5 = true;
                                }
                                if (state.g) {
                                    viewHolder.g = i;
                                }
                                z6 = z5;
                                layoutParams = view4.getLayoutParams();
                                if (layoutParams == null) {
                                    layoutParams2 = (LayoutParams) recyclerView.generateDefaultLayoutParams();
                                    view4.setLayoutParams(layoutParams2);
                                } else if (!recyclerView.checkLayoutParams(layoutParams)) {
                                    layoutParams2 = (LayoutParams) recyclerView.generateLayoutParams(layoutParams);
                                    view4.setLayoutParams(layoutParams2);
                                } else {
                                    layoutParams2 = (LayoutParams) layoutParams;
                                }
                                layoutParams2.a = viewHolder;
                                if (z || !z6) {
                                    z5 = false;
                                }
                                layoutParams2.d = z5;
                                return viewHolder;
                            }
                            z6 = false;
                            z5 = z2;
                            layoutParams = view4.getLayoutParams();
                            if (layoutParams == null) {
                            }
                            layoutParams2.a = viewHolder;
                            if (z) {
                            }
                            z5 = false;
                            layoutParams2.d = z5;
                            return viewHolder;
                        }
                    }
                    viewHolder = null;
                    if (viewHolder != null) {
                    }
                } else {
                    viewHolder = null;
                }
                z = false;
                ArrayList arrayList22 = this.a;
                ArrayList arrayList32 = this.c;
                if (viewHolder != null) {
                }
                if (viewHolder != null) {
                }
                View view42 = viewHolder.a;
                if (z) {
                    i2 = viewHolder.j;
                    if ((i2 & 8192) == 0) {
                    }
                    if (z8) {
                    }
                }
                if (!state.g) {
                }
                if (viewHolder.e()) {
                }
                int e32 = recyclerView.n.e(i, 0);
                viewHolder.s = null;
                viewHolder.r = recyclerView;
                int i132 = viewHolder.f;
                long nanoTime32 = recyclerView.getNanoTime();
                if (j != Long.MAX_VALUE) {
                }
                Adapter adapter42 = recyclerView.u;
                adapter42.getClass();
                if (viewHolder.s != null) {
                }
                if (z3) {
                }
                viewHolder.s = adapter42;
                viewHolder.c();
                adapter42.c(viewHolder, e32);
                if (z3) {
                }
                long nanoTime42 = recyclerView.getNanoTime() - nanoTime32;
                RecycledViewPool.ScrapData a22 = this.g.a(viewHolder.f);
                j4 = a22.d;
                if (j4 != 0) {
                }
                a22.d = nanoTime42;
                accessibilityManager = recyclerView.I;
                if (accessibilityManager == null) {
                }
                z4 = false;
                if (!z4) {
                }
                if (state.g) {
                }
                z6 = z5;
                layoutParams = view42.getLayoutParams();
                if (layoutParams == null) {
                }
                layoutParams2.a = viewHolder;
                if (z) {
                }
                z5 = false;
                layoutParams2.d = z5;
                return viewHolder;
            }
            StringBuilder k2 = jb.k("Invalid item position ", i, "(", i, "). Item count:");
            k2.append(state.b());
            k2.append(recyclerView.w());
            throw new IndexOutOfBoundsException(k2.toString());
        }

        public final void l(ViewHolder viewHolder) {
            if (viewHolder.o) {
                this.b.remove(viewHolder);
            } else {
                this.a.remove(viewHolder);
            }
            viewHolder.n = null;
            viewHolder.o = false;
            viewHolder.j &= -33;
        }

        public final void m() {
            int i;
            LayoutManager layoutManager = RecyclerView.this.v;
            if (layoutManager != null) {
                i = layoutManager.j;
            } else {
                i = 0;
            }
            this.f = this.e + i;
            ArrayList arrayList = this.c;
            for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f; size--) {
                g(size);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface RecyclerListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class RecyclerViewDataObserver extends AdapterDataObserver {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class SmoothScroller {
        public int a = -1;
        public RecyclerView b;
        public LayoutManager c;
        public boolean d;
        public boolean e;
        public View f;
        public final Action g;
        public boolean h;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class Action {
            public int a;
            public int b;
            public int c;
            public int d;
            public Interpolator e;
            public boolean f;
            public int g;

            public final void a(RecyclerView recyclerView) {
                int i = this.d;
                if (i >= 0) {
                    this.d = -1;
                    recyclerView.K(i);
                    this.f = false;
                    return;
                }
                if (this.f) {
                    Interpolator interpolator = this.e;
                    if (interpolator != null && this.c < 1) {
                        u2.l("If you provide an interpolator, you must set a positive duration");
                        return;
                    }
                    int i2 = this.c;
                    if (i2 >= 1) {
                        recyclerView.j0.c(this.a, this.b, i2, interpolator);
                        int i3 = this.g + 1;
                        this.g = i3;
                        if (i3 > 10) {
                            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                        }
                        this.f = false;
                        return;
                    }
                    u2.l("Scroll duration must be a positive number");
                    return;
                }
                this.g = 0;
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public interface ScrollVectorProvider {
            PointF a(int i);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [androidx.recyclerview.widget.RecyclerView$SmoothScroller$Action, java.lang.Object] */
        public SmoothScroller() {
            ?? obj = new Object();
            obj.d = -1;
            obj.f = false;
            obj.g = 0;
            obj.a = 0;
            obj.b = 0;
            obj.c = Integer.MIN_VALUE;
            obj.e = null;
            this.g = obj;
        }

        public final PointF a(int i) {
            Object obj = this.c;
            if (obj instanceof ScrollVectorProvider) {
                return ((ScrollVectorProvider) obj).a(i);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + ScrollVectorProvider.class.getCanonicalName());
            return null;
        }

        public final void b(int i, int i2) {
            PointF a;
            RecyclerView recyclerView = this.b;
            int i3 = -1;
            if (this.a == -1 || recyclerView == null) {
                d();
            }
            if (this.d && this.f == null && this.c != null && (a = a(this.a)) != null) {
                float f = a.x;
                if (f != 0.0f || a.y != 0.0f) {
                    recyclerView.X((int) Math.signum(f), (int) Math.signum(a.y), null);
                }
            }
            boolean z = false;
            this.d = false;
            View view = this.f;
            Action action = this.g;
            if (view != null) {
                this.b.getClass();
                ViewHolder G = RecyclerView.G(view);
                if (G != null) {
                    i3 = G.b();
                }
                if (i3 == this.a) {
                    View view2 = this.f;
                    State state = recyclerView.m0;
                    c(view2, action);
                    action.a(recyclerView);
                    d();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f = null;
                }
            }
            if (this.e) {
                State state2 = recyclerView.m0;
                LinearSmoothScroller linearSmoothScroller = (LinearSmoothScroller) this;
                if (linearSmoothScroller.b.v.v() == 0) {
                    linearSmoothScroller.d();
                } else {
                    int i4 = linearSmoothScroller.n;
                    int i5 = i4 - i;
                    if (i4 * i5 <= 0) {
                        i5 = 0;
                    }
                    linearSmoothScroller.n = i5;
                    int i6 = linearSmoothScroller.o;
                    int i7 = i6 - i2;
                    if (i6 * i7 <= 0) {
                        i7 = 0;
                    }
                    linearSmoothScroller.o = i7;
                    if (i5 == 0 && i7 == 0) {
                        PointF a2 = linearSmoothScroller.a(linearSmoothScroller.a);
                        if (a2 != null) {
                            if (a2.x != 0.0f || a2.y != 0.0f) {
                                float f2 = a2.y;
                                float sqrt = (float) Math.sqrt((f2 * f2) + (r10 * r10));
                                float f3 = a2.x / sqrt;
                                a2.x = f3;
                                float f4 = a2.y / sqrt;
                                a2.y = f4;
                                linearSmoothScroller.n = (int) (f3 * 10000.0f);
                                linearSmoothScroller.o = (int) (f4 * 10000.0f);
                                int f5 = linearSmoothScroller.f(10000);
                                action.a = (int) (linearSmoothScroller.n * 1.2f);
                                action.b = (int) (linearSmoothScroller.o * 1.2f);
                                action.c = (int) (f5 * 1.2f);
                                action.e = linearSmoothScroller.i;
                                action.f = true;
                            }
                        }
                        action.d = linearSmoothScroller.a;
                        linearSmoothScroller.d();
                    }
                }
                if (action.d >= 0) {
                    z = true;
                }
                action.a(recyclerView);
                if (z && this.e) {
                    this.d = true;
                    recyclerView.j0.b();
                }
            }
        }

        public abstract void c(View view, Action action);

        public final void d() {
            if (!this.e) {
                return;
            }
            this.e = false;
            LinearSmoothScroller linearSmoothScroller = (LinearSmoothScroller) this;
            linearSmoothScroller.o = 0;
            linearSmoothScroller.n = 0;
            this.b.m0.a = -1;
            this.f = null;
            this.a = -1;
            this.d = false;
            LayoutManager layoutManager = this.c;
            if (layoutManager.e == this) {
                layoutManager.e = null;
            }
            this.c = null;
            this.b = null;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class State {
        public int a;
        public int b;
        public int c;
        public int d;
        public int e;
        public boolean f;
        public boolean g;
        public boolean h;
        public boolean i;
        public boolean j;
        public boolean k;
        public int l;
        public long m;
        public int n;

        public final void a(int i) {
            if ((this.d & i) != 0) {
                return;
            }
            k8.q("Layout state should be one of ", Integer.toBinaryString(i), " but it is ", Integer.toBinaryString(this.d));
        }

        public final int b() {
            if (this.g) {
                return this.b - this.c;
            }
            return this.e;
        }

        public final String toString() {
            return "State{mTargetPosition=" + this.a + ", mData=null, mItemCount=" + this.e + ", mIsMeasuring=" + this.i + ", mPreviousLayoutItemCount=" + this.b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.c + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.g + ", mRunSimpleAnimations=" + this.j + ", mRunPredictiveAnimations=" + this.k + '}';
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class StretchEdgeEffectFactory extends EdgeEffectFactory {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class ViewCacheExtension {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ViewFlinger implements Runnable {
        public int j;
        public int k;
        public OverScroller l;
        public Interpolator m;
        public boolean n;
        public boolean o;

        public ViewFlinger() {
            Interpolator interpolator = RecyclerView.K0;
            this.m = interpolator;
            this.n = false;
            this.o = false;
            this.l = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        public final void a(int i, int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.setScrollState(2);
            this.k = 0;
            this.j = 0;
            Interpolator interpolator = this.m;
            Interpolator interpolator2 = RecyclerView.K0;
            if (interpolator != interpolator2) {
                this.m = interpolator2;
                this.l = new OverScroller(recyclerView.getContext(), interpolator2);
            }
            this.l.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            b();
        }

        public final void b() {
            if (this.n) {
                this.o = true;
                return;
            }
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.removeCallbacks(this);
            Field field = ViewCompat.a;
            recyclerView.postOnAnimation(this);
        }

        public final void c(int i, int i2, int i3, Interpolator interpolator) {
            boolean z;
            int height;
            RecyclerView recyclerView = RecyclerView.this;
            if (i3 == Integer.MIN_VALUE) {
                int abs = Math.abs(i);
                int abs2 = Math.abs(i2);
                if (abs > abs2) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    height = recyclerView.getWidth();
                } else {
                    height = recyclerView.getHeight();
                }
                if (!z) {
                    abs = abs2;
                }
                i3 = Math.min((int) (((abs / height) + 1.0f) * 300.0f), 2000);
            }
            int i4 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.K0;
            }
            if (this.m != interpolator) {
                this.m = interpolator;
                this.l = new OverScroller(recyclerView.getContext(), interpolator);
            }
            this.k = 0;
            this.j = 0;
            recyclerView.setScrollState(2);
            this.l.startScroll(0, 0, i, i2, i4);
            b();
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            int i2;
            int i3;
            int i4;
            boolean z;
            boolean z2;
            boolean z3;
            int i5;
            RecyclerView recyclerView = RecyclerView.this;
            int[] iArr = recyclerView.y0;
            if (recyclerView.v == null) {
                recyclerView.removeCallbacks(this);
                this.l.abortAnimation();
                return;
            }
            this.o = false;
            this.n = true;
            recyclerView.k();
            OverScroller overScroller = this.l;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i6 = currX - this.j;
                int i7 = currY - this.k;
                this.j = currX;
                this.k = currY;
                int j = RecyclerView.j(i6, recyclerView.O, recyclerView.Q, recyclerView.getWidth());
                int j2 = RecyclerView.j(i7, recyclerView.P, recyclerView.R, recyclerView.getHeight());
                int[] iArr2 = recyclerView.y0;
                iArr2[0] = 0;
                iArr2[1] = 0;
                if (recyclerView.p(j, j2, 1, iArr2, null)) {
                    j -= iArr[0];
                    j2 -= iArr[1];
                }
                if (recyclerView.getOverScrollMode() != 2) {
                    recyclerView.i(j, j2);
                }
                if (recyclerView.u != null) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    recyclerView.X(j, j2, iArr);
                    int i8 = iArr[0];
                    int i9 = iArr[1];
                    int i10 = j - i8;
                    int i11 = j2 - i9;
                    LinearSmoothScroller linearSmoothScroller = recyclerView.v.e;
                    if (linearSmoothScroller != null && !linearSmoothScroller.d && linearSmoothScroller.e) {
                        int b = recyclerView.m0.b();
                        if (b == 0) {
                            linearSmoothScroller.d();
                        } else if (linearSmoothScroller.a >= b) {
                            linearSmoothScroller.a = b - 1;
                            linearSmoothScroller.b(i8, i9);
                        } else {
                            linearSmoothScroller.b(i8, i9);
                        }
                    }
                    i = i10;
                    i3 = i8;
                    i2 = i11;
                    i4 = i9;
                } else {
                    i = j;
                    i2 = j2;
                    i3 = 0;
                    i4 = 0;
                }
                if (!recyclerView.x.isEmpty()) {
                    recyclerView.invalidate();
                }
                int[] iArr3 = recyclerView.y0;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView.q(i3, i4, i, i2, null, 1, iArr3);
                int i12 = i - iArr[0];
                int i13 = i2 - iArr[1];
                if (i3 != 0 || i4 != 0) {
                    recyclerView.r(i3, i4);
                }
                if (!recyclerView.awakenScrollBars()) {
                    recyclerView.invalidate();
                }
                if (overScroller.getCurrX() == overScroller.getFinalX()) {
                    z = true;
                } else {
                    z = false;
                }
                if (overScroller.getCurrY() == overScroller.getFinalY()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!overScroller.isFinished() && ((!z && i12 == 0) || (!z2 && i13 == 0))) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                LinearSmoothScroller linearSmoothScroller2 = recyclerView.v.e;
                if ((linearSmoothScroller2 == null || !linearSmoothScroller2.d) && z3) {
                    if (recyclerView.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        if (i12 < 0) {
                            i5 = -currVelocity;
                        } else if (i12 > 0) {
                            i5 = currVelocity;
                        } else {
                            i5 = 0;
                        }
                        if (i13 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i13 <= 0) {
                            currVelocity = 0;
                        }
                        if (i5 < 0) {
                            recyclerView.t();
                            if (recyclerView.O.isFinished()) {
                                recyclerView.O.onAbsorb(-i5);
                            }
                        } else if (i5 > 0) {
                            recyclerView.u();
                            if (recyclerView.Q.isFinished()) {
                                recyclerView.Q.onAbsorb(i5);
                            }
                        }
                        if (currVelocity < 0) {
                            recyclerView.v();
                            if (recyclerView.P.isFinished()) {
                                recyclerView.P.onAbsorb(-currVelocity);
                            }
                        } else if (currVelocity > 0) {
                            recyclerView.s();
                            if (recyclerView.R.isFinished()) {
                                recyclerView.R.onAbsorb(currVelocity);
                            }
                        }
                        if (i5 != 0 || currVelocity != 0) {
                            Field field = ViewCompat.a;
                            recyclerView.postInvalidateOnAnimation();
                        }
                    }
                    if (RecyclerView.I0) {
                        GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.l0;
                        int[] iArr4 = layoutPrefetchRegistryImpl.c;
                        if (iArr4 != null) {
                            Arrays.fill(iArr4, -1);
                        }
                        layoutPrefetchRegistryImpl.d = 0;
                    }
                } else {
                    b();
                    GapWorker gapWorker = recyclerView.k0;
                    if (gapWorker != null) {
                        gapWorker.a(recyclerView, i3, i4);
                    }
                }
            }
            LinearSmoothScroller linearSmoothScroller3 = recyclerView.v.e;
            if (linearSmoothScroller3 != null && linearSmoothScroller3.d) {
                linearSmoothScroller3.b(0, 0);
            }
            this.n = false;
            if (this.o) {
                recyclerView.removeCallbacks(this);
                Field field2 = ViewCompat.a;
                recyclerView.postOnAnimation(this);
            } else {
                recyclerView.setScrollState(0);
                recyclerView.c0(1);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class ViewHolder {
        public static final List t = Collections.EMPTY_LIST;
        public final View a;
        public WeakReference b;
        public int j;
        public RecyclerView r;
        public Adapter s;
        public int c = -1;
        public int d = -1;
        public long e = -1;
        public int f = -1;
        public int g = -1;
        public ViewHolder h = null;
        public ViewHolder i = null;
        public final ArrayList k = null;
        public final List l = null;
        public int m = 0;
        public Recycler n = null;
        public boolean o = false;
        public int p = 0;
        public int q = -1;

        public ViewHolder(View view) {
            if (view != null) {
                this.a = view;
            } else {
                u2.g("itemView may not be null");
                throw null;
            }
        }

        public final void a(int i) {
            this.j = i | this.j;
        }

        public final int b() {
            int i = this.g;
            if (i == -1) {
                return this.c;
            }
            return i;
        }

        public final List c() {
            ArrayList arrayList;
            if ((this.j & 1024) == 0 && (arrayList = this.k) != null && arrayList.size() != 0) {
                return this.l;
            }
            return t;
        }

        public final boolean d() {
            View view = this.a;
            if (view.getParent() != null && view.getParent() != this.r) {
                return true;
            }
            return false;
        }

        public final boolean e() {
            if ((this.j & 1) != 0) {
                return true;
            }
            return false;
        }

        public final boolean f() {
            if ((this.j & 4) != 0) {
                return true;
            }
            return false;
        }

        public final boolean g() {
            if ((this.j & 16) == 0) {
                Field field = ViewCompat.a;
                if (!this.a.hasTransientState()) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final boolean h() {
            if ((this.j & 8) != 0) {
                return true;
            }
            return false;
        }

        public final boolean i() {
            if (this.n != null) {
                return true;
            }
            return false;
        }

        public final boolean j() {
            if ((this.j & 256) != 0) {
                return true;
            }
            return false;
        }

        public final boolean k() {
            if ((this.j & 2) != 0) {
                return true;
            }
            return false;
        }

        public final void l(int i, boolean z) {
            if (this.d == -1) {
                this.d = this.c;
            }
            if (this.g == -1) {
                this.g = this.c;
            }
            if (z) {
                this.g += i;
            }
            this.c += i;
            View view = this.a;
            if (view.getLayoutParams() != null) {
                ((LayoutParams) view.getLayoutParams()).c = true;
            }
        }

        public final void m() {
            this.j = 0;
            this.c = -1;
            this.d = -1;
            this.e = -1L;
            this.g = -1;
            this.m = 0;
            this.h = null;
            this.i = null;
            ArrayList arrayList = this.k;
            if (arrayList != null) {
                arrayList.clear();
            }
            this.j &= -1025;
            this.p = 0;
            this.q = -1;
            RecyclerView.g(this);
        }

        public final void n(boolean z) {
            int i;
            int i2 = this.m;
            if (z) {
                i = i2 - 1;
            } else {
                i = i2 + 1;
            }
            this.m = i;
            if (i < 0) {
                this.m = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z && i == 1) {
                this.j |= 16;
            } else if (z && i == 0) {
                this.j &= -17;
            }
        }

        public final boolean o() {
            if ((this.j & 128) != 0) {
                return true;
            }
            return false;
        }

        public final boolean p() {
            if ((this.j & 32) != 0) {
                return true;
            }
            return false;
        }

        public final String toString() {
            String simpleName;
            String str;
            if (getClass().isAnonymousClass()) {
                simpleName = "ViewHolder";
            } else {
                simpleName = getClass().getSimpleName();
            }
            StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.c + " id=" + this.e + ", oldPos=" + this.d + ", pLpos:" + this.g);
            if (i()) {
                sb.append(" scrap ");
                if (this.o) {
                    str = "[changeScrap]";
                } else {
                    str = "[attachedScrap]";
                }
                sb.append(str);
            }
            if (f()) {
                sb.append(" invalid");
            }
            if (!e()) {
                sb.append(" unbound");
            }
            if ((this.j & 2) != 0) {
                sb.append(" update");
            }
            if (h()) {
                sb.append(" removed");
            }
            if (o()) {
                sb.append(" ignored");
            }
            if (j()) {
                sb.append(" tmpDetached");
            }
            if (!g()) {
                sb.append(" not recyclable(" + this.m + ")");
            }
            if ((this.j & 512) != 0 || f()) {
                sb.append(" undefined adapter position");
            }
            if (this.a.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.recyclerview.widget.RecyclerView$StretchEdgeEffectFactory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.view.animation.Interpolator, java.lang.Object] */
    static {
        Class cls = Integer.TYPE;
        J0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        K0 = new Object();
        L0 = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.RecyclerView$RecyclerViewDataObserver, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.recyclerview.widget.RecyclerView$ItemAnimator, androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.SimpleItemAnimator, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r3v17, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$State] */
    /* JADX WARN: Type inference failed for: r3v42, types: [java.lang.Object] */
    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl;
        boolean z;
        char c;
        boolean z2;
        char c2;
        TypedArray typedArray;
        int i2;
        ClassLoader classLoader;
        Constructor constructor;
        Object[] objArr;
        this.k = new Object();
        this.l = new Recycler();
        this.p = new ViewInfoStore();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new RectF();
        this.w = new ArrayList();
        this.x = new ArrayList();
        this.y = new ArrayList();
        this.D = 0;
        this.J = false;
        this.K = false;
        this.L = 0;
        this.M = 0;
        this.N = L0;
        ?? obj = new Object();
        obj.a = null;
        obj.b = new ArrayList();
        obj.c = 120L;
        obj.d = 120L;
        obj.e = 250L;
        obj.f = 250L;
        obj.g = true;
        obj.h = new ArrayList();
        obj.i = new ArrayList();
        obj.j = new ArrayList();
        obj.k = new ArrayList();
        obj.l = new ArrayList();
        obj.m = new ArrayList();
        obj.n = new ArrayList();
        obj.o = new ArrayList();
        obj.p = new ArrayList();
        obj.q = new ArrayList();
        obj.r = new ArrayList();
        this.S = obj;
        this.T = 0;
        this.U = -1;
        this.g0 = Float.MIN_VALUE;
        this.h0 = Float.MIN_VALUE;
        this.i0 = true;
        this.j0 = new ViewFlinger();
        if (I0) {
            layoutPrefetchRegistryImpl = new Object();
        } else {
            layoutPrefetchRegistryImpl = null;
        }
        this.l0 = layoutPrefetchRegistryImpl;
        ?? obj2 = new Object();
        obj2.a = -1;
        obj2.b = 0;
        obj2.c = 0;
        obj2.d = 1;
        obj2.e = 0;
        obj2.f = false;
        obj2.g = false;
        obj2.h = false;
        obj2.i = false;
        obj2.j = false;
        obj2.k = false;
        this.m0 = obj2;
        this.p0 = false;
        this.q0 = false;
        ItemAnimatorRestoreListener itemAnimatorRestoreListener = new ItemAnimatorRestoreListener();
        this.r0 = itemAnimatorRestoreListener;
        this.s0 = false;
        this.u0 = new int[2];
        this.w0 = new int[2];
        this.x0 = new int[2];
        this.y0 = new int[2];
        this.z0 = new ArrayList();
        this.A0 = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.2
            @Override // java.lang.Runnable
            public final void run() {
                boolean z3;
                long j;
                RecyclerView recyclerView = RecyclerView.this;
                ItemAnimator itemAnimator = recyclerView.S;
                if (itemAnimator != null) {
                    final DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) itemAnimator;
                    long j2 = defaultItemAnimator.d;
                    ArrayList arrayList = defaultItemAnimator.h;
                    boolean isEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = defaultItemAnimator.j;
                    boolean isEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = defaultItemAnimator.k;
                    boolean isEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = defaultItemAnimator.i;
                    boolean isEmpty4 = arrayList4.isEmpty();
                    if (!isEmpty || !isEmpty2 || !isEmpty4 || !isEmpty3) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            final ViewHolder viewHolder = (ViewHolder) it.next();
                            final View view = viewHolder.a;
                            final ViewPropertyAnimator animate = view.animate();
                            defaultItemAnimator.q.add(viewHolder);
                            animate.setDuration(j2).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.4
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    animate.setListener(null);
                                    view.setAlpha(1.0f);
                                    DefaultItemAnimator defaultItemAnimator2 = defaultItemAnimator;
                                    RecyclerView.ViewHolder viewHolder2 = viewHolder;
                                    defaultItemAnimator2.c(viewHolder2);
                                    defaultItemAnimator2.q.remove(viewHolder2);
                                    defaultItemAnimator2.i();
                                }

                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationStart(Animator animator) {
                                    defaultItemAnimator.getClass();
                                }
                            }).start();
                            arrayList = arrayList;
                            isEmpty = isEmpty;
                        }
                        boolean z4 = isEmpty;
                        arrayList.clear();
                        if (!isEmpty2) {
                            final ArrayList arrayList5 = new ArrayList();
                            arrayList5.addAll(arrayList2);
                            defaultItemAnimator.m.add(arrayList5);
                            arrayList2.clear();
                            Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ArrayList arrayList6 = arrayList5;
                                    Iterator it2 = arrayList6.iterator();
                                    while (true) {
                                        boolean hasNext = it2.hasNext();
                                        final DefaultItemAnimator defaultItemAnimator2 = DefaultItemAnimator.this;
                                        if (hasNext) {
                                            MoveInfo moveInfo = (MoveInfo) it2.next();
                                            final RecyclerView.ViewHolder viewHolder2 = moveInfo.a;
                                            int i3 = moveInfo.b;
                                            int i4 = moveInfo.c;
                                            int i5 = moveInfo.d;
                                            int i6 = moveInfo.e;
                                            defaultItemAnimator2.getClass();
                                            final View view2 = viewHolder2.a;
                                            final int i7 = i5 - i3;
                                            final int i8 = i6 - i4;
                                            if (i7 != 0) {
                                                view2.animate().translationX(0.0f);
                                            }
                                            if (i8 != 0) {
                                                view2.animate().translationY(0.0f);
                                            }
                                            final ViewPropertyAnimator animate2 = view2.animate();
                                            defaultItemAnimator2.p.add(viewHolder2);
                                            animate2.setDuration(defaultItemAnimator2.e).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                public final void onAnimationCancel(Animator animator) {
                                                    int i9 = i7;
                                                    View view3 = view2;
                                                    if (i9 != 0) {
                                                        view3.setTranslationX(0.0f);
                                                    }
                                                    if (i8 != 0) {
                                                        view3.setTranslationY(0.0f);
                                                    }
                                                }

                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                public final void onAnimationEnd(Animator animator) {
                                                    animate2.setListener(null);
                                                    DefaultItemAnimator defaultItemAnimator3 = DefaultItemAnimator.this;
                                                    RecyclerView.ViewHolder viewHolder3 = viewHolder2;
                                                    defaultItemAnimator3.c(viewHolder3);
                                                    defaultItemAnimator3.p.remove(viewHolder3);
                                                    defaultItemAnimator3.i();
                                                }

                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                public final void onAnimationStart(Animator animator) {
                                                    DefaultItemAnimator.this.getClass();
                                                }
                                            }).start();
                                        } else {
                                            arrayList6.clear();
                                            defaultItemAnimator2.m.remove(arrayList6);
                                            return;
                                        }
                                    }
                                }
                            };
                            if (!z4) {
                                View view2 = ((DefaultItemAnimator.MoveInfo) arrayList5.get(0)).a.a;
                                Field field = ViewCompat.a;
                                view2.postOnAnimationDelayed(runnable, j2);
                            } else {
                                runnable.run();
                            }
                        }
                        if (!isEmpty3) {
                            final ArrayList arrayList6 = new ArrayList();
                            arrayList6.addAll(arrayList3);
                            defaultItemAnimator.n.add(arrayList6);
                            arrayList3.clear();
                            Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final View view3;
                                    ArrayList arrayList7 = arrayList6;
                                    Iterator it2 = arrayList7.iterator();
                                    while (true) {
                                        boolean hasNext = it2.hasNext();
                                        final DefaultItemAnimator defaultItemAnimator2 = DefaultItemAnimator.this;
                                        if (hasNext) {
                                            final ChangeInfo changeInfo = (ChangeInfo) it2.next();
                                            ArrayList arrayList8 = defaultItemAnimator2.r;
                                            long j3 = defaultItemAnimator2.f;
                                            RecyclerView.ViewHolder viewHolder2 = changeInfo.a;
                                            final View view4 = null;
                                            if (viewHolder2 == null) {
                                                view3 = null;
                                            } else {
                                                view3 = viewHolder2.a;
                                            }
                                            RecyclerView.ViewHolder viewHolder3 = changeInfo.b;
                                            if (viewHolder3 != null) {
                                                view4 = viewHolder3.a;
                                            }
                                            if (view3 != null) {
                                                final ViewPropertyAnimator duration = view3.animate().setDuration(j3);
                                                arrayList8.add(changeInfo.a);
                                                duration.translationX(changeInfo.e - changeInfo.c);
                                                duration.translationY(changeInfo.f - changeInfo.d);
                                                duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                    public final void onAnimationEnd(Animator animator) {
                                                        duration.setListener(null);
                                                        View view5 = view3;
                                                        view5.setAlpha(1.0f);
                                                        view5.setTranslationX(0.0f);
                                                        view5.setTranslationY(0.0f);
                                                        ChangeInfo changeInfo2 = changeInfo;
                                                        RecyclerView.ViewHolder viewHolder4 = changeInfo2.a;
                                                        DefaultItemAnimator defaultItemAnimator3 = DefaultItemAnimator.this;
                                                        defaultItemAnimator3.c(viewHolder4);
                                                        defaultItemAnimator3.r.remove(changeInfo2.a);
                                                        defaultItemAnimator3.i();
                                                    }

                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                    public final void onAnimationStart(Animator animator) {
                                                        DefaultItemAnimator.this.getClass();
                                                    }
                                                }).start();
                                            }
                                            if (view4 != null) {
                                                final ViewPropertyAnimator animate2 = view4.animate();
                                                arrayList8.add(changeInfo.b);
                                                animate2.translationX(0.0f).translationY(0.0f).setDuration(j3).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.8
                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                    public final void onAnimationEnd(Animator animator) {
                                                        animate2.setListener(null);
                                                        View view5 = view4;
                                                        view5.setAlpha(1.0f);
                                                        view5.setTranslationX(0.0f);
                                                        view5.setTranslationY(0.0f);
                                                        ChangeInfo changeInfo2 = changeInfo;
                                                        RecyclerView.ViewHolder viewHolder4 = changeInfo2.b;
                                                        DefaultItemAnimator defaultItemAnimator3 = DefaultItemAnimator.this;
                                                        defaultItemAnimator3.c(viewHolder4);
                                                        defaultItemAnimator3.r.remove(changeInfo2.b);
                                                        defaultItemAnimator3.i();
                                                    }

                                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                    public final void onAnimationStart(Animator animator) {
                                                        DefaultItemAnimator.this.getClass();
                                                    }
                                                }).start();
                                            }
                                        } else {
                                            arrayList7.clear();
                                            defaultItemAnimator2.n.remove(arrayList7);
                                            return;
                                        }
                                    }
                                }
                            };
                            if (!z4) {
                                View view3 = ((DefaultItemAnimator.ChangeInfo) arrayList6.get(0)).a.a;
                                Field field2 = ViewCompat.a;
                                view3.postOnAnimationDelayed(runnable2, j2);
                            } else {
                                runnable2.run();
                            }
                        }
                        if (!isEmpty4) {
                            final ArrayList arrayList7 = new ArrayList();
                            arrayList7.addAll(arrayList4);
                            defaultItemAnimator.l.add(arrayList7);
                            arrayList4.clear();
                            Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ArrayList arrayList8 = arrayList7;
                                    Iterator it2 = arrayList8.iterator();
                                    while (true) {
                                        boolean hasNext = it2.hasNext();
                                        final DefaultItemAnimator defaultItemAnimator2 = DefaultItemAnimator.this;
                                        if (hasNext) {
                                            final RecyclerView.ViewHolder viewHolder2 = (RecyclerView.ViewHolder) it2.next();
                                            defaultItemAnimator2.getClass();
                                            final View view4 = viewHolder2.a;
                                            final ViewPropertyAnimator animate2 = view4.animate();
                                            defaultItemAnimator2.o.add(viewHolder2);
                                            animate2.alpha(1.0f).setDuration(defaultItemAnimator2.c).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.5
                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                public final void onAnimationCancel(Animator animator) {
                                                    view4.setAlpha(1.0f);
                                                }

                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                public final void onAnimationEnd(Animator animator) {
                                                    animate2.setListener(null);
                                                    DefaultItemAnimator defaultItemAnimator3 = defaultItemAnimator2;
                                                    RecyclerView.ViewHolder viewHolder3 = viewHolder2;
                                                    defaultItemAnimator3.c(viewHolder3);
                                                    defaultItemAnimator3.o.remove(viewHolder3);
                                                    defaultItemAnimator3.i();
                                                }

                                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                                public final void onAnimationStart(Animator animator) {
                                                    defaultItemAnimator2.getClass();
                                                }
                                            }).start();
                                        } else {
                                            arrayList8.clear();
                                            defaultItemAnimator2.l.remove(arrayList8);
                                            return;
                                        }
                                    }
                                }
                            };
                            if (z4 && isEmpty2 && isEmpty3) {
                                runnable3.run();
                            } else {
                                long j3 = 0;
                                if (z4) {
                                    j2 = 0;
                                }
                                if (!isEmpty2) {
                                    j = defaultItemAnimator.e;
                                } else {
                                    j = 0;
                                }
                                if (!isEmpty3) {
                                    j3 = defaultItemAnimator.f;
                                }
                                long max = Math.max(j, j3) + j2;
                                z3 = false;
                                View view4 = ((ViewHolder) arrayList7.get(0)).a;
                                Field field3 = ViewCompat.a;
                                view4.postOnAnimationDelayed(runnable3, max);
                                recyclerView.s0 = z3;
                            }
                        }
                    }
                }
                z3 = false;
                recyclerView.s0 = z3;
            }
        };
        this.C0 = 0;
        this.D0 = 0;
        this.E0 = new AnonymousClass4();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.d0 = viewConfiguration.getScaledTouchSlop();
        this.g0 = viewConfiguration.getScaledHorizontalScrollFactor();
        this.h0 = viewConfiguration.getScaledVerticalScrollFactor();
        this.e0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.j = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        if (getOverScrollMode() == 2) {
            z = true;
        } else {
            z = false;
        }
        setWillNotDraw(z);
        this.S.a = itemAnimatorRestoreListener;
        this.n = new AdapterHelper(new AnonymousClass6());
        this.o = new ChildHelper(new AnonymousClass5());
        if (ViewCompat.f(this) == 0) {
            ViewCompat.p(this, 8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.I = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        int[] iArr = R$styleable.a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        ViewCompat.m(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.q = obtainStyledAttributes.getBoolean(1, true);
        if (obtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes.getDrawable(6);
            Drawable drawable = obtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(5);
            if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
                Resources resources = getContext().getResources();
                c = 3;
                c2 = 2;
                z2 = 1;
                typedArray = obtainStyledAttributes;
                i2 = 4;
                new FastScroller(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(net.blip.android.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(net.blip.android.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(net.blip.android.R.dimen.fastscroll_margin));
            } else {
                u2.g("Trying to set fast scroller without both required drawables.".concat(w()));
                throw null;
            }
        } else {
            c = 3;
            z2 = 1;
            c2 = 2;
            typedArray = obtainStyledAttributes;
            i2 = 4;
        }
        typedArray.recycle();
        if (string != null) {
            String trim = string.trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) == '.') {
                    trim = context.getPackageName() + trim;
                } else if (!trim.contains(".")) {
                    trim = RecyclerView.class.getPackage().getName() + '.' + trim;
                }
                String str = trim;
                try {
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    Class asSubclass = Class.forName(str, false, classLoader).asSubclass(LayoutManager.class);
                    try {
                        constructor = asSubclass.getConstructor(J0);
                        objArr = new Object[i2];
                        objArr[0] = context;
                        objArr[z2] = attributeSet;
                        objArr[c2] = Integer.valueOf(i);
                        objArr[c] = 0;
                    } catch (NoSuchMethodException e) {
                        try {
                            constructor = asSubclass.getConstructor(null);
                            objArr = null;
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e2);
                        }
                    }
                    constructor.setAccessible(z2);
                    setLayoutManager((LayoutManager) constructor.newInstance(objArr));
                } catch (ClassCastException e3) {
                    fe.m(attributeSet.getPositionDescription(), ": Class is not a LayoutManager ", str, e3);
                    throw null;
                } catch (ClassNotFoundException e4) {
                    fe.m(attributeSet.getPositionDescription(), ": Unable to find LayoutManager ", str, e4);
                    throw null;
                } catch (IllegalAccessException e5) {
                    fe.m(attributeSet.getPositionDescription(), ": Cannot access non-public constructor ", str, e5);
                    throw null;
                } catch (InstantiationException e6) {
                    fe.m(attributeSet.getPositionDescription(), ": Could not instantiate the LayoutManager: ", str, e6);
                    throw null;
                } catch (InvocationTargetException e7) {
                    fe.m(attributeSet.getPositionDescription(), ": Could not instantiate the LayoutManager: ", str, e7);
                    throw null;
                }
            }
        }
        int[] iArr2 = F0;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        ViewCompat.m(this, context, iArr2, attributeSet, obtainStyledAttributes2, i);
        boolean z3 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z3);
        setTag(net.blip.android.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    public static RecyclerView B(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView B = B(viewGroup.getChildAt(i));
            if (B != null) {
                return B;
            }
        }
        return null;
    }

    public static ViewHolder G(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).a;
    }

    public static void g(ViewHolder viewHolder) {
        WeakReference weakReference = viewHolder.b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view != viewHolder.a) {
                    Object parent = view.getParent();
                    if (parent instanceof View) {
                        view = (View) parent;
                    } else {
                        view = null;
                    }
                } else {
                    return;
                }
            }
            viewHolder.b = null;
        }
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.v0 == null) {
            this.v0 = new NestedScrollingChildHelper(this);
        }
        return this.v0;
    }

    public static int j(int i, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i2) {
        if (i > 0 && edgeEffect != null && EdgeEffectCompat.a(edgeEffect) != 0.0f) {
            int round = Math.round(EdgeEffectCompat.b(edgeEffect, ((-i) * 4.0f) / i2, 0.5f) * ((-i2) / 4.0f));
            if (round != i) {
                edgeEffect.finish();
            }
            return i - round;
        }
        if (i < 0 && edgeEffect2 != null && EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
            float f = i2;
            int round2 = Math.round(EdgeEffectCompat.b(edgeEffect2, (i * 4.0f) / f, 0.5f) * (f / 4.0f));
            if (round2 != i) {
                edgeEffect2.finish();
            }
            return i - round2;
        }
        return i;
    }

    public final void A(int[] iArr) {
        ChildHelper childHelper = this.o;
        int e = childHelper.e();
        if (e == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < e; i3++) {
            ViewHolder G = G(childHelper.d(i3));
            if (!G.o()) {
                int b = G.b();
                if (b < i) {
                    i = b;
                }
                if (b > i2) {
                    i2 = b;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public final ViewHolder C(int i) {
        ViewHolder viewHolder = null;
        if (this.J) {
            return null;
        }
        ChildHelper childHelper = this.o;
        int h = childHelper.h();
        for (int i2 = 0; i2 < h; i2++) {
            ViewHolder G = G(childHelper.g(i2));
            if (G != null && !G.h() && D(G) == i) {
                if (childHelper.c.contains(G.a)) {
                    viewHolder = G;
                } else {
                    return G;
                }
            }
        }
        return viewHolder;
    }

    public final int D(ViewHolder viewHolder) {
        if ((viewHolder.j & 524) == 0 && viewHolder.e()) {
            int i = viewHolder.c;
            ArrayList arrayList = this.n.b;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                AdapterHelper.UpdateOp updateOp = (AdapterHelper.UpdateOp) arrayList.get(i2);
                int i3 = updateOp.a;
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 == 8) {
                            int i4 = updateOp.b;
                            if (i4 == i) {
                                i = updateOp.c;
                            } else {
                                if (i4 < i) {
                                    i--;
                                }
                                if (updateOp.c <= i) {
                                    i++;
                                }
                            }
                        }
                    } else {
                        int i5 = updateOp.b;
                        if (i5 <= i) {
                            int i6 = updateOp.c;
                            if (i5 + i6 <= i) {
                                i -= i6;
                            }
                        } else {
                            continue;
                        }
                    }
                } else if (updateOp.b <= i) {
                    i += updateOp.c;
                }
            }
            return i;
        }
        return -1;
    }

    public final long E(ViewHolder viewHolder) {
        if (this.u.b) {
            return viewHolder.e;
        }
        return viewHolder.c;
    }

    public final ViewHolder F(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            u2.m("View ", view, " is not a direct child of ", this);
            return null;
        }
        return G(view);
    }

    public final Rect H(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z = layoutParams.c;
        Rect rect = layoutParams.b;
        if (!z || (this.m0.g && (layoutParams.a.k() || layoutParams.a.f()))) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.x;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Rect rect2 = this.r;
            rect2.set(0, 0, 0, 0);
            ((ItemDecoration) arrayList.get(i)).getClass();
            ((LayoutParams) view.getLayoutParams()).a.getClass();
            rect2.set(0, 0, 0, 0);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.c = false;
        return rect;
    }

    public final boolean I() {
        if (this.C && !this.J && !this.n.f()) {
            return false;
        }
        return true;
    }

    public final boolean J() {
        if (this.L > 0) {
            return true;
        }
        return false;
    }

    public final void K(int i) {
        if (this.v == null) {
            return;
        }
        setScrollState(2);
        this.v.k0(i);
        awakenScrollBars();
    }

    public final void L() {
        ChildHelper childHelper = this.o;
        int h = childHelper.h();
        for (int i = 0; i < h; i++) {
            ((LayoutParams) childHelper.g(i).getLayoutParams()).c = true;
        }
        ArrayList arrayList = this.l.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            LayoutParams layoutParams = (LayoutParams) ((ViewHolder) arrayList.get(i2)).a.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.c = true;
            }
        }
    }

    public final void M(int i, int i2, boolean z) {
        int i3 = i + i2;
        ChildHelper childHelper = this.o;
        int h = childHelper.h();
        for (int i4 = 0; i4 < h; i4++) {
            ViewHolder G = G(childHelper.g(i4));
            if (G != null && !G.o()) {
                int i5 = G.c;
                State state = this.m0;
                if (i5 >= i3) {
                    G.l(-i2, z);
                    state.f = true;
                } else if (i5 >= i) {
                    G.a(8);
                    G.l(-i2, z);
                    G.c = i - 1;
                    state.f = true;
                }
            }
        }
        Recycler recycler = this.l;
        ArrayList arrayList = recycler.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
            if (viewHolder != null) {
                int i6 = viewHolder.c;
                if (i6 >= i3) {
                    viewHolder.l(-i2, z);
                } else if (i6 >= i) {
                    viewHolder.a(8);
                    recycler.g(size);
                }
            }
        }
        requestLayout();
    }

    public final void N() {
        this.L++;
    }

    public final void O(boolean z) {
        int i;
        AccessibilityManager accessibilityManager;
        int i2 = this.L - 1;
        this.L = i2;
        if (i2 < 1) {
            this.L = 0;
            if (z) {
                int i3 = this.H;
                this.H = 0;
                if (i3 != 0 && (accessibilityManager = this.I) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    obtain.setContentChangeTypes(i3);
                    sendAccessibilityEventUnchecked(obtain);
                }
                ArrayList arrayList = this.z0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
                    if (viewHolder.a.getParent() == this && !viewHolder.o() && (i = viewHolder.q) != -1) {
                        View view = viewHolder.a;
                        Field field = ViewCompat.a;
                        view.setImportantForAccessibility(i);
                        viewHolder.q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void P(MotionEvent motionEvent) {
        int i;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.U) {
            if (actionIndex == 0) {
                i = 1;
            } else {
                i = 0;
            }
            this.U = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.b0 = x;
            this.W = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.c0 = y;
            this.a0 = y;
        }
    }

    public final void Q() {
        if (!this.s0 && this.A) {
            Field field = ViewCompat.a;
            postOnAnimation(this.A0);
            this.s0 = true;
        }
    }

    public final void R(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo) {
        viewHolder.j &= -8193;
        boolean z = this.m0.h;
        ViewInfoStore viewInfoStore = this.p;
        if (z && viewHolder.k() && !viewHolder.h() && !viewHolder.o()) {
            viewInfoStore.b.d(E(viewHolder), viewHolder);
        }
        SimpleArrayMap simpleArrayMap = viewInfoStore.a;
        ViewInfoStore.InfoRecord infoRecord = (ViewInfoStore.InfoRecord) simpleArrayMap.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = ViewInfoStore.InfoRecord.a();
            simpleArrayMap.put(viewHolder, infoRecord);
        }
        infoRecord.b = itemHolderInfo;
        infoRecord.a |= 4;
    }

    public final int S(int i, float f) {
        float height = f / getHeight();
        float width = i / getWidth();
        EdgeEffect edgeEffect = this.O;
        float f2 = 0.0f;
        if (edgeEffect != null && EdgeEffectCompat.a(edgeEffect) != 0.0f) {
            boolean canScrollHorizontally = canScrollHorizontally(-1);
            EdgeEffect edgeEffect2 = this.O;
            if (canScrollHorizontally) {
                edgeEffect2.onRelease();
            } else {
                float f3 = -EdgeEffectCompat.b(edgeEffect2, -width, 1.0f - height);
                if (EdgeEffectCompat.a(this.O) == 0.0f) {
                    this.O.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        } else {
            EdgeEffect edgeEffect3 = this.Q;
            if (edgeEffect3 != null && EdgeEffectCompat.a(edgeEffect3) != 0.0f) {
                boolean canScrollHorizontally2 = canScrollHorizontally(1);
                EdgeEffect edgeEffect4 = this.Q;
                if (canScrollHorizontally2) {
                    edgeEffect4.onRelease();
                } else {
                    float b = EdgeEffectCompat.b(edgeEffect4, width, height);
                    if (EdgeEffectCompat.a(this.Q) == 0.0f) {
                        this.Q.onRelease();
                    }
                    f2 = b;
                }
                invalidate();
            }
        }
        return Math.round(f2 * getWidth());
    }

    public final int T(int i, float f) {
        float width = f / getWidth();
        float height = i / getHeight();
        EdgeEffect edgeEffect = this.P;
        float f2 = 0.0f;
        if (edgeEffect != null && EdgeEffectCompat.a(edgeEffect) != 0.0f) {
            boolean canScrollVertically = canScrollVertically(-1);
            EdgeEffect edgeEffect2 = this.P;
            if (canScrollVertically) {
                edgeEffect2.onRelease();
            } else {
                float f3 = -EdgeEffectCompat.b(edgeEffect2, -height, width);
                if (EdgeEffectCompat.a(this.P) == 0.0f) {
                    this.P.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        } else {
            EdgeEffect edgeEffect3 = this.R;
            if (edgeEffect3 != null && EdgeEffectCompat.a(edgeEffect3) != 0.0f) {
                boolean canScrollVertically2 = canScrollVertically(1);
                EdgeEffect edgeEffect4 = this.R;
                if (canScrollVertically2) {
                    edgeEffect4.onRelease();
                } else {
                    float b = EdgeEffectCompat.b(edgeEffect4, height, 1.0f - width);
                    if (EdgeEffectCompat.a(this.R) == 0.0f) {
                        this.R.onRelease();
                    }
                    f2 = b;
                }
                invalidate();
            }
        }
        return Math.round(f2 * getHeight());
    }

    public final void U(View view, View view2) {
        View view3;
        boolean z;
        if (view2 != null) {
            view3 = view2;
        } else {
            view3 = view;
        }
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.r;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.c) {
                Rect rect2 = layoutParams2.b;
                rect.left -= rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        LayoutManager layoutManager = this.v;
        boolean z2 = !this.C;
        if (view2 == null) {
            z = true;
        } else {
            z = false;
        }
        layoutManager.h0(this, view, this.r, z2, z);
    }

    public final void V() {
        VelocityTracker velocityTracker = this.V;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z = false;
        c0(0);
        EdgeEffect edgeEffect = this.O;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.O.isFinished();
        }
        EdgeEffect edgeEffect2 = this.P;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.P.isFinished();
        }
        EdgeEffect edgeEffect3 = this.Q;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.Q.isFinished();
        }
        EdgeEffect edgeEffect4 = this.R;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.R.isFinished();
        }
        if (z) {
            Field field = ViewCompat.a;
            postInvalidateOnAnimation();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean W(int i, int i2, MotionEvent motionEvent, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        boolean z2;
        boolean z3;
        k();
        Adapter adapter = this.u;
        int[] iArr = this.y0;
        if (adapter != null) {
            iArr[0] = 0;
            iArr[1] = 0;
            X(i, i2, iArr);
            i4 = iArr[0];
            i5 = iArr[1];
            i6 = i - i4;
            i7 = i2 - i5;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.x.isEmpty()) {
            invalidate();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        q(i4, i5, i6, i7, this.w0, i3, iArr);
        int i8 = iArr[0];
        int i9 = i6 - i8;
        int i10 = iArr[1];
        int i11 = i7 - i10;
        if (i8 == 0 && i10 == 0) {
            z = false;
        } else {
            z = true;
        }
        int i12 = this.b0;
        int[] iArr2 = this.w0;
        int i13 = iArr2[0];
        this.b0 = i12 - i13;
        int i14 = this.c0;
        int i15 = iArr2[1];
        this.c0 = i14 - i15;
        int[] iArr3 = this.x0;
        iArr3[0] = iArr3[0] + i13;
        iArr3[1] = iArr3[1] + i15;
        if (getOverScrollMode() != 2) {
            if (motionEvent == null || (motionEvent.getSource() & 8194) == 8194) {
                z2 = true;
            } else {
                float x = motionEvent.getX();
                float f = i9;
                float y = motionEvent.getY();
                float f2 = i11;
                if (f < 0.0f) {
                    t();
                    z2 = true;
                    EdgeEffectCompat.b(this.O, (-f) / getWidth(), 1.0f - (y / getHeight()));
                } else {
                    z2 = true;
                    if (f > 0.0f) {
                        u();
                        EdgeEffectCompat.b(this.Q, f / getWidth(), y / getHeight());
                    } else {
                        z3 = false;
                        if (f2 >= 0.0f) {
                            v();
                            EdgeEffectCompat.b(this.P, (-f2) / getHeight(), x / getWidth());
                        } else {
                            if (f2 > 0.0f) {
                                s();
                                EdgeEffectCompat.b(this.R, f2 / getHeight(), 1.0f - (x / getWidth()));
                            }
                            if (!z3 || f != 0.0f || f2 != 0.0f) {
                                Field field = ViewCompat.a;
                                postInvalidateOnAnimation();
                            }
                        }
                        z3 = z2;
                        if (!z3) {
                        }
                        Field field2 = ViewCompat.a;
                        postInvalidateOnAnimation();
                    }
                }
                z3 = z2;
                if (f2 >= 0.0f) {
                }
                z3 = z2;
                if (!z3) {
                }
                Field field22 = ViewCompat.a;
                postInvalidateOnAnimation();
            }
            i(i, i2);
        } else {
            z2 = true;
        }
        if (i4 != 0 || i5 != 0) {
            r(i4, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        if (!z && i4 == 0 && i5 == 0) {
            return false;
        }
        return z2;
    }

    public final void X(int i, int i2, int[] iArr) {
        int i3;
        int i4;
        ViewHolder viewHolder;
        a0();
        N();
        int i5 = TraceCompat.a;
        Trace.beginSection("RV Scroll");
        State state = this.m0;
        x(state);
        Recycler recycler = this.l;
        if (i != 0) {
            i3 = this.v.j0(i, recycler, state);
        } else {
            i3 = 0;
        }
        if (i2 != 0) {
            i4 = this.v.l0(i2, recycler, state);
        } else {
            i4 = 0;
        }
        Trace.endSection();
        ChildHelper childHelper = this.o;
        int e = childHelper.e();
        for (int i6 = 0; i6 < e; i6++) {
            View d = childHelper.d(i6);
            ViewHolder F = F(d);
            if (F != null && (viewHolder = F.i) != null) {
                View view = viewHolder.a;
                int left = d.getLeft();
                int top = d.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        O(true);
        b0(false);
        if (iArr != null) {
            iArr[0] = i3;
            iArr[1] = i4;
        }
    }

    public final boolean Y(EdgeEffect edgeEffect, int i, int i2) {
        if (i <= 0) {
            float a = EdgeEffectCompat.a(edgeEffect) * i2;
            float abs = Math.abs(-i) * 0.35f;
            float f = this.j * 0.015f;
            double log = Math.log(abs / f);
            double d = G0;
            if (((float) (Math.exp((d / (d - 1.0d)) * log) * f)) < a) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final void Z(int i, int i2, boolean z) {
        LayoutManager layoutManager = this.v;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (!this.F) {
            int i3 = 0;
            if (!layoutManager.d()) {
                i = 0;
            }
            if (!this.v.e()) {
                i2 = 0;
            }
            if (i == 0 && i2 == 0) {
                return;
            }
            if (z) {
                if (i != 0) {
                    i3 = 1;
                }
                if (i2 != 0) {
                    i3 |= 2;
                }
                getScrollingChildHelper().g(i3, 1);
            }
            this.j0.c(i, i2, Integer.MIN_VALUE, null);
        }
    }

    public final void a0() {
        int i = this.D + 1;
        this.D = i;
        if (i == 1 && !this.F) {
            this.E = false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null) {
            layoutManager.getClass();
        }
        super.addFocusables(arrayList, i, i2);
    }

    public final void b0(boolean z) {
        if (this.D < 1) {
            this.D = 1;
        }
        if (!z && !this.F) {
            this.E = false;
        }
        if (this.D == 1) {
            if (z && this.E && !this.F && this.v != null && this.u != null) {
                m();
            }
            if (!this.F) {
                this.E = false;
            }
        }
        this.D--;
    }

    public final void c0(int i) {
        getScrollingChildHelper().h(i);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof LayoutParams) && this.v.f((LayoutParams) layoutParams)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeHorizontalScrollExtent() {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null && layoutManager.d()) {
            return this.v.j(this.m0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeHorizontalScrollOffset() {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null && layoutManager.d()) {
            return this.v.k(this.m0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeHorizontalScrollRange() {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null && layoutManager.d()) {
            return this.v.l(this.m0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeVerticalScrollExtent() {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null && layoutManager.e()) {
            return this.v.m(this.m0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeVerticalScrollOffset() {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null && layoutManager.e()) {
            return this.v.n(this.m0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public final int computeVerticalScrollRange() {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null && layoutManager.e()) {
            return this.v.o(this.m0);
        }
        return 0;
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().a(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().d(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        int i2;
        super.draw(canvas);
        ArrayList arrayList = this.x;
        int size = arrayList.size();
        boolean z4 = false;
        for (int i3 = 0; i3 < size; i3++) {
            ((ItemDecoration) arrayList.get(i3)).b(canvas);
        }
        EdgeEffect edgeEffect = this.O;
        boolean z5 = true;
        if (edgeEffect != null && !edgeEffect.isFinished()) {
            int save = canvas.save();
            if (this.q) {
                i2 = getPaddingBottom();
            } else {
                i2 = 0;
            }
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + i2, 0.0f);
            EdgeEffect edgeEffect2 = this.O;
            if (edgeEffect2 != null && edgeEffect2.draw(canvas)) {
                z = true;
            } else {
                z = false;
            }
            canvas.restoreToCount(save);
        } else {
            z = false;
        }
        EdgeEffect edgeEffect3 = this.P;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.q) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.P;
            if (edgeEffect4 != null && edgeEffect4.draw(canvas)) {
                z3 = true;
            } else {
                z3 = false;
            }
            z |= z3;
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.Q;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            if (this.q) {
                i = getPaddingTop();
            } else {
                i = 0;
            }
            canvas.rotate(90.0f);
            canvas.translate(i, -width);
            EdgeEffect edgeEffect6 = this.Q;
            if (edgeEffect6 != null && edgeEffect6.draw(canvas)) {
                z2 = true;
            } else {
                z2 = false;
            }
            z |= z2;
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.R;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.q) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.R;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z |= z4;
            canvas.restoreToCount(save4);
        }
        if (z || this.S == null || arrayList.size() <= 0 || !this.S.f()) {
            z5 = z;
        }
        if (z5) {
            Field field = ViewCompat.a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public final void e(ViewHolder viewHolder) {
        boolean z;
        View view = viewHolder.a;
        if (view.getParent() == this) {
            z = true;
        } else {
            z = false;
        }
        this.l.l(F(view));
        boolean j = viewHolder.j();
        ChildHelper childHelper = this.o;
        if (j) {
            childHelper.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            childHelper.a(view, -1, true);
            return;
        }
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild >= 0) {
            childHelper.b.h(indexOfChild);
            childHelper.i(view);
        } else {
            d.e(view, "view is not a child, cannot hide ");
        }
    }

    public final void f(String str) {
        if (J()) {
            if (str == null) {
                u2.l("Cannot call this method while RecyclerView is computing a layout or scrolling".concat(w()));
                return;
            } else {
                u2.l(str);
                return;
            }
        }
        if (this.M > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(w()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x018e, code lost:
    
        if (r5 < 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0196, code lost:
    
        if ((r5 * r6) <= 0) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x019e, code lost:
    
        if ((r5 * r6) >= 0) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0168, code lost:
    
        if (r7 > 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0188, code lost:
    
        if (r5 > 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x018b, code lost:
    
        if (r7 < 0) goto L136;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01a2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00df  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View focusSearch(View view, int i) {
        boolean z;
        View view2;
        int i2;
        int i3;
        char c;
        boolean z2;
        RecyclerView recyclerView;
        boolean z3;
        boolean z4;
        int i4;
        int i5;
        this.v.getClass();
        boolean z5 = true;
        if (this.u != null && this.v != null && !J() && !this.F) {
            z = true;
        } else {
            z = false;
        }
        FocusFinder focusFinder = FocusFinder.getInstance();
        State state = this.m0;
        Recycler recycler = this.l;
        if (z && (i == 2 || i == 1)) {
            if (this.v.e()) {
                if (i == 2) {
                    i5 = 130;
                } else {
                    i5 = 33;
                }
                if (focusFinder.findNextFocus(this, view, i5) == null) {
                    z2 = true;
                    if (!z2 && this.v.d()) {
                        recyclerView = this.v.b;
                        Field field = ViewCompat.a;
                        if (recyclerView.getLayoutDirection() != 1) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (i != 2) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (!(z3 ^ z4)) {
                            i4 = 66;
                        } else {
                            i4 = 17;
                        }
                        if (focusFinder.findNextFocus(this, view, i4) != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    }
                    if (z2) {
                        k();
                        if (y(view) != null) {
                            a0();
                            this.v.O(view, i, recycler, state);
                            b0(false);
                        }
                        return null;
                    }
                    view2 = focusFinder.findNextFocus(this, view, i);
                    if (view2 == null) {
                    }
                    if (view2 != null) {
                        if (y(view2) != null) {
                        }
                        if (z5) {
                        }
                    }
                    z5 = false;
                    if (z5) {
                    }
                }
            }
            z2 = false;
            if (!z2) {
                recyclerView = this.v.b;
                Field field2 = ViewCompat.a;
                if (recyclerView.getLayoutDirection() != 1) {
                }
                if (i != 2) {
                }
                if (!(z3 ^ z4)) {
                }
                if (focusFinder.findNextFocus(this, view, i4) != null) {
                }
            }
            if (z2) {
            }
            view2 = focusFinder.findNextFocus(this, view, i);
            if (view2 == null) {
            }
            if (view2 != null) {
            }
            z5 = false;
            if (z5) {
            }
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i);
            if (findNextFocus == null && z) {
                k();
                if (y(view) != null) {
                    a0();
                    view2 = this.v.O(view, i, recycler, state);
                    b0(false);
                }
                return null;
            }
            view2 = findNextFocus;
            if (view2 == null && !view2.hasFocusable()) {
                if (getFocusedChild() == null) {
                    return super.focusSearch(view, i);
                }
                U(view2, null);
                return view;
            }
            if (view2 != null && view2 != this && view2 != view) {
                if (y(view2) != null) {
                    z5 = false;
                } else if (view != null && y(view) != null) {
                    int width = view.getWidth();
                    int height = view.getHeight();
                    Rect rect = this.r;
                    rect.set(0, 0, width, height);
                    int width2 = view2.getWidth();
                    int height2 = view2.getHeight();
                    Rect rect2 = this.s;
                    rect2.set(0, 0, width2, height2);
                    offsetDescendantRectToMyCoords(view, rect);
                    offsetDescendantRectToMyCoords(view2, rect2);
                    RecyclerView recyclerView2 = this.v.b;
                    Field field3 = ViewCompat.a;
                    if (recyclerView2.getLayoutDirection() == 1) {
                        i2 = -1;
                    } else {
                        i2 = 1;
                    }
                    int i6 = rect.left;
                    int i7 = rect2.left;
                    if ((i6 < i7 || rect.right <= i7) && rect.right < rect2.right) {
                        i3 = 1;
                    } else {
                        int i8 = rect.right;
                        int i9 = rect2.right;
                        if ((i8 > i9 || i6 >= i9) && i6 > i7) {
                            i3 = -1;
                        } else {
                            i3 = 0;
                        }
                    }
                    int i10 = rect.top;
                    int i11 = rect2.top;
                    if ((i10 < i11 || rect.bottom <= i11) && rect.bottom < rect2.bottom) {
                        c = 1;
                    } else {
                        int i12 = rect.bottom;
                        int i13 = rect2.bottom;
                        if ((i12 > i13 || i10 >= i13) && i10 > i11) {
                            c = 65535;
                        } else {
                            c = 0;
                        }
                    }
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 17) {
                                if (i != 33) {
                                    if (i != 66) {
                                        if (i != 130) {
                                            throw new IllegalArgumentException("Invalid direction: " + i + w());
                                        }
                                    }
                                }
                            }
                        } else if (c <= 0) {
                            if (c == 0) {
                            }
                        }
                    } else if (c >= 0) {
                        if (c == 0) {
                        }
                    }
                }
                if (z5) {
                    return view2;
                }
                return super.focusSearch(view, i);
            }
            z5 = false;
            if (z5) {
            }
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null) {
            return layoutManager.r();
        }
        u2.l("RecyclerView has no LayoutManager".concat(w()));
        return null;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null) {
            return layoutManager.s(getContext(), attributeSet);
        }
        u2.l("RecyclerView has no LayoutManager".concat(w()));
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public Adapter getAdapter() {
        return this.u;
    }

    @Override // android.view.View
    public int getBaseline() {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null) {
            layoutManager.getClass();
            return -1;
        }
        return super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.q;
    }

    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return this.t0;
    }

    public EdgeEffectFactory getEdgeEffectFactory() {
        return this.N;
    }

    public ItemAnimator getItemAnimator() {
        return this.S;
    }

    public int getItemDecorationCount() {
        return this.x.size();
    }

    public LayoutManager getLayoutManager() {
        return this.v;
    }

    public int getMaxFlingVelocity() {
        return this.f0;
    }

    public int getMinFlingVelocity() {
        return this.e0;
    }

    public long getNanoTime() {
        if (I0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public OnFlingListener getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.i0;
    }

    public RecycledViewPool getRecycledViewPool() {
        return this.l.c();
    }

    public int getScrollState() {
        return this.T;
    }

    public final void h() {
        ChildHelper childHelper = this.o;
        int h = childHelper.h();
        for (int i = 0; i < h; i++) {
            ViewHolder G = G(childHelper.g(i));
            if (!G.o()) {
                G.d = -1;
                G.g = -1;
            }
        }
        Recycler recycler = this.l;
        ArrayList arrayList = recycler.a;
        ArrayList arrayList2 = recycler.c;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            ViewHolder viewHolder = (ViewHolder) arrayList2.get(i2);
            viewHolder.d = -1;
            viewHolder.g = -1;
        }
        int size2 = arrayList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ViewHolder viewHolder2 = (ViewHolder) arrayList.get(i3);
            viewHolder2.d = -1;
            viewHolder2.g = -1;
        }
        ArrayList arrayList3 = recycler.b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                ViewHolder viewHolder3 = (ViewHolder) recycler.b.get(i4);
                viewHolder3.d = -1;
                viewHolder3.g = -1;
            }
        }
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public final void i(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.O;
        if (edgeEffect != null && !edgeEffect.isFinished() && i > 0) {
            this.O.onRelease();
            z = this.O.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.Q;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.Q.onRelease();
            z |= this.Q.isFinished();
        }
        EdgeEffect edgeEffect3 = this.P;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.P.onRelease();
            z |= this.P.isFinished();
        }
        EdgeEffect edgeEffect4 = this.R;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.R.onRelease();
            z |= this.R.isFinished();
        }
        if (z) {
            Field field = ViewCompat.a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.A;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.F;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().d;
    }

    public final void k() {
        if (this.C && !this.J) {
            AdapterHelper adapterHelper = this.n;
            if (adapterHelper.f()) {
                adapterHelper.getClass();
                if (adapterHelper.f()) {
                    int i = TraceCompat.a;
                    Trace.beginSection("RV FullInvalidate");
                    m();
                    Trace.endSection();
                    return;
                }
                return;
            }
            return;
        }
        int i2 = TraceCompat.a;
        Trace.beginSection("RV FullInvalidate");
        m();
        Trace.endSection();
    }

    public final void l(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        Field field = ViewCompat.a;
        setMeasuredDimension(LayoutManager.g(i, paddingRight, getMinimumWidth()), LayoutManager.g(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x0338, code lost:
    
        if (r7.c.contains(getFocusedChild()) == false) goto L227;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03d7  */
    /* JADX WARN: Type inference failed for: r14v6, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$ItemAnimator$ItemHolderInfo] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m() {
        Object[] objArr;
        boolean z;
        boolean z2;
        ViewHolder viewHolder;
        View findViewById;
        boolean z3;
        SimpleArrayMap simpleArrayMap;
        ItemAnimator.ItemHolderInfo itemHolderInfo;
        boolean g;
        boolean z4;
        boolean z5;
        boolean z6;
        if (this.u == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.v == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        State state = this.m0;
        boolean z7 = false;
        state.i = false;
        boolean z8 = true;
        if (this.B0 && (this.C0 != getWidth() || this.D0 != getHeight())) {
            objArr = true;
        } else {
            objArr = false;
        }
        this.C0 = 0;
        this.D0 = 0;
        this.B0 = false;
        if (state.d == 1) {
            n();
            this.v.m0(this);
            o();
        } else {
            AdapterHelper adapterHelper = this.n;
            if ((adapterHelper.c.isEmpty() || adapterHelper.b.isEmpty()) && objArr == false && this.v.n == getWidth() && this.v.o == getHeight()) {
                this.v.m0(this);
            } else {
                this.v.m0(this);
                o();
            }
        }
        state.a(4);
        a0();
        N();
        state.d = 1;
        boolean z9 = state.j;
        ChildHelper childHelper = this.o;
        Recycler recycler = this.l;
        ViewInfoStore viewInfoStore = this.p;
        if (z9) {
            int e = childHelper.e() - 1;
            while (e >= 0) {
                ViewHolder G = G(childHelper.d(e));
                if (G.o()) {
                    z4 = z8;
                } else {
                    long E = E(G);
                    this.S.getClass();
                    ?? obj = new Object();
                    obj.a(G);
                    LongSparseArray longSparseArray = viewInfoStore.b;
                    z4 = z8;
                    SimpleArrayMap simpleArrayMap2 = viewInfoStore.a;
                    ViewHolder viewHolder2 = (ViewHolder) longSparseArray.b(E);
                    if (viewHolder2 != null && !viewHolder2.o()) {
                        ViewInfoStore.InfoRecord infoRecord = (ViewInfoStore.InfoRecord) simpleArrayMap2.get(viewHolder2);
                        if (infoRecord != null && (infoRecord.a & 1) != 0) {
                            z5 = z4;
                        } else {
                            z5 = z7;
                        }
                        ViewInfoStore.InfoRecord infoRecord2 = (ViewInfoStore.InfoRecord) simpleArrayMap2.get(G);
                        if (infoRecord2 != null && (infoRecord2.a & 1) != 0) {
                            z6 = z4;
                        } else {
                            z6 = z7;
                        }
                        if (z5 && viewHolder2 == G) {
                            viewInfoStore.a(G, obj);
                        } else {
                            ItemAnimator.ItemHolderInfo b = viewInfoStore.b(viewHolder2, 4);
                            viewInfoStore.a(G, obj);
                            ItemAnimator.ItemHolderInfo b2 = viewInfoStore.b(G, 8);
                            if (b == null) {
                                int e2 = childHelper.e();
                                for (int i = 0; i < e2; i++) {
                                    ViewHolder G2 = G(childHelper.d(i));
                                    if (G2 != G && E(G2) == E) {
                                        Adapter adapter = this.u;
                                        if (adapter != null && adapter.b) {
                                            StringBuilder sb = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                                            sb.append(G2);
                                            sb.append(" \n View Holder 2:");
                                            sb.append(G);
                                            d.h(sb, w());
                                            return;
                                        }
                                        StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                                        sb2.append(G2);
                                        sb2.append(" \n View Holder 2:");
                                        sb2.append(G);
                                        d.h(sb2, w());
                                        return;
                                    }
                                }
                                Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + viewHolder2 + " cannot be found but it is necessary for " + G + w());
                            } else {
                                viewHolder2.n(false);
                                if (z5) {
                                    e(viewHolder2);
                                }
                                if (viewHolder2 != G) {
                                    if (z6) {
                                        e(G);
                                    }
                                    viewHolder2.h = G;
                                    e(viewHolder2);
                                    recycler.l(viewHolder2);
                                    G.n(false);
                                    G.i = viewHolder2;
                                }
                                if (this.S.a(viewHolder2, G, b, b2)) {
                                    Q();
                                }
                            }
                        }
                    } else {
                        viewInfoStore.a(G, obj);
                    }
                }
                e--;
                z8 = z4;
                z7 = false;
            }
            z = z8;
            SimpleArrayMap simpleArrayMap3 = viewInfoStore.a;
            int i2 = simpleArrayMap3.l - 1;
            while (i2 >= 0) {
                ViewHolder viewHolder3 = (ViewHolder) simpleArrayMap3.e(i2);
                ViewInfoStore.InfoRecord infoRecord3 = (ViewInfoStore.InfoRecord) simpleArrayMap3.f(i2);
                int i3 = infoRecord3.a;
                int i4 = i3 & 3;
                AnonymousClass4 anonymousClass4 = this.E0;
                if (i4 == 3) {
                    RecyclerView recyclerView = RecyclerView.this;
                    recyclerView.v.f0(viewHolder3.a, recyclerView.l);
                } else if ((i3 & 1) != 0) {
                    ItemAnimator.ItemHolderInfo itemHolderInfo2 = infoRecord3.b;
                    if (itemHolderInfo2 == null) {
                        RecyclerView recyclerView2 = RecyclerView.this;
                        recyclerView2.v.f0(viewHolder3.a, recyclerView2.l);
                    } else {
                        anonymousClass4.b(viewHolder3, itemHolderInfo2, infoRecord3.c);
                    }
                } else if ((i3 & 14) == 14) {
                    anonymousClass4.a(viewHolder3, infoRecord3.b, infoRecord3.c);
                } else if ((i3 & 12) == 12) {
                    ItemAnimator.ItemHolderInfo itemHolderInfo3 = infoRecord3.b;
                    ItemAnimator.ItemHolderInfo itemHolderInfo4 = infoRecord3.c;
                    anonymousClass4.getClass();
                    viewHolder3.n(false);
                    RecyclerView recyclerView3 = RecyclerView.this;
                    boolean z10 = recyclerView3.J;
                    ItemAnimator itemAnimator = recyclerView3.S;
                    if (z10) {
                        if (itemAnimator.a(viewHolder3, viewHolder3, itemHolderInfo3, itemHolderInfo4)) {
                            recyclerView3.Q();
                        }
                    } else {
                        SimpleItemAnimator simpleItemAnimator = (SimpleItemAnimator) itemAnimator;
                        simpleItemAnimator.getClass();
                        int i5 = itemHolderInfo3.a;
                        int i6 = itemHolderInfo4.a;
                        if (i5 == i6) {
                            simpleArrayMap = simpleArrayMap3;
                            if (itemHolderInfo3.b == itemHolderInfo4.b) {
                                simpleItemAnimator.c(viewHolder3);
                                g = false;
                                if (g) {
                                    recyclerView3.Q();
                                }
                                itemHolderInfo = null;
                                infoRecord3.a = 0;
                                infoRecord3.b = itemHolderInfo;
                                infoRecord3.c = itemHolderInfo;
                                ViewInfoStore.InfoRecord.d.b(infoRecord3);
                                i2--;
                                simpleArrayMap3 = simpleArrayMap;
                            }
                        } else {
                            simpleArrayMap = simpleArrayMap3;
                        }
                        g = simpleItemAnimator.g(viewHolder3, i5, itemHolderInfo3.b, i6, itemHolderInfo4.b);
                        if (g) {
                        }
                        itemHolderInfo = null;
                        infoRecord3.a = 0;
                        infoRecord3.b = itemHolderInfo;
                        infoRecord3.c = itemHolderInfo;
                        ViewInfoStore.InfoRecord.d.b(infoRecord3);
                        i2--;
                        simpleArrayMap3 = simpleArrayMap;
                    }
                } else {
                    simpleArrayMap = simpleArrayMap3;
                    if ((i3 & 4) != 0) {
                        itemHolderInfo = null;
                        anonymousClass4.b(viewHolder3, infoRecord3.b, null);
                    } else {
                        itemHolderInfo = null;
                        if ((i3 & 8) != 0) {
                            anonymousClass4.a(viewHolder3, infoRecord3.b, infoRecord3.c);
                        }
                    }
                    infoRecord3.a = 0;
                    infoRecord3.b = itemHolderInfo;
                    infoRecord3.c = itemHolderInfo;
                    ViewInfoStore.InfoRecord.d.b(infoRecord3);
                    i2--;
                    simpleArrayMap3 = simpleArrayMap;
                }
                simpleArrayMap = simpleArrayMap3;
                itemHolderInfo = null;
                infoRecord3.a = 0;
                infoRecord3.b = itemHolderInfo;
                infoRecord3.c = itemHolderInfo;
                ViewInfoStore.InfoRecord.d.b(infoRecord3);
                i2--;
                simpleArrayMap3 = simpleArrayMap;
            }
        } else {
            z = true;
        }
        View view = null;
        this.v.e0(recycler);
        state.b = state.e;
        this.J = false;
        this.K = false;
        state.j = false;
        state.k = false;
        this.v.f = false;
        ArrayList arrayList = recycler.b;
        if (arrayList != null) {
            arrayList.clear();
        }
        LayoutManager layoutManager = this.v;
        if (layoutManager.k) {
            layoutManager.j = 0;
            layoutManager.k = false;
            recycler.m();
        }
        this.v.Z(state);
        boolean z11 = z;
        O(z11);
        b0(false);
        viewInfoStore.a.clear();
        viewInfoStore.b.a();
        int[] iArr = this.u0;
        int i7 = iArr[0];
        int i8 = iArr[z11 ? 1 : 0];
        A(iArr);
        if (iArr[0] == i7 && iArr[z11 ? 1 : 0] == i8) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z2) {
            r(0, 0);
        }
        if (this.i0 && this.u != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (!isFocused()) {
            }
            long j = state.m;
            if (j != -1 && (z3 = this.u.b) && z3) {
                int h = childHelper.h();
                viewHolder = null;
                int i9 = 0;
                while (true) {
                    if (i9 >= h) {
                        break;
                    }
                    ViewHolder G3 = G(childHelper.g(i9));
                    if (G3 != null && !G3.h() && G3.e == j) {
                        if (childHelper.c.contains(G3.a)) {
                            viewHolder = G3;
                        } else {
                            viewHolder = G3;
                            break;
                        }
                    }
                    i9++;
                }
            } else {
                viewHolder = null;
            }
            if (viewHolder != null) {
                View view2 = viewHolder.a;
                if (!childHelper.c.contains(view2) && view2.hasFocusable()) {
                    view = view2;
                    if (view != null) {
                        int i10 = state.n;
                        if (i10 != -1 && (findViewById = view.findViewById(i10)) != null && findViewById.isFocusable()) {
                            view = findViewById;
                        }
                        view.requestFocus();
                    }
                }
            }
            if (childHelper.e() > 0) {
                int i11 = state.l;
                if (i11 == -1) {
                    i11 = 0;
                }
                int b3 = state.b();
                for (int i12 = i11; i12 < b3; i12++) {
                    ViewHolder C = C(i12);
                    if (C == null) {
                        break;
                    }
                    View view3 = C.a;
                    if (view3.hasFocusable()) {
                        view = view3;
                        break;
                    }
                }
                int min = Math.min(b3, i11) - 1;
                while (true) {
                    if (min < 0) {
                        break;
                    }
                    ViewHolder C2 = C(min);
                    if (C2 == null) {
                        break;
                    }
                    View view4 = C2.a;
                    if (view4.hasFocusable()) {
                        view = view4;
                        break;
                    }
                    min--;
                }
            }
            if (view != null) {
            }
        }
        state.m = -1L;
        state.l = -1;
        state.n = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:355:0x03d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x03b9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0229 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0188  */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$ItemAnimator$ItemHolderInfo] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object, androidx.recyclerview.widget.RecyclerView$ItemAnimator$ItemHolderInfo] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n() {
        boolean z;
        LongSparseArray longSparseArray;
        SimpleArrayMap simpleArrayMap;
        boolean z2;
        boolean z3;
        boolean z4;
        View view;
        View y;
        ViewHolder F;
        int D;
        View view2;
        boolean z5;
        boolean z6;
        LongSparseArray longSparseArray2;
        SimpleArrayMap simpleArrayMap2;
        boolean z7;
        boolean z8;
        char c;
        LongSparseArray longSparseArray3;
        SimpleArrayMap simpleArrayMap3;
        int i;
        boolean z9;
        boolean z10;
        boolean z11;
        AdapterHelper.UpdateOp g;
        AdapterHelper.UpdateOp g2;
        int i2;
        int i3;
        AdapterHelper.UpdateOp g3;
        State state = this.m0;
        int i4 = 1;
        state.a(1);
        x(state);
        int i5 = 0;
        state.i = false;
        a0();
        ViewInfoStore viewInfoStore = this.p;
        SimpleArrayMap simpleArrayMap4 = viewInfoStore.a;
        SimpleArrayMap simpleArrayMap5 = viewInfoStore.a;
        simpleArrayMap4.clear();
        LongSparseArray longSparseArray4 = viewInfoStore.b;
        longSparseArray4.a();
        N();
        boolean z12 = this.J;
        AdapterHelper adapterHelper = this.n;
        if (z12) {
            adapterHelper.i(adapterHelper.b);
            adapterHelper.i(adapterHelper.c);
            if (this.K) {
                this.v.U();
            }
        }
        if (this.S != null && this.v.v0()) {
            z = true;
        } else {
            z = false;
        }
        int i6 = -1;
        if (z) {
            Pools$SimplePool pools$SimplePool = adapterHelper.a;
            AnonymousClass6 anonymousClass6 = adapterHelper.d;
            OpReorderer opReorderer = adapterHelper.e;
            ArrayList arrayList = adapterHelper.b;
            opReorderer.getClass();
            while (true) {
                int size = arrayList.size() - i4;
                int i7 = i5;
                while (true) {
                    if (size >= 0) {
                        if (((AdapterHelper.UpdateOp) arrayList.get(size)).a == 8) {
                            if (i7 != 0) {
                                break;
                            }
                        } else {
                            i7 = i4;
                        }
                        size--;
                    } else {
                        size = i6;
                        break;
                    }
                }
                if (size == i6) {
                    break;
                }
                int i8 = size + 1;
                AdapterHelper adapterHelper2 = opReorderer.a;
                Pools$SimplePool pools$SimplePool2 = adapterHelper2.a;
                AdapterHelper.UpdateOp updateOp = (AdapterHelper.UpdateOp) arrayList.get(size);
                AdapterHelper.UpdateOp updateOp2 = (AdapterHelper.UpdateOp) arrayList.get(i8);
                OpReorderer opReorderer2 = opReorderer;
                int i9 = updateOp2.a;
                if (i9 != i4) {
                    if (i9 != 2) {
                        if (i9 != 4) {
                            longSparseArray3 = longSparseArray4;
                            simpleArrayMap3 = simpleArrayMap5;
                        } else {
                            int i10 = updateOp.c;
                            int i11 = updateOp2.b;
                            if (i10 < i11) {
                                updateOp2.b = i11 - 1;
                            } else {
                                int i12 = updateOp2.c;
                                if (i10 < i11 + i12) {
                                    updateOp2.c = i12 - 1;
                                    longSparseArray3 = longSparseArray4;
                                    g2 = adapterHelper2.g(4, updateOp.b, 1);
                                    i2 = updateOp.b;
                                    i3 = updateOp2.b;
                                    if (i2 > i3) {
                                        updateOp2.b = i3 + 1;
                                    } else {
                                        int i13 = i3 + updateOp2.c;
                                        if (i2 < i13) {
                                            int i14 = i13 - i2;
                                            simpleArrayMap3 = simpleArrayMap5;
                                            g3 = adapterHelper2.g(4, i2 + 1, i14);
                                            updateOp2.c -= i14;
                                            arrayList.set(i8, updateOp);
                                            if (updateOp2.c > 0) {
                                                arrayList.set(size, updateOp2);
                                            } else {
                                                arrayList.remove(size);
                                                pools$SimplePool2.b(updateOp2);
                                            }
                                            if (g2 != null) {
                                                arrayList.add(size, g2);
                                            }
                                            if (g3 != null) {
                                                arrayList.add(size, g3);
                                            }
                                        }
                                    }
                                    simpleArrayMap3 = simpleArrayMap5;
                                    g3 = null;
                                    arrayList.set(i8, updateOp);
                                    if (updateOp2.c > 0) {
                                    }
                                    if (g2 != null) {
                                    }
                                    if (g3 != null) {
                                    }
                                }
                            }
                            longSparseArray3 = longSparseArray4;
                            g2 = null;
                            i2 = updateOp.b;
                            i3 = updateOp2.b;
                            if (i2 > i3) {
                            }
                            simpleArrayMap3 = simpleArrayMap5;
                            g3 = null;
                            arrayList.set(i8, updateOp);
                            if (updateOp2.c > 0) {
                            }
                            if (g2 != null) {
                            }
                            if (g3 != null) {
                            }
                        }
                    } else {
                        longSparseArray3 = longSparseArray4;
                        simpleArrayMap3 = simpleArrayMap5;
                        int i15 = updateOp.b;
                        int i16 = updateOp.c;
                        int i17 = updateOp2.b;
                        if (i15 < i16) {
                            if (i17 == i15 && updateOp2.c == i16 - i15) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            z10 = false;
                        } else {
                            if (i17 == i16 + 1 && updateOp2.c == i15 - i16) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            z10 = true;
                        }
                        if (i16 < i17) {
                            updateOp2.b = i17 - 1;
                            z11 = z9;
                        } else {
                            z11 = z9;
                            int i18 = updateOp2.c;
                            if (i16 < i17 + i18) {
                                updateOp2.c = i18 - 1;
                                updateOp.a = 2;
                                updateOp.c = 1;
                                if (updateOp2.c == 0) {
                                    arrayList.remove(i8);
                                    pools$SimplePool2.b(updateOp2);
                                }
                            }
                        }
                        int i19 = updateOp.b;
                        int i20 = updateOp2.b;
                        if (i19 <= i20) {
                            updateOp2.b = i20 + 1;
                        } else {
                            int i21 = i20 + updateOp2.c;
                            if (i19 < i21) {
                                g = adapterHelper2.g(2, i19 + 1, i21 - i19);
                                updateOp2.c = updateOp.b - updateOp2.b;
                                if (!z11) {
                                    arrayList.set(size, updateOp2);
                                    arrayList.remove(i8);
                                    pools$SimplePool2.b(updateOp);
                                } else {
                                    if (z10) {
                                        if (g != null) {
                                            int i22 = updateOp.b;
                                            if (i22 > g.b) {
                                                updateOp.b = i22 - g.c;
                                            }
                                            int i23 = updateOp.c;
                                            if (i23 > g.b) {
                                                updateOp.c = i23 - g.c;
                                            }
                                        }
                                        int i24 = updateOp.b;
                                        if (i24 > updateOp2.b) {
                                            updateOp.b = i24 - updateOp2.c;
                                        }
                                        int i25 = updateOp.c;
                                        if (i25 > updateOp2.b) {
                                            updateOp.c = i25 - updateOp2.c;
                                        }
                                    } else {
                                        if (g != null) {
                                            int i26 = updateOp.b;
                                            if (i26 >= g.b) {
                                                updateOp.b = i26 - g.c;
                                            }
                                            int i27 = updateOp.c;
                                            if (i27 >= g.b) {
                                                updateOp.c = i27 - g.c;
                                            }
                                        }
                                        int i28 = updateOp.b;
                                        if (i28 >= updateOp2.b) {
                                            updateOp.b = i28 - updateOp2.c;
                                        }
                                        int i29 = updateOp.c;
                                        if (i29 >= updateOp2.b) {
                                            updateOp.c = i29 - updateOp2.c;
                                        }
                                    }
                                    arrayList.set(size, updateOp2);
                                    if (updateOp.b != updateOp.c) {
                                        arrayList.set(i8, updateOp);
                                    } else {
                                        arrayList.remove(i8);
                                    }
                                    if (g != null) {
                                        arrayList.add(size, g);
                                    }
                                }
                            }
                        }
                        g = null;
                        if (!z11) {
                        }
                    }
                } else {
                    longSparseArray3 = longSparseArray4;
                    simpleArrayMap3 = simpleArrayMap5;
                    int i30 = updateOp.c;
                    int i31 = updateOp2.b;
                    if (i30 < i31) {
                        i = -1;
                    } else {
                        i = 0;
                    }
                    int i32 = updateOp.b;
                    if (i32 < i31) {
                        i++;
                    }
                    if (i31 <= i32) {
                        updateOp.b = i32 + updateOp2.c;
                    }
                    int i33 = updateOp2.b;
                    if (i33 <= i30) {
                        updateOp.c = i30 + updateOp2.c;
                    }
                    updateOp2.b = i33 + i;
                    arrayList.set(size, updateOp2);
                    arrayList.set(i8, updateOp);
                }
                opReorderer = opReorderer2;
                longSparseArray4 = longSparseArray3;
                simpleArrayMap5 = simpleArrayMap3;
                i4 = 1;
                i5 = 0;
                i6 = -1;
            }
            longSparseArray = longSparseArray4;
            simpleArrayMap = simpleArrayMap5;
            int size2 = arrayList.size();
            for (int i34 = 0; i34 < size2; i34++) {
                AdapterHelper.UpdateOp updateOp3 = (AdapterHelper.UpdateOp) arrayList.get(i34);
                int i35 = updateOp3.a;
                if (i35 != 1) {
                    if (i35 != 2) {
                        if (i35 != 4) {
                            if (i35 == 8) {
                                adapterHelper.h(updateOp3);
                            }
                        } else {
                            int i36 = updateOp3.b;
                            int i37 = updateOp3.c + i36;
                            int i38 = i36;
                            char c2 = 65535;
                            int i39 = 0;
                            while (i36 < i37) {
                                if (anonymousClass6.b(i36) == null && !adapterHelper.a(i36)) {
                                    if (c2 == 1) {
                                        adapterHelper.h(adapterHelper.g(4, i38, i39));
                                        i38 = i36;
                                        i39 = 0;
                                    }
                                    c2 = 0;
                                } else {
                                    if (c2 == 0) {
                                        adapterHelper.c(adapterHelper.g(4, i38, i39));
                                        i38 = i36;
                                        i39 = 0;
                                    }
                                    c2 = 1;
                                }
                                i39++;
                                i36++;
                            }
                            if (i39 != updateOp3.c) {
                                pools$SimplePool.b(updateOp3);
                                updateOp3 = adapterHelper.g(4, i38, i39);
                            }
                            if (c2 == 0) {
                                adapterHelper.c(updateOp3);
                            } else {
                                adapterHelper.h(updateOp3);
                            }
                        }
                    } else {
                        int i40 = updateOp3.b;
                        int i41 = updateOp3.c + i40;
                        int i42 = i40;
                        char c3 = 65535;
                        int i43 = 0;
                        while (i42 < i41) {
                            if (anonymousClass6.b(i42) == null && !adapterHelper.a(i42)) {
                                if (c3 == 1) {
                                    adapterHelper.h(adapterHelper.g(2, i40, i43));
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                c = 0;
                            } else {
                                if (c3 == 0) {
                                    adapterHelper.c(adapterHelper.g(2, i40, i43));
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                c = 1;
                            }
                            if (z8) {
                                i42 -= i43;
                                i41 -= i43;
                                i43 = 1;
                            } else {
                                i43++;
                            }
                            i42++;
                            c3 = c;
                        }
                        if (i43 != updateOp3.c) {
                            pools$SimplePool.b(updateOp3);
                            updateOp3 = adapterHelper.g(2, i40, i43);
                        }
                        if (c3 == 0) {
                            adapterHelper.c(updateOp3);
                        } else {
                            adapterHelper.h(updateOp3);
                        }
                    }
                } else {
                    adapterHelper.h(updateOp3);
                }
            }
            arrayList.clear();
        } else {
            longSparseArray = longSparseArray4;
            simpleArrayMap = simpleArrayMap5;
            adapterHelper.b();
        }
        if (!this.p0 && !this.q0) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (this.C && this.S != null && (((z7 = this.J) || z2 || this.v.f) && (!z7 || this.u.b))) {
            z3 = true;
        } else {
            z3 = false;
        }
        state.j = z3;
        if (z3 && z2 && !this.J && this.S != null && this.v.v0()) {
            z4 = true;
        } else {
            z4 = false;
        }
        state.k = z4;
        if (this.i0 && hasFocus() && this.u != null) {
            view = getFocusedChild();
        } else {
            view = null;
        }
        if (view == null || (y = y(view)) == null) {
            F = null;
        } else {
            F = F(y);
        }
        long j = -1;
        if (F == null) {
            state.m = -1L;
            state.l = -1;
            state.n = -1;
        } else {
            if (this.u.b) {
                j = F.e;
            }
            state.m = j;
            if (!this.J) {
                if (F.h()) {
                    D = F.d;
                } else {
                    RecyclerView recyclerView = F.r;
                    if (recyclerView != null) {
                        D = recyclerView.D(F);
                    }
                }
                state.l = D;
                view2 = F.a;
                int id = view2.getId();
                while (!view2.isFocused() && (view2 instanceof ViewGroup) && view2.hasFocus()) {
                    view2 = ((ViewGroup) view2).getFocusedChild();
                    if (view2.getId() == -1) {
                        id = view2.getId();
                    }
                }
                state.n = id;
            }
            D = -1;
            state.l = D;
            view2 = F.a;
            int id2 = view2.getId();
            while (!view2.isFocused()) {
                view2 = ((ViewGroup) view2).getFocusedChild();
                if (view2.getId() == -1) {
                }
            }
            state.n = id2;
        }
        if (state.j && this.q0) {
            z5 = true;
        } else {
            z5 = false;
        }
        state.h = z5;
        this.q0 = false;
        this.p0 = false;
        state.g = state.k;
        state.e = this.u.a();
        A(this.u0);
        boolean z13 = state.j;
        ChildHelper childHelper = this.o;
        if (z13) {
            int e = childHelper.e();
            int i44 = 0;
            while (i44 < e) {
                ViewHolder G = G(childHelper.d(i44));
                if (G.o() || (G.f() && !this.u.b)) {
                    longSparseArray2 = longSparseArray;
                    simpleArrayMap2 = simpleArrayMap;
                } else {
                    ItemAnimator itemAnimator = this.S;
                    ItemAnimator.b(G);
                    G.c();
                    itemAnimator.getClass();
                    ?? obj = new Object();
                    obj.a(G);
                    simpleArrayMap2 = simpleArrayMap;
                    ViewInfoStore.InfoRecord infoRecord = (ViewInfoStore.InfoRecord) simpleArrayMap2.get(G);
                    if (infoRecord == null) {
                        infoRecord = ViewInfoStore.InfoRecord.a();
                        simpleArrayMap2.put(G, infoRecord);
                    }
                    infoRecord.b = obj;
                    infoRecord.a |= 4;
                    if (state.h && G.k() && !G.h() && !G.o() && !G.f()) {
                        longSparseArray2 = longSparseArray;
                        longSparseArray2.d(E(G), G);
                    } else {
                        longSparseArray2 = longSparseArray;
                    }
                }
                i44++;
                longSparseArray = longSparseArray2;
                simpleArrayMap = simpleArrayMap2;
            }
        }
        SimpleArrayMap simpleArrayMap6 = simpleArrayMap;
        if (state.k) {
            int h = childHelper.h();
            for (int i45 = 0; i45 < h; i45++) {
                ViewHolder G2 = G(childHelper.g(i45));
                if (!G2.o() && G2.d == -1) {
                    G2.d = G2.c;
                }
            }
            boolean z14 = state.f;
            state.f = false;
            this.v.Y(this.l, state);
            state.f = z14;
            for (int i46 = 0; i46 < childHelper.e(); i46++) {
                ViewHolder G3 = G(childHelper.d(i46));
                if (!G3.o()) {
                    ViewInfoStore.InfoRecord infoRecord2 = (ViewInfoStore.InfoRecord) simpleArrayMap6.get(G3);
                    if (infoRecord2 != null && (infoRecord2.a & 4) != 0) {
                    }
                    ItemAnimator.b(G3);
                    if ((G3.j & 8192) != 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    ItemAnimator itemAnimator2 = this.S;
                    G3.c();
                    itemAnimator2.getClass();
                    ?? obj2 = new Object();
                    obj2.a(G3);
                    if (z6) {
                        R(G3, obj2);
                    } else {
                        ViewInfoStore.InfoRecord infoRecord3 = (ViewInfoStore.InfoRecord) simpleArrayMap6.get(G3);
                        if (infoRecord3 == null) {
                            infoRecord3 = ViewInfoStore.InfoRecord.a();
                            simpleArrayMap6.put(G3, infoRecord3);
                        }
                        infoRecord3.a |= 2;
                        infoRecord3.b = obj2;
                    }
                }
            }
            h();
        } else {
            h();
        }
        O(true);
        b0(false);
        state.d = 2;
    }

    public final void o() {
        boolean z;
        a0();
        N();
        State state = this.m0;
        state.a(6);
        this.n.b();
        state.e = this.u.a();
        state.c = 0;
        if (this.m != null) {
            Adapter adapter = this.u;
            int ordinal = adapter.c.ordinal();
            if (ordinal == 1 ? adapter.a() > 0 : ordinal != 2) {
                Parcelable parcelable = this.m.l;
                if (parcelable != null) {
                    this.v.a0(parcelable);
                }
                this.m = null;
            }
        }
        state.g = false;
        this.v.Y(this.l, state);
        state.f = false;
        if (state.j && this.S != null) {
            z = true;
        } else {
            z = false;
        }
        state.j = z;
        state.d = 4;
        O(true);
        b0(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
    
        if (r1 >= 30.0f) goto L22;
     */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, androidx.recyclerview.widget.GapWorker] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onAttachedToWindow() {
        boolean z;
        float f;
        super.onAttachedToWindow();
        this.L = 0;
        this.A = true;
        if (this.C && !isLayoutRequested()) {
            z = true;
        } else {
            z = false;
        }
        this.C = z;
        this.l.d();
        LayoutManager layoutManager = this.v;
        if (layoutManager != null) {
            layoutManager.g = true;
        }
        this.s0 = false;
        if (I0) {
            ThreadLocal threadLocal = GapWorker.n;
            GapWorker gapWorker = (GapWorker) threadLocal.get();
            this.k0 = gapWorker;
            if (gapWorker == null) {
                ?? obj = new Object();
                obj.j = new ArrayList();
                obj.m = new ArrayList();
                this.k0 = obj;
                Field field = ViewCompat.a;
                Display display = getDisplay();
                if (!isInEditMode() && display != null) {
                    f = display.getRefreshRate();
                }
                f = 60.0f;
                GapWorker gapWorker2 = this.k0;
                gapWorker2.l = 1.0E9f / f;
                threadLocal.set(gapWorker2);
            }
            this.k0.j.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        GapWorker gapWorker;
        LinearSmoothScroller linearSmoothScroller;
        super.onDetachedFromWindow();
        ItemAnimator itemAnimator = this.S;
        if (itemAnimator != null) {
            itemAnimator.e();
        }
        setScrollState(0);
        ViewFlinger viewFlinger = this.j0;
        RecyclerView.this.removeCallbacks(viewFlinger);
        viewFlinger.l.abortAnimation();
        LayoutManager layoutManager = this.v;
        if (layoutManager != null && (linearSmoothScroller = layoutManager.e) != null) {
            linearSmoothScroller.d();
        }
        this.A = false;
        LayoutManager layoutManager2 = this.v;
        if (layoutManager2 != null) {
            layoutManager2.g = false;
            layoutManager2.N(this);
        }
        this.z0.clear();
        removeCallbacks(this.A0);
        this.p.getClass();
        do {
        } while (ViewInfoStore.InfoRecord.d.a() != null);
        Recycler recycler = this.l;
        ArrayList arrayList = recycler.c;
        for (int i = 0; i < arrayList.size(); i++) {
            PoolingContainer.b(((ViewHolder) arrayList.get(i)).a);
        }
        recycler.e(RecyclerView.this.u, false);
        PoolingContainer.c(this);
        if (I0 && (gapWorker = this.k0) != null) {
            gapWorker.j.remove(this);
            this.k0 = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.x;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((ItemDecoration) arrayList.get(i)).getClass();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0082  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float f2;
        LayoutManager layoutManager;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        if (this.v != null && !this.F && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                if (this.v.e()) {
                    f = -motionEvent.getAxisValue(9);
                } else {
                    f = 0.0f;
                }
                if (this.v.d()) {
                    f2 = motionEvent.getAxisValue(10);
                    if (f == 0.0f || f2 != 0.0f) {
                        int i6 = (int) (f2 * this.g0);
                        int i7 = (int) (f * this.h0);
                        layoutManager = this.v;
                        if (layoutManager == null) {
                            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                            return false;
                        }
                        if (!this.F) {
                            int[] iArr = this.y0;
                            iArr[0] = 0;
                            iArr[1] = 0;
                            boolean d = layoutManager.d();
                            boolean e = this.v.e();
                            if (e) {
                                i = (d ? 1 : 0) | 2;
                            } else {
                                i = d ? 1 : 0;
                            }
                            float y = motionEvent.getY();
                            float x = motionEvent.getX();
                            int S = i6 - S(i6, y);
                            int T = i7 - T(i7, x);
                            getScrollingChildHelper().g(i, 1);
                            if (d) {
                                i2 = S;
                            } else {
                                i2 = 0;
                            }
                            if (e) {
                                i3 = T;
                            } else {
                                i3 = 0;
                            }
                            if (p(i2, i3, 1, this.y0, this.w0)) {
                                S -= iArr[0];
                                T -= iArr[1];
                            }
                            if (d) {
                                i4 = S;
                            } else {
                                i4 = 0;
                            }
                            if (e) {
                                i5 = T;
                            } else {
                                i5 = 0;
                            }
                            W(i4, i5, motionEvent, 1);
                            GapWorker gapWorker = this.k0;
                            if (gapWorker != null && (S != 0 || T != 0)) {
                                gapWorker.a(this, S, T);
                            }
                            c0(1);
                        }
                    }
                }
                f2 = 0.0f;
                if (f == 0.0f) {
                }
                int i62 = (int) (f2 * this.g0);
                int i72 = (int) (f * this.h0);
                layoutManager = this.v;
                if (layoutManager == null) {
                }
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    float axisValue = motionEvent.getAxisValue(26);
                    if (this.v.e()) {
                        f = -axisValue;
                        f2 = 0.0f;
                        if (f == 0.0f) {
                        }
                        int i622 = (int) (f2 * this.g0);
                        int i722 = (int) (f * this.h0);
                        layoutManager = this.v;
                        if (layoutManager == null) {
                        }
                    } else if (this.v.d()) {
                        f2 = axisValue;
                        f = 0.0f;
                        if (f == 0.0f) {
                        }
                        int i6222 = (int) (f2 * this.g0);
                        int i7222 = (int) (f * this.h0);
                        layoutManager = this.v;
                        if (layoutManager == null) {
                        }
                    }
                }
                f = 0.0f;
                f2 = 0.0f;
                if (f == 0.0f) {
                }
                int i62222 = (int) (f2 * this.g0);
                int i72222 = (int) (f * this.h0);
                layoutManager = this.v;
                if (layoutManager == null) {
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (!this.F) {
            this.z = null;
            if (z(motionEvent)) {
                V();
                setScrollState(0);
                return true;
            }
            LayoutManager layoutManager = this.v;
            if (layoutManager != null) {
                boolean d = layoutManager.d();
                boolean e = this.v.e();
                if (this.V == null) {
                    this.V = VelocityTracker.obtain();
                }
                this.V.addMovement(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked != 0) {
                    if (actionMasked != 1) {
                        if (actionMasked != 2) {
                            if (actionMasked != 3) {
                                if (actionMasked != 5) {
                                    if (actionMasked == 6) {
                                        P(motionEvent);
                                    }
                                } else {
                                    this.U = motionEvent.getPointerId(actionIndex);
                                    int x = (int) (motionEvent.getX(actionIndex) + 0.5f);
                                    this.b0 = x;
                                    this.W = x;
                                    int y = (int) (motionEvent.getY(actionIndex) + 0.5f);
                                    this.c0 = y;
                                    this.a0 = y;
                                }
                            } else {
                                V();
                                setScrollState(0);
                            }
                        } else {
                            int findPointerIndex = motionEvent.findPointerIndex(this.U);
                            if (findPointerIndex < 0) {
                                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.U + " not found. Did any MotionEvents get skipped?");
                                return false;
                            }
                            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                            if (this.T != 1) {
                                int i = x2 - this.W;
                                int i2 = y2 - this.a0;
                                if (d != 0 && Math.abs(i) > this.d0) {
                                    this.b0 = x2;
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (e && Math.abs(i2) > this.d0) {
                                    this.c0 = y2;
                                    z2 = true;
                                }
                                if (z2) {
                                    setScrollState(1);
                                }
                            }
                        }
                    } else {
                        this.V.clear();
                        c0(0);
                    }
                } else {
                    if (this.G) {
                        this.G = false;
                    }
                    this.U = motionEvent.getPointerId(0);
                    int x3 = (int) (motionEvent.getX() + 0.5f);
                    this.b0 = x3;
                    this.W = x3;
                    int y3 = (int) (motionEvent.getY() + 0.5f);
                    this.c0 = y3;
                    this.a0 = y3;
                    EdgeEffect edgeEffect = this.O;
                    if (edgeEffect != null && EdgeEffectCompat.a(edgeEffect) != 0.0f && !canScrollHorizontally(-1)) {
                        EdgeEffectCompat.b(this.O, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                        z = true;
                    } else {
                        z = false;
                    }
                    EdgeEffect edgeEffect2 = this.Q;
                    boolean z3 = z;
                    if (edgeEffect2 != null) {
                        z3 = z;
                        if (EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
                            z3 = z;
                            if (!canScrollHorizontally(1)) {
                                EdgeEffectCompat.b(this.Q, 0.0f, motionEvent.getY() / getHeight());
                                z3 = true;
                            }
                        }
                    }
                    EdgeEffect edgeEffect3 = this.P;
                    boolean z4 = z3;
                    if (edgeEffect3 != null) {
                        z4 = z3;
                        if (EdgeEffectCompat.a(edgeEffect3) != 0.0f) {
                            z4 = z3;
                            if (!canScrollVertically(-1)) {
                                EdgeEffectCompat.b(this.P, 0.0f, motionEvent.getX() / getWidth());
                                z4 = true;
                            }
                        }
                    }
                    EdgeEffect edgeEffect4 = this.R;
                    boolean z5 = z4;
                    if (edgeEffect4 != null) {
                        z5 = z4;
                        if (EdgeEffectCompat.a(edgeEffect4) != 0.0f) {
                            z5 = z4;
                            if (!canScrollVertically(1)) {
                                EdgeEffectCompat.b(this.R, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                                z5 = true;
                            }
                        }
                    }
                    if (z5 || this.T == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        c0(1);
                    }
                    int[] iArr = this.x0;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    int i3 = d;
                    if (e) {
                        i3 = (d ? 1 : 0) | 2;
                    }
                    getScrollingChildHelper().g(i3, 0);
                }
                if (this.T == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = TraceCompat.a;
        Trace.beginSection("RV OnLayout");
        m();
        Trace.endSection();
        this.C = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        LayoutManager layoutManager = this.v;
        if (layoutManager == null) {
            l(i, i2);
            return;
        }
        boolean H = layoutManager.H();
        boolean z = false;
        State state = this.m0;
        if (H) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.v.b.l(i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.B0 = z;
            if (!z && this.u != null) {
                if (state.d == 1) {
                    n();
                }
                this.v.n0(i, i2);
                state.i = true;
                o();
                this.v.p0(i, i2);
                if (this.v.s0()) {
                    this.v.n0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    state.i = true;
                    o();
                    this.v.p0(i, i2);
                }
                this.C0 = getMeasuredWidth();
                this.D0 = getMeasuredHeight();
                return;
            }
            return;
        }
        if (this.B) {
            this.v.b.l(i, i2);
            return;
        }
        if (state.k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        Adapter adapter = this.u;
        if (adapter != null) {
            state.e = adapter.a();
        } else {
            state.e = 0;
        }
        a0();
        this.v.b.l(i, i2);
        b0(false);
        state.g = false;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (J()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.m = savedState;
        super.onRestoreInstanceState(savedState.j);
        requestLayout();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, androidx.recyclerview.widget.RecyclerView$SavedState, androidx.customview.view.AbsSavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        SavedState savedState = this.m;
        if (savedState != null) {
            absSavedState.l = savedState.l;
            return absSavedState;
        }
        LayoutManager layoutManager = this.v;
        if (layoutManager != null) {
            absSavedState.l = layoutManager.b0();
            return absSavedState;
        }
        absSavedState.l = null;
        return absSavedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.R = null;
        this.P = null;
        this.Q = null;
        this.O = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x03a5, code lost:
    
        if (r2 == 0) goto L220;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0389 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03a1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x020e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        float f;
        float f2;
        int i;
        int i2;
        ViewFlinger viewFlinger;
        float f3;
        float f4;
        boolean z2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z3;
        if (!this.F && !this.G) {
            OnItemTouchListener onItemTouchListener = this.z;
            if (onItemTouchListener == null) {
                if (motionEvent.getAction() == 0) {
                    z = false;
                } else {
                    z = z(motionEvent);
                }
            } else {
                FastScroller fastScroller = (FastScroller) onItemTouchListener;
                int i7 = fastScroller.b;
                if (fastScroller.v != 0) {
                    if (motionEvent.getAction() == 0) {
                        boolean d = fastScroller.d(motionEvent.getX(), motionEvent.getY());
                        boolean c = fastScroller.c(motionEvent.getX(), motionEvent.getY());
                        if (d || c) {
                            if (c) {
                                fastScroller.w = 1;
                                fastScroller.p = (int) motionEvent.getX();
                            } else if (d) {
                                fastScroller.w = 2;
                                fastScroller.m = (int) motionEvent.getY();
                            }
                            fastScroller.f(2);
                        }
                    } else if (motionEvent.getAction() == 1 && fastScroller.v == 2) {
                        fastScroller.m = 0.0f;
                        fastScroller.p = 0.0f;
                        fastScroller.f(1);
                        fastScroller.w = 0;
                    } else if (motionEvent.getAction() == 2 && fastScroller.v == 2) {
                        fastScroller.g();
                        if (fastScroller.w == 1) {
                            float x = motionEvent.getX();
                            int[] iArr = fastScroller.y;
                            iArr[0] = i7;
                            int i8 = fastScroller.q - i7;
                            iArr[1] = i8;
                            float max = Math.max(i7, Math.min(i8, x));
                            if (Math.abs(fastScroller.o - max) >= 2.0f) {
                                int e = FastScroller.e(fastScroller.p, max, iArr, fastScroller.s.computeHorizontalScrollRange(), fastScroller.s.computeHorizontalScrollOffset(), fastScroller.q);
                                if (e != 0) {
                                    fastScroller.s.scrollBy(e, 0);
                                }
                                fastScroller.p = max;
                            }
                        }
                        if (fastScroller.w == 2) {
                            float y = motionEvent.getY();
                            int[] iArr2 = fastScroller.x;
                            iArr2[0] = i7;
                            int i9 = fastScroller.r - i7;
                            iArr2[1] = i9;
                            float max2 = Math.max(i7, Math.min(i9, y));
                            if (Math.abs(fastScroller.l - max2) >= 2.0f) {
                                int e2 = FastScroller.e(fastScroller.m, max2, iArr2, fastScroller.s.computeVerticalScrollRange(), fastScroller.s.computeVerticalScrollOffset(), fastScroller.r);
                                if (e2 != 0) {
                                    fastScroller.s.scrollBy(0, e2);
                                }
                                fastScroller.m = max2;
                            }
                        }
                    }
                }
                int action = motionEvent.getAction();
                if (action == 3 || action == 1) {
                    this.z = null;
                }
                z = true;
            }
            if (z) {
                V();
                setScrollState(0);
                return true;
            }
            LayoutManager layoutManager = this.v;
            if (layoutManager != null) {
                boolean d2 = layoutManager.d();
                boolean e3 = this.v.e();
                if (this.V == null) {
                    this.V = VelocityTracker.obtain();
                }
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                int[] iArr3 = this.x0;
                if (actionMasked == 0) {
                    iArr3[1] = 0;
                    iArr3[0] = 0;
                }
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.offsetLocation(iArr3[0], iArr3[1]);
                if (actionMasked != 0) {
                    if (actionMasked != 1) {
                        if (actionMasked != 2) {
                            if (actionMasked != 3) {
                                if (actionMasked != 5) {
                                    if (actionMasked == 6) {
                                        P(motionEvent);
                                    }
                                } else {
                                    this.U = motionEvent.getPointerId(actionIndex);
                                    int x2 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                                    this.b0 = x2;
                                    this.W = x2;
                                    int y2 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                                    this.c0 = y2;
                                    this.a0 = y2;
                                }
                            } else {
                                V();
                                setScrollState(0);
                            }
                        } else {
                            int findPointerIndex = motionEvent.findPointerIndex(this.U);
                            if (findPointerIndex < 0) {
                                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.U + " not found. Did any MotionEvents get skipped?");
                                return false;
                            }
                            int x3 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                            int y3 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                            int i10 = this.b0 - x3;
                            int i11 = this.c0 - y3;
                            if (this.T != 1) {
                                if (d2 != 0) {
                                    int i12 = this.d0;
                                    if (i10 > 0) {
                                        i10 = Math.max(0, i10 - i12);
                                    } else {
                                        i10 = Math.min(0, i10 + i12);
                                    }
                                    if (i10 != 0) {
                                        z3 = true;
                                        if (e3) {
                                            int i13 = this.d0;
                                            if (i11 > 0) {
                                                i11 = Math.max(0, i11 - i13);
                                            } else {
                                                i11 = Math.min(0, i11 + i13);
                                            }
                                            if (i11 != 0) {
                                                z3 = true;
                                            }
                                        }
                                        if (z3) {
                                            setScrollState(1);
                                        }
                                    }
                                }
                                z3 = false;
                                if (e3) {
                                }
                                if (z3) {
                                }
                            }
                            if (this.T == 1) {
                                int[] iArr4 = this.y0;
                                iArr4[0] = 0;
                                iArr4[1] = 0;
                                int S = i10 - S(i10, motionEvent.getY());
                                int T = i11 - T(i11, motionEvent.getX());
                                if (d2 != 0) {
                                    i3 = S;
                                } else {
                                    i3 = 0;
                                }
                                if (e3) {
                                    i4 = T;
                                } else {
                                    i4 = 0;
                                }
                                boolean p = p(i3, i4, 0, this.y0, this.w0);
                                int[] iArr5 = this.w0;
                                if (p) {
                                    S -= iArr4[0];
                                    T -= iArr4[1];
                                    iArr3[0] = iArr3[0] + iArr5[0];
                                    iArr3[1] = iArr3[1] + iArr5[1];
                                    getParent().requestDisallowInterceptTouchEvent(true);
                                }
                                int i14 = S;
                                int i15 = T;
                                this.b0 = x3 - iArr5[0];
                                this.c0 = y3 - iArr5[1];
                                if (d2 != 0) {
                                    i5 = i14;
                                } else {
                                    i5 = 0;
                                }
                                if (e3) {
                                    i6 = i15;
                                } else {
                                    i6 = 0;
                                }
                                if (W(i5, i6, motionEvent, 0)) {
                                    getParent().requestDisallowInterceptTouchEvent(true);
                                }
                                GapWorker gapWorker = this.k0;
                                if (gapWorker != null && (i14 != 0 || i15 != 0)) {
                                    gapWorker.a(this, i14, i15);
                                }
                            }
                        }
                    } else {
                        this.V.addMovement(obtain);
                        VelocityTracker velocityTracker = this.V;
                        int i16 = this.f0;
                        velocityTracker.computeCurrentVelocity(1000, i16);
                        if (d2 != 0) {
                            f = -this.V.getXVelocity(this.U);
                        } else {
                            f = 0.0f;
                        }
                        if (e3) {
                            f2 = -this.V.getYVelocity(this.U);
                        } else {
                            f2 = 0.0f;
                        }
                        if (f != 0.0f || f2 != 0.0f) {
                            int i17 = (int) f;
                            int i18 = (int) f2;
                            LayoutManager layoutManager2 = this.v;
                            if (layoutManager2 == null) {
                                Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                            } else if (!this.F) {
                                boolean d3 = layoutManager2.d();
                                boolean e4 = this.v.e();
                                int i19 = this.e0;
                                if (d3 == 0 || Math.abs(i17) < i19) {
                                    i17 = 0;
                                }
                                if (!e4 || Math.abs(i18) < i19) {
                                    i18 = 0;
                                }
                                if (i17 != 0 || i18 != 0) {
                                    if (i17 != 0) {
                                        EdgeEffect edgeEffect = this.O;
                                        if (edgeEffect != null && EdgeEffectCompat.a(edgeEffect) != 0.0f) {
                                            int i20 = -i17;
                                            if (Y(this.O, i20, getWidth())) {
                                                this.O.onAbsorb(i20);
                                                i17 = 0;
                                            }
                                            i = i17;
                                            i17 = 0;
                                        } else {
                                            EdgeEffect edgeEffect2 = this.Q;
                                            if (edgeEffect2 != null && EdgeEffectCompat.a(edgeEffect2) != 0.0f) {
                                                if (Y(this.Q, i17, getWidth())) {
                                                    this.Q.onAbsorb(i17);
                                                    i17 = 0;
                                                }
                                                i = i17;
                                                i17 = 0;
                                            }
                                        }
                                        if (i18 != 0) {
                                            EdgeEffect edgeEffect3 = this.P;
                                            if (edgeEffect3 != null && EdgeEffectCompat.a(edgeEffect3) != 0.0f) {
                                                int i21 = -i18;
                                                if (Y(this.P, i21, getHeight())) {
                                                    this.P.onAbsorb(i21);
                                                    i18 = 0;
                                                }
                                                i2 = 0;
                                            } else {
                                                EdgeEffect edgeEffect4 = this.R;
                                                if (edgeEffect4 != null && EdgeEffectCompat.a(edgeEffect4) != 0.0f) {
                                                    if (Y(this.R, i18, getHeight())) {
                                                        this.R.onAbsorb(i18);
                                                        i18 = 0;
                                                    }
                                                    i2 = 0;
                                                }
                                            }
                                            viewFlinger = this.j0;
                                            if (i == 0 || i18 != 0) {
                                                int i22 = -i16;
                                                i = Math.max(i22, Math.min(i, i16));
                                                i18 = Math.max(i22, Math.min(i18, i16));
                                                viewFlinger.a(i, i18);
                                            }
                                            if (i17 != 0 && i2 == 0) {
                                                if (i == 0) {
                                                }
                                                V();
                                            } else {
                                                f3 = i17;
                                                f4 = i2;
                                                if (!dispatchNestedPreFling(f3, f4)) {
                                                    if (d3 == 0 && !e4) {
                                                        z2 = false;
                                                    } else {
                                                        z2 = true;
                                                    }
                                                    dispatchNestedFling(f3, f4, z2);
                                                    int i23 = d3;
                                                    if (z2) {
                                                        if (e4) {
                                                            i23 = (d3 ? 1 : 0) | 2;
                                                        }
                                                        getScrollingChildHelper().g(i23, 1);
                                                        int i24 = -i16;
                                                        viewFlinger.a(Math.max(i24, Math.min(i17, i16)), Math.max(i24, Math.min(i2, i16)));
                                                        V();
                                                    }
                                                }
                                            }
                                            obtain.recycle();
                                            return true;
                                        }
                                        i2 = i18;
                                        i18 = 0;
                                        viewFlinger = this.j0;
                                        if (i == 0) {
                                        }
                                        int i222 = -i16;
                                        i = Math.max(i222, Math.min(i, i16));
                                        i18 = Math.max(i222, Math.min(i18, i16));
                                        viewFlinger.a(i, i18);
                                        if (i17 != 0) {
                                        }
                                        f3 = i17;
                                        f4 = i2;
                                        if (!dispatchNestedPreFling(f3, f4)) {
                                        }
                                    }
                                    i = 0;
                                    if (i18 != 0) {
                                    }
                                    i2 = i18;
                                    i18 = 0;
                                    viewFlinger = this.j0;
                                    if (i == 0) {
                                    }
                                    int i2222 = -i16;
                                    i = Math.max(i2222, Math.min(i, i16));
                                    i18 = Math.max(i2222, Math.min(i18, i16));
                                    viewFlinger.a(i, i18);
                                    if (i17 != 0) {
                                    }
                                    f3 = i17;
                                    f4 = i2;
                                    if (!dispatchNestedPreFling(f3, f4)) {
                                    }
                                }
                            }
                        }
                        setScrollState(0);
                        V();
                        obtain.recycle();
                        return true;
                    }
                } else {
                    this.U = motionEvent.getPointerId(0);
                    int x4 = (int) (motionEvent.getX() + 0.5f);
                    this.b0 = x4;
                    this.W = x4;
                    int y4 = (int) (motionEvent.getY() + 0.5f);
                    this.c0 = y4;
                    this.a0 = y4;
                    int i25 = d2;
                    if (e3) {
                        i25 = (d2 ? 1 : 0) | 2;
                    }
                    getScrollingChildHelper().g(i25, 0);
                }
                this.V.addMovement(obtain);
                obtain.recycle();
                return true;
            }
        }
        return false;
    }

    public final boolean p(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i, i2, i3, iArr, iArr2);
    }

    public final void q(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().d(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public final void r(int i, int i2) {
        this.M++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        OnScrollListener onScrollListener = this.n0;
        if (onScrollListener != null) {
            onScrollListener.b(this, i, i2);
        }
        ArrayList arrayList = this.o0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((OnScrollListener) this.o0.get(size)).b(this, i, i2);
            }
        }
        this.M--;
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        ViewHolder G = G(view);
        if (G != null) {
            if (G.j()) {
                G.j &= -257;
            } else if (!G.o()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + G + w());
            }
        }
        view.clearAnimation();
        G(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        LinearSmoothScroller linearSmoothScroller = this.v.e;
        if ((linearSmoothScroller == null || !linearSmoothScroller.e) && !J() && view2 != null) {
            U(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.v.h0(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList arrayList = this.y;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((OnItemTouchListener) arrayList.get(i)).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.D == 0 && !this.F) {
            super.requestLayout();
        } else {
            this.E = true;
        }
    }

    public final void s() {
        if (this.R != null) {
            return;
        }
        ((StretchEdgeEffectFactory) this.N).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.R = edgeEffect;
        if (this.q) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        LayoutManager layoutManager = this.v;
        if (layoutManager == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (!this.F) {
            boolean d = layoutManager.d();
            boolean e = this.v.e();
            if (!d && !e) {
                return;
            }
            if (!d) {
                i = 0;
            }
            if (!e) {
                i2 = 0;
            }
            W(i, i2, null, 0);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        int i;
        if (J()) {
            int i2 = 0;
            if (accessibilityEvent != null) {
                i = accessibilityEvent.getContentChangeTypes();
            } else {
                i = 0;
            }
            if (i != 0) {
                i2 = i;
            }
            this.H |= i2;
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
        this.t0 = recyclerViewAccessibilityDelegate;
        ViewCompat.n(this, recyclerViewAccessibilityDelegate);
    }

    public void setAdapter(Adapter adapter) {
        setLayoutFrozen(false);
        Adapter adapter2 = this.u;
        RecyclerViewDataObserver recyclerViewDataObserver = this.k;
        if (adapter2 != null) {
            adapter2.a.unregisterObserver(recyclerViewDataObserver);
            this.u.getClass();
        }
        ItemAnimator itemAnimator = this.S;
        if (itemAnimator != null) {
            itemAnimator.e();
        }
        LayoutManager layoutManager = this.v;
        Recycler recycler = this.l;
        if (layoutManager != null) {
            layoutManager.d0(recycler);
            this.v.e0(recycler);
        }
        recycler.a.clear();
        recycler.f();
        AdapterHelper adapterHelper = this.n;
        adapterHelper.i(adapterHelper.b);
        adapterHelper.i(adapterHelper.c);
        Adapter adapter3 = this.u;
        this.u = adapter;
        if (adapter != null) {
            adapter.a.registerObserver(recyclerViewDataObserver);
        }
        LayoutManager layoutManager2 = this.v;
        if (layoutManager2 != null) {
            layoutManager2.M();
        }
        Adapter adapter4 = this.u;
        recycler.a.clear();
        recycler.f();
        recycler.e(adapter3, true);
        RecycledViewPool c = recycler.c();
        if (adapter3 != null) {
            c.b--;
        }
        if (c.b == 0) {
            SparseArray sparseArray = c.a;
            for (int i = 0; i < sparseArray.size(); i++) {
                RecycledViewPool.ScrapData scrapData = (RecycledViewPool.ScrapData) sparseArray.valueAt(i);
                Iterator it = scrapData.a.iterator();
                while (it.hasNext()) {
                    PoolingContainer.b(((ViewHolder) it.next()).a);
                }
                scrapData.a.clear();
            }
        }
        if (adapter4 != null) {
            c.b++;
        }
        recycler.d();
        this.m0.f = true;
        this.K |= false;
        this.J = true;
        ChildHelper childHelper = this.o;
        int h = childHelper.h();
        for (int i2 = 0; i2 < h; i2++) {
            ViewHolder G = G(childHelper.g(i2));
            if (G != null && !G.o()) {
                G.a(6);
            }
        }
        L();
        ArrayList arrayList = recycler.c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i3);
            if (viewHolder != null) {
                viewHolder.a(6);
                viewHolder.a(1024);
            }
        }
        Adapter adapter5 = RecyclerView.this.u;
        if (adapter5 == null || !adapter5.b) {
            recycler.f();
        }
        requestLayout();
    }

    public void setChildDrawingOrderCallback(ChildDrawingOrderCallback childDrawingOrderCallback) {
        if (childDrawingOrderCallback == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.q) {
            this.R = null;
            this.P = null;
            this.Q = null;
            this.O = null;
        }
        this.q = z;
        super.setClipToPadding(z);
        if (this.C) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(EdgeEffectFactory edgeEffectFactory) {
        edgeEffectFactory.getClass();
        this.N = edgeEffectFactory;
        this.R = null;
        this.P = null;
        this.Q = null;
        this.O = null;
    }

    public void setHasFixedSize(boolean z) {
        this.B = z;
    }

    public void setItemAnimator(ItemAnimator itemAnimator) {
        ItemAnimator itemAnimator2 = this.S;
        if (itemAnimator2 != null) {
            itemAnimator2.e();
            this.S.a = null;
        }
        this.S = itemAnimator;
        if (itemAnimator != null) {
            itemAnimator.a = this.r0;
        }
    }

    public void setItemViewCacheSize(int i) {
        Recycler recycler = this.l;
        recycler.e = i;
        recycler.m();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(LayoutManager layoutManager) {
        RecyclerView recyclerView;
        LinearSmoothScroller linearSmoothScroller;
        if (layoutManager == this.v) {
            return;
        }
        setScrollState(0);
        ViewFlinger viewFlinger = this.j0;
        RecyclerView.this.removeCallbacks(viewFlinger);
        viewFlinger.l.abortAnimation();
        LayoutManager layoutManager2 = this.v;
        if (layoutManager2 != null && (linearSmoothScroller = layoutManager2.e) != null) {
            linearSmoothScroller.d();
        }
        LayoutManager layoutManager3 = this.v;
        Recycler recycler = this.l;
        if (layoutManager3 != null) {
            ItemAnimator itemAnimator = this.S;
            if (itemAnimator != null) {
                itemAnimator.e();
            }
            this.v.d0(recycler);
            this.v.e0(recycler);
            recycler.a.clear();
            recycler.f();
            if (this.A) {
                LayoutManager layoutManager4 = this.v;
                layoutManager4.g = false;
                layoutManager4.N(this);
            }
            this.v.q0(null);
            this.v = null;
        } else {
            recycler.a.clear();
            recycler.f();
        }
        ChildHelper childHelper = this.o;
        childHelper.b.g();
        ArrayList arrayList = childHelper.c;
        int size = arrayList.size() - 1;
        while (true) {
            recyclerView = RecyclerView.this;
            if (size < 0) {
                break;
            }
            ViewHolder G = G((View) arrayList.get(size));
            if (G != null) {
                int i = G.p;
                if (recyclerView.J()) {
                    G.q = i;
                    recyclerView.z0.add(G);
                } else {
                    View view = G.a;
                    Field field = ViewCompat.a;
                    view.setImportantForAccessibility(i);
                }
                G.p = 0;
            }
            arrayList.remove(size);
            size--;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            G(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.v = layoutManager;
        if (layoutManager != null) {
            if (layoutManager.b == null) {
                layoutManager.q0(this);
                if (this.A) {
                    this.v.g = true;
                }
            } else {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(layoutManager);
                String w = layoutManager.b.w();
                sb.append(" is already attached to a RecyclerView:");
                sb.append(w);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        recycler.m();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
        } else {
            u2.g("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        NestedScrollingChildHelper scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.d) {
            ViewGroup viewGroup = scrollingChildHelper.c;
            Field field = ViewCompat.a;
            viewGroup.stopNestedScroll();
        }
        scrollingChildHelper.d = z;
    }

    @Deprecated
    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.n0 = onScrollListener;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.i0 = z;
    }

    public void setRecycledViewPool(RecycledViewPool recycledViewPool) {
        Recycler recycler = this.l;
        RecyclerView recyclerView = RecyclerView.this;
        recycler.e(recyclerView.u, false);
        if (recycler.g != null) {
            r1.b--;
        }
        recycler.g = recycledViewPool;
        if (recycledViewPool != null && recyclerView.getAdapter() != null) {
            recycler.g.b++;
        }
        recycler.d();
    }

    public void setScrollState(int i) {
        LinearSmoothScroller linearSmoothScroller;
        if (i != this.T) {
            this.T = i;
            if (i != 2) {
                ViewFlinger viewFlinger = this.j0;
                RecyclerView.this.removeCallbacks(viewFlinger);
                viewFlinger.l.abortAnimation();
                LayoutManager layoutManager = this.v;
                if (layoutManager != null && (linearSmoothScroller = layoutManager.e) != null) {
                    linearSmoothScroller.d();
                }
            }
            LayoutManager layoutManager2 = this.v;
            if (layoutManager2 != null) {
                layoutManager2.c0(i);
            }
            OnScrollListener onScrollListener = this.n0;
            if (onScrollListener != null) {
                onScrollListener.a(this, i);
            }
            ArrayList arrayList = this.o0;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((OnScrollListener) this.o0.get(size)).a(this, i);
                }
            }
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
            } else {
                this.d0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.d0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(ViewCacheExtension viewCacheExtension) {
        this.l.getClass();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().g(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().h(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        LinearSmoothScroller linearSmoothScroller;
        if (z != this.F) {
            f("Do not suppressLayout in layout or scroll");
            if (!z) {
                this.F = false;
                if (this.E && this.v != null && this.u != null) {
                    requestLayout();
                }
                this.E = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.F = true;
            this.G = true;
            setScrollState(0);
            ViewFlinger viewFlinger = this.j0;
            RecyclerView.this.removeCallbacks(viewFlinger);
            viewFlinger.l.abortAnimation();
            LayoutManager layoutManager = this.v;
            if (layoutManager != null && (linearSmoothScroller = layoutManager.e) != null) {
                linearSmoothScroller.d();
            }
        }
    }

    public final void t() {
        if (this.O != null) {
            return;
        }
        ((StretchEdgeEffectFactory) this.N).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.O = edgeEffect;
        if (this.q) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void u() {
        if (this.Q != null) {
            return;
        }
        ((StretchEdgeEffectFactory) this.N).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.Q = edgeEffect;
        if (this.q) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void v() {
        if (this.P != null) {
            return;
        }
        ((StretchEdgeEffectFactory) this.N).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.P = edgeEffect;
        if (this.q) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final String w() {
        return " " + super.toString() + ", adapter:" + this.u + ", layout:" + this.v + ", context:" + getContext();
    }

    public final void x(State state) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.j0.l;
            overScroller.getFinalX();
            overScroller.getCurrX();
            state.getClass();
            overScroller.getFinalY();
            overScroller.getCurrY();
            return;
        }
        state.getClass();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View y(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005f, code lost:
    
        if (r7 == 2) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean z(MotionEvent motionEvent) {
        boolean z;
        int action = motionEvent.getAction();
        ArrayList arrayList = this.y;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            OnItemTouchListener onItemTouchListener = (OnItemTouchListener) arrayList.get(i);
            FastScroller fastScroller = (FastScroller) onItemTouchListener;
            int i2 = fastScroller.v;
            if (i2 == 1) {
                boolean d = fastScroller.d(motionEvent.getX(), motionEvent.getY());
                boolean c = fastScroller.c(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() == 0 && (d || c)) {
                    if (c) {
                        fastScroller.w = 1;
                        fastScroller.p = (int) motionEvent.getX();
                    } else if (d) {
                        fastScroller.w = 2;
                        fastScroller.m = (int) motionEvent.getY();
                    }
                    fastScroller.f(2);
                    z = true;
                }
                z = false;
            }
            if (z && action != 3) {
                this.z = onItemTouchListener;
                return true;
            }
        }
        return false;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public Parcelable l;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.l = parcel.readParcelable(classLoader == null ? LayoutManager.class.getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.l, 0);
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.recyclerview.widget.RecyclerView$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public ViewHolder a;
        public final Rect b;
        public boolean c;
        public boolean d;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = new Rect();
            this.c = true;
            this.d = false;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.b = new Rect();
            this.c = true;
            this.d = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = new Rect();
            this.c = true;
            this.d = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = new Rect();
            this.c = true;
            this.d = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.b = new Rect();
            this.c = true;
            this.d = false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class LayoutManager {
        public ChildHelper a;
        public RecyclerView b;
        public final ViewBoundsCheck c;
        public final ViewBoundsCheck d;
        public LinearSmoothScroller e;
        public boolean f;
        public boolean g;
        public final boolean h;
        public final boolean i;
        public int j;
        public boolean k;
        public int l;
        public int m;
        public int n;
        public int o;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public interface LayoutPrefetchRegistry {
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class Properties {
            public int a;
            public int b;
            public boolean c;
            public boolean d;
        }

        public LayoutManager() {
            ViewBoundsCheck.Callback callback = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.1
                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int a(View view) {
                    return (view.getLeft() - ((LayoutParams) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).leftMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int b() {
                    return LayoutManager.this.A();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int c() {
                    LayoutManager layoutManager = LayoutManager.this;
                    return layoutManager.n - layoutManager.B();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final View d(int i) {
                    return LayoutManager.this.u(i);
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int e(View view) {
                    return view.getRight() + ((LayoutParams) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).rightMargin;
                }
            };
            ViewBoundsCheck.Callback callback2 = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.2
                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int a(View view) {
                    return (view.getTop() - ((LayoutParams) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).topMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int b() {
                    return LayoutManager.this.C();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int c() {
                    LayoutManager layoutManager = LayoutManager.this;
                    return layoutManager.o - layoutManager.z();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final View d(int i) {
                    return LayoutManager.this.u(i);
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int e(View view) {
                    return view.getBottom() + ((LayoutParams) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
                }
            };
            this.c = new ViewBoundsCheck(callback);
            this.d = new ViewBoundsCheck(callback2);
            this.f = false;
            this.g = false;
            this.h = true;
            this.i = true;
        }

        public static int D(View view) {
            return ((LayoutParams) view.getLayoutParams()).a.b();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.recyclerview.widget.RecyclerView$LayoutManager$Properties, java.lang.Object] */
        public static Properties E(Context context, AttributeSet attributeSet, int i, int i2) {
            ?? obj = new Object();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.a, i, i2);
            obj.a = obtainStyledAttributes.getInt(0, 1);
            obj.b = obtainStyledAttributes.getInt(10, 1);
            obj.c = obtainStyledAttributes.getBoolean(9, false);
            obj.d = obtainStyledAttributes.getBoolean(11, false);
            obtainStyledAttributes.recycle();
            return obj;
        }

        public static boolean I(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode != Integer.MIN_VALUE) {
                if (mode == 0) {
                    return true;
                }
                if (mode != 1073741824 || size != i) {
                    return false;
                }
                return true;
            }
            if (size < i) {
                return false;
            }
            return true;
        }

        public static void J(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.b;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public static int g(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode != Integer.MIN_VALUE) {
                if (mode != 1073741824) {
                    return Math.max(i2, i3);
                }
                return size;
            }
            return Math.min(size, Math.max(i2, i3));
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
        
            if (r6 == 1073741824) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int w(boolean z, int i, int i2, int i3, int i4) {
            int max = Math.max(0, i - i3);
            if (z) {
                if (i4 < 0) {
                    if (i4 == -1) {
                        if (i2 != Integer.MIN_VALUE) {
                            if (i2 != 0) {
                            }
                        }
                        i4 = max;
                    }
                    i2 = 0;
                    i4 = 0;
                }
                i2 = 1073741824;
            } else {
                if (i4 < 0) {
                    if (i4 != -1) {
                        if (i4 == -2) {
                            if (i2 != Integer.MIN_VALUE && i2 != 1073741824) {
                                i4 = max;
                                i2 = 0;
                            } else {
                                i4 = max;
                                i2 = Integer.MIN_VALUE;
                            }
                        }
                        i2 = 0;
                        i4 = 0;
                    }
                    i4 = max;
                }
                i2 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(i4, i2);
        }

        public static void y(View view, Rect rect) {
            int[] iArr = RecyclerView.F0;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect2 = layoutParams.b;
            rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public final int A() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public final int B() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public final int C() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int F(Recycler recycler, State state) {
            return -1;
        }

        public final void G(View view, Rect rect) {
            Matrix matrix;
            Rect rect2 = ((LayoutParams) view.getLayoutParams()).b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            if (this.b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.b.t;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public abstract boolean H();

        public void K(int i) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                int e = recyclerView.o.e();
                for (int i2 = 0; i2 < e; i2++) {
                    recyclerView.o.d(i2).offsetLeftAndRight(i);
                }
            }
        }

        public void L(int i) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                int e = recyclerView.o.e();
                for (int i2 = 0; i2 < e; i2++) {
                    recyclerView.o.d(i2).offsetTopAndBottom(i);
                }
            }
        }

        public abstract void N(RecyclerView recyclerView);

        public abstract View O(View view, int i, Recycler recycler, State state);

        public void P(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.b;
            Recycler recycler = recyclerView.l;
            State state = recyclerView.m0;
            if (recyclerView != null && accessibilityEvent != null) {
                boolean z = true;
                if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
                    z = false;
                }
                accessibilityEvent.setScrollable(z);
                Adapter adapter = this.b.u;
                if (adapter != null) {
                    accessibilityEvent.setItemCount(adapter.a());
                }
            }
        }

        public void Q(Recycler recycler, State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
            if (this.b.canScrollVertically(-1) || this.b.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.a(8192);
                accessibilityNodeInfo.setScrollable(true);
            }
            if (this.b.canScrollVertically(1) || this.b.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.a(4096);
                accessibilityNodeInfo.setScrollable(true);
            }
            accessibilityNodeInfoCompat.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(F(recycler, state), x(recycler, state), 0));
        }

        public final void R(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewHolder G = RecyclerView.G(view);
            if (G != null && !G.h()) {
                ChildHelper childHelper = this.a;
                if (!childHelper.c.contains(G.a)) {
                    RecyclerView recyclerView = this.b;
                    S(recyclerView.l, recyclerView.m0, view, accessibilityNodeInfoCompat);
                }
            }
        }

        public abstract void Y(Recycler recycler, State state);

        public abstract void Z(State state);

        public abstract void a0(Parcelable parcelable);

        public final void b(View view, int i, boolean z) {
            int i2;
            ViewHolder G = RecyclerView.G(view);
            if (!z && !G.h()) {
                this.b.p.c(G);
            } else {
                SimpleArrayMap simpleArrayMap = this.b.p.a;
                ViewInfoStore.InfoRecord infoRecord = (ViewInfoStore.InfoRecord) simpleArrayMap.get(G);
                if (infoRecord == null) {
                    infoRecord = ViewInfoStore.InfoRecord.a();
                    simpleArrayMap.put(G, infoRecord);
                }
                infoRecord.a |= 1;
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (!G.p() && !G.i()) {
                ViewParent parent = view.getParent();
                RecyclerView recyclerView = this.b;
                ChildHelper childHelper = this.a;
                int i3 = -1;
                if (parent == recyclerView) {
                    ChildHelper.Bucket bucket = childHelper.b;
                    int indexOfChild = RecyclerView.this.indexOfChild(view);
                    if (indexOfChild == -1 || bucket.d(indexOfChild)) {
                        i2 = -1;
                    } else {
                        i2 = indexOfChild - bucket.b(indexOfChild);
                    }
                    if (i == -1) {
                        i = this.a.e();
                    }
                    if (i2 != -1) {
                        if (i2 != i) {
                            LayoutManager layoutManager = this.b.v;
                            View u = layoutManager.u(i2);
                            if (u != null) {
                                layoutManager.u(i2);
                                layoutManager.a.c(i2);
                                LayoutParams layoutParams2 = (LayoutParams) u.getLayoutParams();
                                ViewHolder G2 = RecyclerView.G(u);
                                boolean h = G2.h();
                                RecyclerView recyclerView2 = layoutManager.b;
                                if (h) {
                                    SimpleArrayMap simpleArrayMap2 = recyclerView2.p.a;
                                    ViewInfoStore.InfoRecord infoRecord2 = (ViewInfoStore.InfoRecord) simpleArrayMap2.get(G2);
                                    if (infoRecord2 == null) {
                                        infoRecord2 = ViewInfoStore.InfoRecord.a();
                                        simpleArrayMap2.put(G2, infoRecord2);
                                    }
                                    infoRecord2.a = 1 | infoRecord2.a;
                                } else {
                                    recyclerView2.p.c(G2);
                                }
                                layoutManager.a.b(u, i, layoutParams2, G2.h());
                            } else {
                                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + layoutManager.b.toString());
                            }
                        }
                    } else {
                        throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.b.indexOfChild(view) + this.b.w());
                    }
                } else {
                    childHelper.a(view, i, false);
                    layoutParams.c = true;
                    LinearSmoothScroller linearSmoothScroller = this.e;
                    if (linearSmoothScroller != null && linearSmoothScroller.e) {
                        linearSmoothScroller.b.getClass();
                        ViewHolder G3 = RecyclerView.G(view);
                        if (G3 != null) {
                            i3 = G3.b();
                        }
                        if (i3 == linearSmoothScroller.a) {
                            linearSmoothScroller.f = view;
                        }
                    }
                }
            } else {
                if (G.i()) {
                    G.n.l(G);
                } else {
                    G.j &= -33;
                }
                this.a.b(view, i, view.getLayoutParams(), false);
            }
            if (layoutParams.d) {
                G.a.invalidate();
                layoutParams.d = false;
            }
        }

        public abstract Parcelable b0();

        public abstract void c(String str);

        public abstract boolean d();

        public final void d0(Recycler recycler) {
            for (int v = v() - 1; v >= 0; v--) {
                if (!RecyclerView.G(u(v)).o()) {
                    View u = u(v);
                    g0(v);
                    recycler.h(u);
                }
            }
        }

        public abstract boolean e();

        public final void e0(Recycler recycler) {
            ArrayList arrayList;
            int size = recycler.a.size();
            int i = size - 1;
            while (true) {
                arrayList = recycler.a;
                if (i < 0) {
                    break;
                }
                View view = ((ViewHolder) arrayList.get(i)).a;
                ViewHolder G = RecyclerView.G(view);
                if (!G.o()) {
                    G.n(false);
                    if (G.j()) {
                        this.b.removeDetachedView(view, false);
                    }
                    ItemAnimator itemAnimator = this.b.S;
                    if (itemAnimator != null) {
                        itemAnimator.d(G);
                    }
                    G.n(true);
                    ViewHolder G2 = RecyclerView.G(view);
                    G2.n = null;
                    G2.o = false;
                    G2.j &= -33;
                    recycler.i(G2);
                }
                i--;
            }
            arrayList.clear();
            ArrayList arrayList2 = recycler.b;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
            if (size > 0) {
                this.b.invalidate();
            }
        }

        public boolean f(LayoutParams layoutParams) {
            if (layoutParams != null) {
                return true;
            }
            return false;
        }

        public final void f0(View view, Recycler recycler) {
            ChildHelper childHelper = this.a;
            AnonymousClass5 anonymousClass5 = childHelper.a;
            int indexOfChild = RecyclerView.this.indexOfChild(view);
            if (indexOfChild >= 0) {
                if (childHelper.b.f(indexOfChild)) {
                    childHelper.j(view);
                }
                anonymousClass5.a(indexOfChild);
            }
            recycler.h(view);
        }

        public final void g0(int i) {
            if (u(i) != null) {
                ChildHelper childHelper = this.a;
                int f = childHelper.f(i);
                AnonymousClass5 anonymousClass5 = childHelper.a;
                View childAt = RecyclerView.this.getChildAt(f);
                if (childAt != null) {
                    if (childHelper.b.f(f)) {
                        childHelper.j(childAt);
                    }
                    anonymousClass5.a(f);
                }
            }
        }

        public abstract void h(int i, int i2, State state, LayoutPrefetchRegistry layoutPrefetchRegistry);

        /* JADX WARN: Code restructure failed: missing block: B:18:0x00af, code lost:
        
            if ((r8.bottom - r10) > r2) goto L28;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean h0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int A = A();
            int C = C();
            int B = this.n - B();
            int z3 = this.o - z();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width() + left;
            int height = rect.height() + top;
            int i = left - A;
            int min = Math.min(0, i);
            int i2 = top - C;
            int min2 = Math.min(0, i2);
            int i3 = width - B;
            int max = Math.max(0, i3);
            int max2 = Math.max(0, height - z3);
            RecyclerView recyclerView2 = this.b;
            Field field = ViewCompat.a;
            if (recyclerView2.getLayoutDirection() == 1) {
                if (max == 0) {
                    max = Math.max(min, i3);
                }
            } else {
                if (min == 0) {
                    min = Math.min(i, max);
                }
                max = min;
            }
            if (min2 == 0) {
                min2 = Math.min(i2, max2);
            }
            int[] iArr = {max, min2};
            int i4 = iArr[0];
            int i5 = iArr[1];
            if (z2) {
                View focusedChild = recyclerView.getFocusedChild();
                if (focusedChild != null) {
                    int A2 = A();
                    int C2 = C();
                    int B2 = this.n - B();
                    int z4 = this.o - z();
                    Rect rect2 = this.b.r;
                    y(focusedChild, rect2);
                    if (rect2.left - i4 < B2) {
                        if (rect2.right - i4 > A2) {
                            if (rect2.top - i5 < z4) {
                            }
                        }
                    }
                }
                return false;
            }
            if (i4 != 0 || i5 != 0) {
                if (z) {
                    recyclerView.scrollBy(i4, i5);
                    return true;
                }
                recyclerView.Z(i4, i5, false);
                return true;
            }
            return false;
        }

        public final void i0() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public abstract int j(State state);

        public abstract int j0(int i, Recycler recycler, State state);

        public abstract int k(State state);

        public abstract void k0(int i);

        public abstract int l(State state);

        public abstract int l0(int i, Recycler recycler, State state);

        public abstract int m(State state);

        public final void m0(RecyclerView recyclerView) {
            n0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public abstract int n(State state);

        public final void n0(int i, int i2) {
            this.n = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.l = mode;
            if (mode == 0 && !RecyclerView.H0) {
                this.n = 0;
            }
            this.o = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.m = mode2;
            if (mode2 == 0 && !RecyclerView.H0) {
                this.o = 0;
            }
        }

        public abstract int o(State state);

        public void o0(Rect rect, int i, int i2) {
            int B = B() + A() + rect.width();
            int z = z() + C() + rect.height();
            RecyclerView recyclerView = this.b;
            Field field = ViewCompat.a;
            this.b.setMeasuredDimension(g(i, B, recyclerView.getMinimumWidth()), g(i2, z, this.b.getMinimumHeight()));
        }

        public final void p(Recycler recycler) {
            for (int v = v() - 1; v >= 0; v--) {
                View u = u(v);
                ViewHolder G = RecyclerView.G(u);
                if (!G.o()) {
                    if (G.f() && !G.h() && !this.b.u.b) {
                        g0(v);
                        recycler.i(G);
                    } else {
                        u(v);
                        this.a.c(v);
                        recycler.j(u);
                        this.b.p.c(G);
                    }
                }
            }
        }

        public final void p0(int i, int i2) {
            int v = v();
            if (v == 0) {
                this.b.l(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < v; i7++) {
                View u = u(i7);
                Rect rect = this.b.r;
                y(u, rect);
                int i8 = rect.left;
                if (i8 < i6) {
                    i6 = i8;
                }
                int i9 = rect.right;
                if (i9 > i3) {
                    i3 = i9;
                }
                int i10 = rect.top;
                if (i10 < i4) {
                    i4 = i10;
                }
                int i11 = rect.bottom;
                if (i11 > i5) {
                    i5 = i11;
                }
            }
            this.b.r.set(i6, i4, i3, i5);
            o0(this.b.r, i, i2);
        }

        public View q(int i) {
            int v = v();
            for (int i2 = 0; i2 < v; i2++) {
                View u = u(i2);
                ViewHolder G = RecyclerView.G(u);
                if (G != null && G.b() == i && !G.o() && (this.b.m0.g || !G.h())) {
                    return u;
                }
            }
            return null;
        }

        public final void q0(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.b = null;
                this.a = null;
                this.n = 0;
                this.o = 0;
            } else {
                this.b = recyclerView;
                this.a = recyclerView.o;
                this.n = recyclerView.getWidth();
                this.o = recyclerView.getHeight();
            }
            this.l = 1073741824;
            this.m = 1073741824;
        }

        public abstract LayoutParams r();

        public final boolean r0(View view, int i, int i2, LayoutParams layoutParams) {
            if (!view.isLayoutRequested() && this.h && I(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && I(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) {
                return false;
            }
            return true;
        }

        public LayoutParams s(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public boolean s0() {
            return false;
        }

        public LayoutParams t(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new LayoutParams(layoutParams);
        }

        public final boolean t0(View view, int i, int i2, LayoutParams layoutParams) {
            if (this.h && I(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && I(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) {
                return false;
            }
            return true;
        }

        public final View u(int i) {
            ChildHelper childHelper = this.a;
            if (childHelper != null) {
                return childHelper.d(i);
            }
            return null;
        }

        public final void u0(LinearSmoothScroller linearSmoothScroller) {
            LinearSmoothScroller linearSmoothScroller2 = this.e;
            if (linearSmoothScroller2 != null && linearSmoothScroller != linearSmoothScroller2 && linearSmoothScroller2.e) {
                linearSmoothScroller2.d();
            }
            this.e = linearSmoothScroller;
            RecyclerView recyclerView = this.b;
            ViewFlinger viewFlinger = recyclerView.j0;
            RecyclerView.this.removeCallbacks(viewFlinger);
            viewFlinger.l.abortAnimation();
            if (linearSmoothScroller.h) {
                Log.w("RecyclerView", "An instance of " + linearSmoothScroller.getClass().getSimpleName() + " was started more than once. Each instance of" + linearSmoothScroller.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            linearSmoothScroller.b = recyclerView;
            linearSmoothScroller.c = this;
            int i = linearSmoothScroller.a;
            if (i != -1) {
                recyclerView.m0.a = i;
                linearSmoothScroller.e = true;
                linearSmoothScroller.d = true;
                linearSmoothScroller.f = recyclerView.v.q(i);
                linearSmoothScroller.b.j0.b();
                linearSmoothScroller.h = true;
                return;
            }
            u2.g("Invalid target position");
        }

        public final int v() {
            ChildHelper childHelper = this.a;
            if (childHelper != null) {
                return childHelper.e();
            }
            return 0;
        }

        public abstract boolean v0();

        public int x(Recycler recycler, State state) {
            return -1;
        }

        public final int z() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public void M() {
        }

        public void U() {
        }

        public void c0(int i) {
        }

        public void T(int i, int i2) {
        }

        public void V(int i, int i2) {
        }

        public void W(int i, int i2) {
        }

        public void X(int i, int i2) {
        }

        public void i(int i, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        public void S(Recycler recycler, State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutManager layoutManager = this.v;
        if (layoutManager != null) {
            return layoutManager.t(layoutParams);
        }
        u2.l("RecyclerView has no LayoutManager".concat(w()));
        return null;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class ItemDecoration {
        public abstract void b(Canvas canvas);

        public void a(RecyclerView recyclerView) {
        }
    }

    public void setOnFlingListener(OnFlingListener onFlingListener) {
    }

    @Deprecated
    public void setRecyclerListener(RecyclerListener recyclerListener) {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class OnScrollListener {
        public abstract void b(RecyclerView recyclerView, int i, int i2);

        public void a(RecyclerView recyclerView, int i) {
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, net.blip.android.R.attr.recyclerViewStyle);
    }
}
