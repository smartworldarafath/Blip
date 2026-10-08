package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.fe;
import defpackage.jb;
import defpackage.q;
import defpackage.u2;
import java.lang.reflect.Field;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public boolean E;
    public int F;
    public int[] G;
    public View[] H;
    public final SparseIntArray I;
    public final SparseIntArray J;
    public final DefaultSpanSizeLookup K;
    public final Rect L;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {
        public int e;
        public int f;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.e = -1;
            this.f = 0;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class SpanSizeLookup {
        public final SparseIntArray a = new SparseIntArray();
        public final SparseIntArray b = new SparseIntArray();

        public static int a(int i, int i2) {
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i3++;
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                } else if (i3 > i2) {
                    i4++;
                    i3 = 1;
                }
            }
            if (i3 + 1 > i2) {
                return i4 + 1;
            }
            return i4;
        }

        public final void b() {
            this.a.clear();
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.GridLayoutManager$SpanSizeLookup, androidx.recyclerview.widget.GridLayoutManager$DefaultSpanSizeLookup] */
    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.E = false;
        this.F = -1;
        this.I = new SparseIntArray();
        this.J = new SparseIntArray();
        this.K = new SpanSizeLookup();
        this.L = new Rect();
        int i3 = RecyclerView.LayoutManager.E(context, attributeSet, i, i2).b;
        if (i3 != this.F) {
            this.E = true;
            if (i3 >= 1) {
                this.F = i3;
                this.K.b();
                i0();
                return;
            }
            u2.g(q.g(i3, "Span count should be at least 1. Provided "));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int F(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 0) {
            return this.F;
        }
        if (state.b() < 1) {
            return 0;
        }
        return c1(state.b() - 1, recycler, state) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View I0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z, boolean z2) {
        int i;
        int i2;
        int v = v();
        int i3 = 1;
        if (z2) {
            i2 = v() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = v;
            i2 = 0;
        }
        int b = state.b();
        C0();
        int k = this.r.k();
        int g = this.r.g();
        View view = null;
        View view2 = null;
        while (i2 != i) {
            View u = u(i2);
            int D = RecyclerView.LayoutManager.D(u);
            if (D >= 0 && D < b && d1(D, recycler, state) == 0) {
                if (((RecyclerView.LayoutParams) u.getLayoutParams()).a.h()) {
                    if (view2 == null) {
                        view2 = u;
                    }
                } else {
                    if (this.r.e(u) < g && this.r.b(u) >= k) {
                        return u;
                    }
                    if (view == null) {
                        view = u;
                    }
                }
            }
            i2 += i3;
        }
        if (view != null) {
            return view;
        }
        return view2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e0, code lost:
    
        if (r13 == r10) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0105, code lost:
    
        if (r13 == r9) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x001f, code lost:
    
        if (r22.a.c.contains(r3) != false) goto L10;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View O(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View y;
        boolean z;
        int v;
        int i2;
        int i3;
        boolean z2;
        View view2;
        View view3;
        int i4;
        int i5;
        boolean z3;
        boolean z4;
        RecyclerView.Recycler recycler2 = recycler;
        RecyclerView.State state2 = state;
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            y = recyclerView.y(view);
            if (y != null) {
            }
        }
        y = null;
        if (y != null) {
            LayoutParams layoutParams = (LayoutParams) y.getLayoutParams();
            int i6 = layoutParams.e;
            int i7 = layoutParams.f + i6;
            if (super.O(view, i, recycler, state) != null) {
                if (B0(i) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (z != this.u) {
                    i3 = v() - 1;
                    v = -1;
                    i2 = -1;
                } else {
                    v = v();
                    i2 = 1;
                    i3 = 0;
                }
                if (this.p == 1 && N0()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                int c1 = c1(i3, recycler2, state2);
                View view4 = null;
                int i8 = -1;
                int i9 = -1;
                int i10 = 0;
                int i11 = i3;
                int i12 = 0;
                View view5 = null;
                while (true) {
                    view2 = view5;
                    if (i11 == v) {
                        break;
                    }
                    int c12 = c1(i11, recycler2, state2);
                    View u = u(i11);
                    if (u == y) {
                        break;
                    }
                    if (u.hasFocusable() && c12 != c1) {
                        if (view4 != null) {
                            break;
                        }
                        view3 = y;
                        i5 = i10;
                        i4 = v;
                    } else {
                        LayoutParams layoutParams2 = (LayoutParams) u.getLayoutParams();
                        int i13 = layoutParams2.e;
                        view3 = y;
                        int i14 = layoutParams2.f + i13;
                        if (u.hasFocusable() && i13 == i6 && i14 == i7) {
                            return u;
                        }
                        if ((u.hasFocusable() && view4 == null) || (!u.hasFocusable() && view2 == null)) {
                            i5 = i10;
                            i4 = v;
                        } else {
                            i4 = v;
                            int min = Math.min(i14, i7) - Math.max(i13, i6);
                            if (u.hasFocusable()) {
                                if (min <= i10) {
                                    if (min == i10) {
                                        if (i13 > i9) {
                                            z4 = true;
                                        } else {
                                            z4 = false;
                                        }
                                    }
                                    i5 = i10;
                                }
                                i5 = i10;
                            } else {
                                if (view4 == null) {
                                    i5 = i10;
                                    if (!this.c.b(u) || !this.d.b(u)) {
                                        if (min <= i12) {
                                            if (min == i12) {
                                                if (i13 > i8) {
                                                    z3 = true;
                                                } else {
                                                    z3 = false;
                                                }
                                            }
                                        }
                                    }
                                }
                                i5 = i10;
                            }
                        }
                        boolean hasFocusable = u.hasFocusable();
                        int i15 = layoutParams2.e;
                        if (hasFocusable) {
                            i10 = Math.min(i14, i7) - Math.max(i13, i6);
                            view4 = u;
                            i9 = i15;
                            view5 = view2;
                        } else {
                            i12 = Math.min(i14, i7) - Math.max(i13, i6);
                            i8 = i15;
                            i10 = i5;
                            view5 = u;
                        }
                        i11 += i2;
                        recycler2 = recycler;
                        state2 = state;
                        y = view3;
                        v = i4;
                    }
                    view5 = view2;
                    i10 = i5;
                    i11 += i2;
                    recycler2 = recycler;
                    state2 = state;
                    y = view3;
                    v = i4;
                }
                if (view4 != null) {
                    return view4;
                }
                return view2;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008a, code lost:
    
        r22.b = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v20, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v31 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void O0(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, LinearLayoutManager.LayoutChunkResult layoutChunkResult) {
        boolean z;
        int i;
        boolean z2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int w;
        int i8;
        ?? r12;
        int i9;
        View b;
        int j = this.r.j();
        if (j != 1073741824) {
            z = true;
        } else {
            z = false;
        }
        if (v() > 0) {
            i = this.G[this.F];
        } else {
            i = 0;
        }
        if (z) {
            g1();
        }
        if (layoutState.e == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        int i10 = this.F;
        if (!z2) {
            i10 = d1(layoutState.d, recycler, state) + e1(layoutState.d, recycler, state);
        }
        int i11 = 0;
        while (i11 < this.F && (i9 = layoutState.d) >= 0 && i9 < state.b() && i10 > 0) {
            int i12 = layoutState.d;
            int e1 = e1(i12, recycler, state);
            if (e1 <= this.F) {
                i10 -= e1;
                if (i10 < 0 || (b = layoutState.b(recycler)) == null) {
                    break;
                }
                this.H[i11] = b;
                i11++;
            } else {
                u2.g(jb.i(jb.k("Item at position ", i12, " requires ", e1, " spans but GridLayoutManager has only "), this.F, " spans."));
                return;
            }
        }
        if (z2) {
            i4 = 1;
            i3 = i11;
            i2 = 0;
        } else {
            i2 = i11 - 1;
            i3 = -1;
            i4 = -1;
        }
        int i13 = 0;
        while (i2 != i3) {
            View view = this.H[i2];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int e12 = e1(RecyclerView.LayoutManager.D(view), recycler, state);
            layoutParams.f = e12;
            layoutParams.e = i13;
            i13 += e12;
            i2 += i4;
        }
        float f = 0.0f;
        int i14 = 0;
        for (int i15 = 0; i15 < i11; i15++) {
            View view2 = this.H[i15];
            if (layoutState.k == null) {
                if (z2) {
                    r12 = 0;
                    b(view2, -1, false);
                } else {
                    r12 = 0;
                    b(view2, 0, false);
                }
            } else {
                r12 = 0;
                r12 = 0;
                if (z2) {
                    b(view2, -1, true);
                } else {
                    b(view2, 0, true);
                }
            }
            RecyclerView recyclerView = this.b;
            Rect rect = this.L;
            if (recyclerView == null) {
                rect.set(r12, r12, r12, r12);
            } else {
                rect.set(recyclerView.H(view2));
            }
            f1(view2, j, r12);
            int c = this.r.c(view2);
            if (c > i14) {
                i14 = c;
            }
            float d = (this.r.d(view2) * 1.0f) / ((LayoutParams) view2.getLayoutParams()).f;
            if (d > f) {
                f = d;
            }
        }
        if (z) {
            Z0(Math.max(Math.round(f * this.F), i));
            i14 = 0;
            for (int i16 = 0; i16 < i11; i16++) {
                View view3 = this.H[i16];
                f1(view3, 1073741824, true);
                int c2 = this.r.c(view3);
                if (c2 > i14) {
                    i14 = c2;
                }
            }
        }
        for (int i17 = 0; i17 < i11; i17++) {
            View view4 = this.H[i17];
            if (this.r.c(view4) != i14) {
                LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
                Rect rect2 = layoutParams2.b;
                int i18 = rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                int i19 = rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                int b1 = b1(layoutParams2.e, layoutParams2.f);
                if (this.p == 1) {
                    i8 = RecyclerView.LayoutManager.w(false, b1, 1073741824, i19, ((ViewGroup.MarginLayoutParams) layoutParams2).width);
                    w = View.MeasureSpec.makeMeasureSpec(i14 - i18, 1073741824);
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i14 - i19, 1073741824);
                    w = RecyclerView.LayoutManager.w(false, b1, 1073741824, i18, ((ViewGroup.MarginLayoutParams) layoutParams2).height);
                    i8 = makeMeasureSpec;
                }
                if (t0(view4, i8, w, (RecyclerView.LayoutParams) view4.getLayoutParams())) {
                    view4.measure(i8, w);
                }
            }
        }
        layoutChunkResult.a = i14;
        int i20 = this.p;
        int i21 = layoutState.f;
        int i22 = layoutState.b;
        if (i20 == 1) {
            if (i21 == -1) {
                i6 = i22 - i14;
                i7 = 0;
                i5 = 0;
            } else {
                i5 = 0;
                i6 = i22;
                i22 += i14;
                i7 = 0;
            }
        } else {
            if (i21 == -1) {
                i7 = i22 - i14;
                i6 = 0;
                i5 = i22;
            } else {
                i5 = i22 + i14;
                i6 = 0;
                i7 = i22;
            }
            i22 = i6;
        }
        int i23 = 0;
        while (true) {
            View[] viewArr = this.H;
            if (i23 < i11) {
                View view5 = viewArr[i23];
                LayoutParams layoutParams3 = (LayoutParams) view5.getLayoutParams();
                if (this.p == 1) {
                    if (N0()) {
                        int A = A() + this.G[this.F - layoutParams3.e];
                        i5 = A;
                        i7 = A - this.r.d(view5);
                    } else {
                        i7 = A() + this.G[layoutParams3.e];
                        i5 = this.r.d(view5) + i7;
                    }
                } else {
                    i6 = C() + this.G[layoutParams3.e];
                    i22 = this.r.d(view5) + i6;
                }
                RecyclerView.LayoutManager.J(view5, i7, i6, i5, i22);
                if (layoutParams3.a.h() || layoutParams3.a.k()) {
                    layoutChunkResult.c = true;
                }
                layoutChunkResult.d = view5.hasFocusable() | layoutChunkResult.d;
                i23++;
            } else {
                Arrays.fill(viewArr, (Object) null);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void P0(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.AnchorInfo anchorInfo, int i) {
        boolean z;
        g1();
        if (state.b() > 0 && !state.g) {
            if (i == 1) {
                z = true;
            } else {
                z = false;
            }
            int d1 = d1(anchorInfo.b, recycler, state);
            if (z) {
                while (d1 > 0) {
                    int i2 = anchorInfo.b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    anchorInfo.b = i3;
                    d1 = d1(i3, recycler, state);
                }
            } else {
                int b = state.b() - 1;
                int i4 = anchorInfo.b;
                while (i4 < b) {
                    int i5 = i4 + 1;
                    int d12 = d1(i5, recycler, state);
                    if (d12 <= d1) {
                        break;
                    }
                    i4 = i5;
                    d1 = d12;
                }
                anchorInfo.b = i4;
            }
        }
        a1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Q(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.Q(recycler, state, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.i("android.widget.GridView");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void S(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            R(view, accessibilityNodeInfoCompat);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int c1 = c1(layoutParams2.a.b(), recycler, state);
        int i = this.p;
        int i2 = layoutParams2.e;
        int i3 = layoutParams2.f;
        if (i == 0) {
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(false, i2, i3, c1, 1));
        } else {
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(false, c1, 1, i2, i3));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void T(int i, int i2) {
        DefaultSpanSizeLookup defaultSpanSizeLookup = this.K;
        defaultSpanSizeLookup.b();
        defaultSpanSizeLookup.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void U() {
        DefaultSpanSizeLookup defaultSpanSizeLookup = this.K;
        defaultSpanSizeLookup.b();
        defaultSpanSizeLookup.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void V(int i, int i2) {
        DefaultSpanSizeLookup defaultSpanSizeLookup = this.K;
        defaultSpanSizeLookup.b();
        defaultSpanSizeLookup.b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void V0(boolean z) {
        if (!z) {
            super.V0(false);
        } else {
            fe.t("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void W(int i, int i2) {
        DefaultSpanSizeLookup defaultSpanSizeLookup = this.K;
        defaultSpanSizeLookup.b();
        defaultSpanSizeLookup.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void X(int i, int i2) {
        DefaultSpanSizeLookup defaultSpanSizeLookup = this.K;
        defaultSpanSizeLookup.b();
        defaultSpanSizeLookup.b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Y(RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z = state.g;
        SparseIntArray sparseIntArray = this.J;
        SparseIntArray sparseIntArray2 = this.I;
        if (z) {
            int v = v();
            for (int i = 0; i < v; i++) {
                LayoutParams layoutParams = (LayoutParams) u(i).getLayoutParams();
                int b = layoutParams.a.b();
                sparseIntArray2.put(b, layoutParams.f);
                sparseIntArray.put(b, layoutParams.e);
            }
        }
        super.Y(recycler, state);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Z(RecyclerView.State state) {
        super.Z(state);
        this.E = false;
    }

    public final void Z0(int i) {
        int i2;
        int[] iArr = this.G;
        int i3 = this.F;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 > 0 && i3 - i4 < i6) {
                i2 = i5 + 1;
                i4 -= i3;
            } else {
                i2 = i5;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.G = iArr;
    }

    public final void a1() {
        View[] viewArr = this.H;
        if (viewArr != null && viewArr.length == this.F) {
            return;
        }
        this.H = new View[this.F];
    }

    public final int b1(int i, int i2) {
        if (this.p == 1 && N0()) {
            int[] iArr = this.G;
            int i3 = this.F;
            return iArr[i3 - i] - iArr[(i3 - i) - i2];
        }
        int[] iArr2 = this.G;
        return iArr2[i2 + i] - iArr2[i];
    }

    public final int c1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z = state.g;
        DefaultSpanSizeLookup defaultSpanSizeLookup = this.K;
        if (!z) {
            int i2 = this.F;
            defaultSpanSizeLookup.getClass();
            return SpanSizeLookup.a(i, i2);
        }
        int b = recycler.b(i);
        if (b == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
            return 0;
        }
        int i3 = this.F;
        defaultSpanSizeLookup.getClass();
        return SpanSizeLookup.a(b, i3);
    }

    public final int d1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z = state.g;
        DefaultSpanSizeLookup defaultSpanSizeLookup = this.K;
        if (!z) {
            int i2 = this.F;
            defaultSpanSizeLookup.getClass();
            return i % i2;
        }
        int i3 = this.J.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int b = recycler.b(i);
        if (b == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 0;
        }
        int i4 = this.F;
        defaultSpanSizeLookup.getClass();
        return b % i4;
    }

    public final int e1(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z = state.g;
        DefaultSpanSizeLookup defaultSpanSizeLookup = this.K;
        if (!z) {
            defaultSpanSizeLookup.getClass();
            return 1;
        }
        int i2 = this.I.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (recycler.b(i) == -1) {
            Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
            return 1;
        }
        defaultSpanSizeLookup.getClass();
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean f(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void f1(View view, int i, boolean z) {
        int i2;
        int i3;
        boolean r0;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.b;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int b1 = b1(layoutParams.e, layoutParams.f);
        if (this.p == 1) {
            i3 = RecyclerView.LayoutManager.w(false, b1, i, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            i2 = RecyclerView.LayoutManager.w(true, this.r.l(), this.m, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        } else {
            int w = RecyclerView.LayoutManager.w(false, b1, i, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height);
            int w2 = RecyclerView.LayoutManager.w(true, this.r.l(), this.l, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            i2 = w;
            i3 = w2;
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z) {
            r0 = t0(view, i3, i2, layoutParams2);
        } else {
            r0 = r0(view, i3, i2, layoutParams2);
        }
        if (r0) {
            view.measure(i3, i2);
        }
    }

    public final void g1() {
        int z;
        int C;
        if (this.p == 1) {
            z = this.n - B();
            C = A();
        } else {
            z = this.o - z();
            C = C();
        }
        Z0(z - C);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int j0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        g1();
        a1();
        return super.j0(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int k(RecyclerView.State state) {
        return z0(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int l(RecyclerView.State state) {
        return A0(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int l0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        g1();
        a1();
        return super.l0(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int n(RecyclerView.State state) {
        return z0(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int o(RecyclerView.State state) {
        return A0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void o0(Rect rect, int i, int i2) {
        int g;
        int g2;
        if (this.G == null) {
            super.o0(rect, i, i2);
        }
        int B = B() + A();
        int z = z() + C();
        if (this.p == 1) {
            int height = rect.height() + z;
            RecyclerView recyclerView = this.b;
            Field field = ViewCompat.a;
            g2 = RecyclerView.LayoutManager.g(i2, height, recyclerView.getMinimumHeight());
            int[] iArr = this.G;
            g = RecyclerView.LayoutManager.g(i, iArr[iArr.length - 1] + B, this.b.getMinimumWidth());
        } else {
            int width = rect.width() + B;
            RecyclerView recyclerView2 = this.b;
            Field field2 = ViewCompat.a;
            g = RecyclerView.LayoutManager.g(i, width, recyclerView2.getMinimumWidth());
            int[] iArr2 = this.G;
            g2 = RecyclerView.LayoutManager.g(i2, iArr2[iArr2.length - 1] + z, this.b.getMinimumHeight());
        }
        this.b.setMeasuredDimension(g, g2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams r() {
        if (this.p == 0) {
            return new LayoutParams(-2, -1);
        }
        return new LayoutParams(-1, -2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.recyclerview.widget.GridLayoutManager$LayoutParams, androidx.recyclerview.widget.RecyclerView$LayoutParams] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams s(Context context, AttributeSet attributeSet) {
        ?? layoutParams = new RecyclerView.LayoutParams(context, attributeSet);
        layoutParams.e = -1;
        layoutParams.f = 0;
        return layoutParams;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.recyclerview.widget.GridLayoutManager$LayoutParams, androidx.recyclerview.widget.RecyclerView$LayoutParams] */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.recyclerview.widget.GridLayoutManager$LayoutParams, androidx.recyclerview.widget.RecyclerView$LayoutParams] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ?? layoutParams2 = new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            layoutParams2.e = -1;
            layoutParams2.f = 0;
            return layoutParams2;
        }
        ?? layoutParams3 = new RecyclerView.LayoutParams(layoutParams);
        layoutParams3.e = -1;
        layoutParams3.f = 0;
        return layoutParams3;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean v0() {
        if (this.z == null && !this.E) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int x(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 1) {
            return this.F;
        }
        if (state.b() < 1) {
            return 0;
        }
        return c1(state.b() - 1, recycler, state) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void x0(RecyclerView.State state, LinearLayoutManager.LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i;
        int i2 = this.F;
        for (int i3 = 0; i3 < this.F && (i = layoutState.d) >= 0 && i < state.b() && i2 > 0; i3++) {
            ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(layoutState.d, Math.max(0, layoutState.g));
            this.K.getClass();
            i2--;
            layoutState.d += layoutState.e;
        }
    }
}
