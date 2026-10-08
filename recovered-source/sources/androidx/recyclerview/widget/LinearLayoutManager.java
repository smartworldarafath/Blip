package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.q;
import defpackage.u2;
import java.lang.reflect.Field;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    public final AnchorInfo A;
    public final LayoutChunkResult B;
    public final int C;
    public final int[] D;
    public int p;
    public LayoutState q;
    public OrientationHelper r;
    public boolean s;
    public final boolean t;
    public boolean u;
    public boolean v;
    public final boolean w;
    public int x;
    public int y;
    public SavedState z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class AnchorInfo {
        public OrientationHelper a;
        public int b;
        public int c;
        public boolean d;
        public boolean e;

        public AnchorInfo() {
            c();
        }

        public final void a() {
            int k;
            boolean z = this.d;
            OrientationHelper orientationHelper = this.a;
            if (z) {
                k = orientationHelper.g();
            } else {
                k = orientationHelper.k();
            }
            this.c = k;
        }

        public final void b(View view, int i) {
            int l;
            OrientationHelper orientationHelper = this.a;
            int i2 = 0;
            if (Integer.MIN_VALUE == orientationHelper.b) {
                l = 0;
            } else {
                l = orientationHelper.l() - orientationHelper.b;
            }
            if (l >= 0) {
                boolean z = this.d;
                OrientationHelper orientationHelper2 = this.a;
                if (z) {
                    int b = orientationHelper2.b(view);
                    OrientationHelper orientationHelper3 = this.a;
                    if (Integer.MIN_VALUE != orientationHelper3.b) {
                        i2 = orientationHelper3.l() - orientationHelper3.b;
                    }
                    this.c = i2 + b;
                } else {
                    this.c = orientationHelper2.e(view);
                }
                this.b = i;
                return;
            }
            this.b = i;
            boolean z2 = this.d;
            OrientationHelper orientationHelper4 = this.a;
            if (z2) {
                int g = (orientationHelper4.g() - l) - this.a.b(view);
                this.c = this.a.g() - g;
                if (g > 0) {
                    int c = this.c - this.a.c(view);
                    int k = this.a.k();
                    int min = c - (Math.min(this.a.e(view) - k, 0) + k);
                    if (min < 0) {
                        this.c = Math.min(g, -min) + this.c;
                        return;
                    }
                    return;
                }
                return;
            }
            int e = orientationHelper4.e(view);
            int k2 = e - this.a.k();
            this.c = e;
            if (k2 > 0) {
                int g2 = (this.a.g() - Math.min(0, (this.a.g() - l) - this.a.b(view))) - (this.a.c(view) + e);
                if (g2 < 0) {
                    this.c -= Math.min(k2, -g2);
                }
            }
        }

        public final void c() {
            this.b = -1;
            this.c = Integer.MIN_VALUE;
            this.d = false;
            this.e = false;
        }

        public final String toString() {
            return "AnchorInfo{mPosition=" + this.b + ", mCoordinate=" + this.c + ", mLayoutFromEnd=" + this.d + ", mValid=" + this.e + '}';
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LayoutChunkResult {
        public int a;
        public boolean b;
        public boolean c;
        public boolean d;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LayoutState {
        public boolean a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public List k;
        public boolean l;

        public final void a(View view) {
            int b;
            int size = this.k.size();
            View view2 = null;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = ((RecyclerView.ViewHolder) this.k.get(i2)).a;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.a.h() && (b = (layoutParams.a.b() - this.d) * this.e) >= 0 && b < i) {
                    view2 = view3;
                    if (b == 0) {
                        break;
                    } else {
                        i = b;
                    }
                }
            }
            if (view2 == null) {
                this.d = -1;
            } else {
                this.d = ((RecyclerView.LayoutParams) view2.getLayoutParams()).a.b();
            }
        }

        public final View b(RecyclerView.Recycler recycler) {
            List list = this.k;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    View view = ((RecyclerView.ViewHolder) this.k.get(i)).a;
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                    if (!layoutParams.a.h() && this.d == layoutParams.a.b()) {
                        a(view);
                        return view;
                    }
                }
                return null;
            }
            View view2 = recycler.k(this.d, Long.MAX_VALUE).a;
            this.d += this.e;
            return view2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public int j;
        public int k;
        public boolean l;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Type inference failed for: r1v1, types: [androidx.recyclerview.widget.LinearLayoutManager$SavedState, java.lang.Object] */
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                ?? obj = new Object();
                obj.j = parcel.readInt();
                obj.k = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                obj.l = z;
                return obj;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.j);
            parcel.writeInt(this.k);
            parcel.writeInt(this.l ? 1 : 0);
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.recyclerview.widget.LinearLayoutManager$LayoutChunkResult, java.lang.Object] */
    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.p = 1;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = true;
        this.x = -1;
        this.y = Integer.MIN_VALUE;
        this.z = null;
        this.A = new AnchorInfo();
        this.B = new Object();
        this.C = 2;
        this.D = new int[2];
        RecyclerView.LayoutManager.Properties E = RecyclerView.LayoutManager.E(context, attributeSet, i, i2);
        U0(E.a);
        boolean z = E.c;
        c(null);
        if (z != this.t) {
            this.t = z;
            i0();
        }
        V0(E.d);
    }

    public final int A0(RecyclerView.State state) {
        if (v() == 0) {
            return 0;
        }
        C0();
        OrientationHelper orientationHelper = this.r;
        boolean z = !this.w;
        return ScrollbarHelper.c(state, orientationHelper, F0(z), E0(z), this, this.w);
    }

    public final int B0(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 17) {
                    if (i != 33) {
                        if (i != 66) {
                            if (i == 130 && this.p == 1) {
                                return 1;
                            }
                            return Integer.MIN_VALUE;
                        }
                        if (this.p == 0) {
                            return 1;
                        }
                        return Integer.MIN_VALUE;
                    }
                    if (this.p == 1) {
                        return -1;
                    }
                    return Integer.MIN_VALUE;
                }
                if (this.p == 0) {
                    return -1;
                }
                return Integer.MIN_VALUE;
            }
            if (this.p != 1 && N0()) {
                return -1;
            }
            return 1;
        }
        if (this.p == 1 || !N0()) {
            return -1;
        }
        return 1;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.recyclerview.widget.LinearLayoutManager$LayoutState] */
    public final void C0() {
        if (this.q == null) {
            ?? obj = new Object();
            obj.a = true;
            obj.h = 0;
            obj.i = 0;
            obj.k = null;
            this.q = obj;
        }
    }

    public final int D0(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state, boolean z) {
        int i;
        int i2 = layoutState.c;
        int i3 = layoutState.g;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                layoutState.g = i3 + i2;
            }
            Q0(recycler, layoutState);
        }
        int i4 = layoutState.c + layoutState.h;
        while (true) {
            if ((!layoutState.l && i4 <= 0) || (i = layoutState.d) < 0 || i >= state.b()) {
                break;
            }
            LayoutChunkResult layoutChunkResult = this.B;
            layoutChunkResult.a = 0;
            layoutChunkResult.b = false;
            layoutChunkResult.c = false;
            layoutChunkResult.d = false;
            O0(recycler, state, layoutState, layoutChunkResult);
            if (!layoutChunkResult.b) {
                int i5 = layoutState.b;
                int i6 = layoutChunkResult.a;
                layoutState.b = (layoutState.f * i6) + i5;
                if (!layoutChunkResult.c || layoutState.k != null || !state.g) {
                    layoutState.c -= i6;
                    i4 -= i6;
                }
                int i7 = layoutState.g;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + i6;
                    layoutState.g = i8;
                    int i9 = layoutState.c;
                    if (i9 < 0) {
                        layoutState.g = i8 + i9;
                    }
                    Q0(recycler, layoutState);
                }
                if (z && layoutChunkResult.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - layoutState.c;
    }

    public final View E0(boolean z) {
        if (this.u) {
            return H0(0, v(), z);
        }
        return H0(v() - 1, -1, z);
    }

    public final View F0(boolean z) {
        if (this.u) {
            return H0(v() - 1, -1, z);
        }
        return H0(0, v(), z);
    }

    public final View G0(int i, int i2) {
        int i3;
        int i4;
        C0();
        if (i2 > i || i2 < i) {
            if (this.r.e(u(i)) < this.r.k()) {
                i3 = 16644;
                i4 = 16388;
            } else {
                i3 = 4161;
                i4 = 4097;
            }
            if (this.p == 0) {
                return this.c.a(i, i2, i3, i4);
            }
            return this.d.a(i, i2, i3, i4);
        }
        return u(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean H() {
        return true;
    }

    public final View H0(int i, int i2, boolean z) {
        int i3;
        C0();
        if (z) {
            i3 = 24579;
        } else {
            i3 = 320;
        }
        if (this.p == 0) {
            return this.c.a(i, i2, i3, 320);
        }
        return this.d.a(i, i2, i3, 320);
    }

    public View I0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        boolean z3;
        boolean z4;
        C0();
        int v = v();
        if (z2) {
            i2 = v() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = v;
            i2 = 0;
            i3 = 1;
        }
        int b = state.b();
        int k = this.r.k();
        int g = this.r.g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i2 != i) {
            View u = u(i2);
            int D = RecyclerView.LayoutManager.D(u);
            int e = this.r.e(u);
            int b2 = this.r.b(u);
            if (D >= 0 && D < b) {
                if (((RecyclerView.LayoutParams) u.getLayoutParams()).a.h()) {
                    if (view3 == null) {
                        view3 = u;
                    }
                } else {
                    if (b2 <= k && e < k) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (e >= g && b2 > g) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (!z3 && !z4) {
                        return u;
                    }
                    if (z) {
                        if (!z4) {
                            if (view != null) {
                            }
                            view = u;
                        }
                        view2 = u;
                    } else {
                        if (!z3) {
                            if (view != null) {
                            }
                            view = u;
                        }
                        view2 = u;
                    }
                }
            }
            i2 += i3;
        }
        if (view != null) {
            return view;
        }
        if (view2 != null) {
            return view2;
        }
        return view3;
    }

    public final int J0(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int g;
        int g2 = this.r.g() - i;
        if (g2 > 0) {
            int i2 = -T0(-g2, recycler, state);
            int i3 = i + i2;
            if (z && (g = this.r.g() - i3) > 0) {
                this.r.o(g);
                return g + i2;
            }
            return i2;
        }
        return 0;
    }

    public final int K0(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int k;
        int k2 = i - this.r.k();
        if (k2 > 0) {
            int i2 = -T0(k2, recycler, state);
            int i3 = i + i2;
            if (z && (k = i3 - this.r.k()) > 0) {
                this.r.o(-k);
                return i2 - k;
            }
            return i2;
        }
        return 0;
    }

    public final View L0() {
        int v;
        if (this.u) {
            v = 0;
        } else {
            v = v() - 1;
        }
        return u(v);
    }

    public final View M0() {
        int i;
        if (this.u) {
            i = v() - 1;
        } else {
            i = 0;
        }
        return u(i);
    }

    public final boolean N0() {
        RecyclerView recyclerView = this.b;
        Field field = ViewCompat.a;
        if (recyclerView.getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View O(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int B0;
        View G0;
        View L0;
        S0();
        if (v() != 0 && (B0 = B0(i)) != Integer.MIN_VALUE) {
            C0();
            W0(B0, (int) (this.r.l() * 0.33333334f), false, state);
            LayoutState layoutState = this.q;
            layoutState.g = Integer.MIN_VALUE;
            layoutState.a = false;
            D0(recycler, layoutState, state, true);
            boolean z = this.u;
            if (B0 == -1) {
                if (z) {
                    G0 = G0(v() - 1, -1);
                } else {
                    G0 = G0(0, v());
                }
            } else if (z) {
                G0 = G0(0, v());
            } else {
                G0 = G0(v() - 1, -1);
            }
            if (B0 == -1) {
                L0 = M0();
            } else {
                L0 = L0();
            }
            if (L0.hasFocusable()) {
                if (G0 != null) {
                    return L0;
                }
            } else {
                return G0;
            }
        }
        return null;
    }

    public void O0(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z2;
        View b = layoutState.b(recycler);
        if (b == null) {
            layoutChunkResult.b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) b.getLayoutParams();
        List list = layoutState.k;
        boolean z3 = this.u;
        int i5 = layoutState.f;
        if (list == null) {
            if (i5 == -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z3 == z2) {
                b(b, -1, false);
            } else {
                b(b, 0, false);
            }
        } else {
            if (i5 == -1) {
                z = true;
            } else {
                z = false;
            }
            if (z3 == z) {
                b(b, -1, true);
            } else {
                b(b, 0, true);
            }
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) b.getLayoutParams();
        Rect H = this.b.H(b);
        int i6 = H.left + H.right;
        int i7 = H.top + H.bottom;
        int w = RecyclerView.LayoutManager.w(d(), this.n, this.l, B() + A() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin + i6, ((ViewGroup.MarginLayoutParams) layoutParams2).width);
        int w2 = RecyclerView.LayoutManager.w(e(), this.o, this.m, z() + C() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i7, ((ViewGroup.MarginLayoutParams) layoutParams2).height);
        if (r0(b, w, w2, layoutParams2)) {
            b.measure(w, w2);
        }
        layoutChunkResult.a = this.r.c(b);
        if (this.p == 1) {
            if (N0()) {
                i4 = this.n - B();
                i2 = i4 - this.r.d(b);
            } else {
                int A = A();
                i4 = this.r.d(b) + A;
                i2 = A;
            }
            int i8 = layoutState.f;
            i3 = layoutState.b;
            int i9 = layoutChunkResult.a;
            if (i8 == -1) {
                int i10 = i3 - i9;
                i = i3;
                i3 = i10;
            } else {
                i = i9 + i3;
            }
        } else {
            int C = C();
            int d = this.r.d(b) + C;
            int i11 = layoutState.f;
            int i12 = layoutState.b;
            int i13 = layoutChunkResult.a;
            if (i11 == -1) {
                int i14 = i12 - i13;
                i4 = i12;
                i3 = C;
                i = d;
                i2 = i14;
            } else {
                int i15 = i12 + i13;
                i = d;
                i2 = i12;
                i3 = C;
                i4 = i15;
            }
        }
        RecyclerView.LayoutManager.J(b, i2, i3, i4, i);
        if (layoutParams.a.h() || layoutParams.a.k()) {
            layoutChunkResult.c = true;
        }
        layoutChunkResult.d = b.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void P(AccessibilityEvent accessibilityEvent) {
        int D;
        super.P(accessibilityEvent);
        if (v() > 0) {
            View H0 = H0(0, v(), false);
            int i = -1;
            if (H0 == null) {
                D = -1;
            } else {
                D = RecyclerView.LayoutManager.D(H0);
            }
            accessibilityEvent.setFromIndex(D);
            View H02 = H0(v() - 1, -1, false);
            if (H02 != null) {
                i = RecyclerView.LayoutManager.D(H02);
            }
            accessibilityEvent.setToIndex(i);
        }
    }

    public final void Q0(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (layoutState.a && !layoutState.l) {
            int i = layoutState.g;
            int i2 = layoutState.i;
            if (layoutState.f == -1) {
                int v = v();
                if (i >= 0) {
                    int f = (this.r.f() - i) + i2;
                    if (this.u) {
                        for (int i3 = 0; i3 < v; i3++) {
                            View u = u(i3);
                            if (this.r.e(u) < f || this.r.n(u) < f) {
                                R0(recycler, 0, i3);
                                return;
                            }
                        }
                        return;
                    }
                    int i4 = v - 1;
                    for (int i5 = i4; i5 >= 0; i5--) {
                        View u2 = u(i5);
                        if (this.r.e(u2) < f || this.r.n(u2) < f) {
                            R0(recycler, i4, i5);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (i >= 0) {
                int i6 = i - i2;
                int v2 = v();
                if (this.u) {
                    int i7 = v2 - 1;
                    for (int i8 = i7; i8 >= 0; i8--) {
                        View u3 = u(i8);
                        if (this.r.b(u3) > i6 || this.r.m(u3) > i6) {
                            R0(recycler, i7, i8);
                            return;
                        }
                    }
                    return;
                }
                for (int i9 = 0; i9 < v2; i9++) {
                    View u4 = u(i9);
                    if (this.r.b(u4) > i6 || this.r.m(u4) > i6) {
                        R0(recycler, 0, i9);
                        return;
                    }
                }
            }
        }
    }

    public final void R0(RecyclerView.Recycler recycler, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                for (int i3 = i2 - 1; i3 >= i; i3--) {
                    View u = u(i3);
                    g0(i3);
                    recycler.h(u);
                }
                return;
            }
            while (i > i2) {
                View u2 = u(i);
                g0(i);
                recycler.h(u2);
                i--;
            }
        }
    }

    public final void S0() {
        if (this.p != 1 && N0()) {
            this.u = !this.t;
        } else {
            this.u = this.t;
        }
    }

    public final int T0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i2;
        if (v() != 0 && i != 0) {
            C0();
            this.q.a = true;
            if (i > 0) {
                i2 = 1;
            } else {
                i2 = -1;
            }
            int abs = Math.abs(i);
            W0(i2, abs, true, state);
            LayoutState layoutState = this.q;
            int D0 = D0(recycler, layoutState, state, false) + layoutState.g;
            if (D0 >= 0) {
                if (abs > D0) {
                    i = i2 * D0;
                }
                this.r.o(-i);
                this.q.j = i;
                return i;
            }
        }
        return 0;
    }

    public final void U0(int i) {
        if (i != 0 && i != 1) {
            u2.g(q.g(i, "invalid orientation:"));
            return;
        }
        c(null);
        if (i == this.p && this.r != null) {
            return;
        }
        OrientationHelper a = OrientationHelper.a(this, i);
        this.r = a;
        this.A.a = a;
        this.p = i;
        i0();
    }

    public void V0(boolean z) {
        c(null);
        if (this.v == z) {
            return;
        }
        this.v = z;
        i0();
    }

    public final void W0(int i, int i2, boolean z, RecyclerView.State state) {
        boolean z2;
        int i3;
        int k;
        LayoutState layoutState = this.q;
        boolean z3 = false;
        int i4 = 1;
        if (this.r.i() == 0 && this.r.f() == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        layoutState.l = z2;
        this.q.f = i;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        w0(state, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        if (i == 1) {
            z3 = true;
        }
        LayoutState layoutState2 = this.q;
        if (z3) {
            i3 = max2;
        } else {
            i3 = max;
        }
        layoutState2.h = i3;
        if (!z3) {
            max = max2;
        }
        layoutState2.i = max;
        if (z3) {
            layoutState2.h = this.r.h() + i3;
            View L0 = L0();
            LayoutState layoutState3 = this.q;
            if (this.u) {
                i4 = -1;
            }
            layoutState3.e = i4;
            int D = RecyclerView.LayoutManager.D(L0);
            LayoutState layoutState4 = this.q;
            layoutState3.d = D + layoutState4.e;
            layoutState4.b = this.r.b(L0);
            k = this.r.b(L0) - this.r.g();
        } else {
            View M0 = M0();
            LayoutState layoutState5 = this.q;
            layoutState5.h = this.r.k() + layoutState5.h;
            LayoutState layoutState6 = this.q;
            if (!this.u) {
                i4 = -1;
            }
            layoutState6.e = i4;
            int D2 = RecyclerView.LayoutManager.D(M0);
            LayoutState layoutState7 = this.q;
            layoutState6.d = D2 + layoutState7.e;
            layoutState7.b = this.r.e(M0);
            k = (-this.r.e(M0)) + this.r.k();
        }
        LayoutState layoutState8 = this.q;
        layoutState8.c = i2;
        if (z) {
            layoutState8.c = i2 - k;
        }
        layoutState8.g = k;
    }

    public final void X0(int i, int i2) {
        int i3;
        this.q.c = this.r.g() - i2;
        LayoutState layoutState = this.q;
        if (this.u) {
            i3 = -1;
        } else {
            i3 = 1;
        }
        layoutState.e = i3;
        layoutState.d = i;
        layoutState.f = 1;
        layoutState.b = i2;
        layoutState.g = Integer.MIN_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v14 */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void Y(RecyclerView.Recycler recycler, RecyclerView.State state) {
        View view;
        int i;
        View view2;
        View I0;
        boolean z;
        boolean z2;
        int l;
        int i2;
        boolean z3;
        boolean z4;
        int e;
        int l2;
        int i3;
        boolean z5;
        int i4;
        int i5;
        ?? r4;
        List list;
        boolean z6;
        int i6;
        int i7;
        int J0;
        int i8;
        View q;
        int e2;
        int i9;
        int i10;
        int i11 = -1;
        if ((this.z != null || this.x != -1) && state.b() == 0) {
            d0(recycler);
            return;
        }
        SavedState savedState = this.z;
        if (savedState != null && (i10 = savedState.j) >= 0) {
            this.x = i10;
        }
        C0();
        boolean z7 = false;
        this.q.a = false;
        S0();
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || (view = recyclerView.getFocusedChild()) == null || this.a.c.contains(view)) {
            view = null;
        }
        AnchorInfo anchorInfo = this.A;
        if (anchorInfo.e && this.x == -1 && this.z == null) {
            if (view != null && (this.r.e(view) >= this.r.g() || this.r.b(view) <= this.r.k())) {
                anchorInfo.b(view, RecyclerView.LayoutManager.D(view));
            }
        } else {
            anchorInfo.c();
            anchorInfo.d = this.u ^ this.v;
            if (!state.g && (i2 = this.x) != -1) {
                if (i2 >= 0 && i2 < state.b()) {
                    int i12 = this.x;
                    anchorInfo.b = i12;
                    SavedState savedState2 = this.z;
                    if (savedState2 != null && savedState2.j >= 0) {
                        boolean z8 = savedState2.l;
                        anchorInfo.d = z8;
                        OrientationHelper orientationHelper = this.r;
                        if (z8) {
                            anchorInfo.c = orientationHelper.g() - this.z.k;
                        } else {
                            anchorInfo.c = orientationHelper.k() + this.z.k;
                        }
                    } else if (this.y == Integer.MIN_VALUE) {
                        View q2 = q(i12);
                        if (q2 != null) {
                            if (this.r.c(q2) > this.r.l()) {
                                anchorInfo.a();
                            } else {
                                int e3 = this.r.e(q2) - this.r.k();
                                OrientationHelper orientationHelper2 = this.r;
                                if (e3 < 0) {
                                    anchorInfo.c = orientationHelper2.k();
                                    anchorInfo.d = false;
                                } else if (orientationHelper2.g() - this.r.b(q2) < 0) {
                                    anchorInfo.c = this.r.g();
                                    anchorInfo.d = true;
                                } else {
                                    boolean z9 = anchorInfo.d;
                                    OrientationHelper orientationHelper3 = this.r;
                                    if (z9) {
                                        int b = orientationHelper3.b(q2);
                                        OrientationHelper orientationHelper4 = this.r;
                                        if (Integer.MIN_VALUE == orientationHelper4.b) {
                                            l2 = 0;
                                        } else {
                                            l2 = orientationHelper4.l() - orientationHelper4.b;
                                        }
                                        e = l2 + b;
                                    } else {
                                        e = orientationHelper3.e(q2);
                                    }
                                    anchorInfo.c = e;
                                }
                            }
                        } else {
                            if (v() > 0) {
                                if (this.x < RecyclerView.LayoutManager.D(u(0))) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (z3 == this.u) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                anchorInfo.d = z4;
                            }
                            anchorInfo.a();
                        }
                    } else {
                        boolean z10 = this.u;
                        anchorInfo.d = z10;
                        OrientationHelper orientationHelper5 = this.r;
                        if (z10) {
                            anchorInfo.c = orientationHelper5.g() - this.y;
                        } else {
                            anchorInfo.c = orientationHelper5.k() + this.y;
                        }
                    }
                    anchorInfo.e = true;
                } else {
                    this.x = -1;
                    this.y = Integer.MIN_VALUE;
                }
            }
            if (v() != 0) {
                RecyclerView recyclerView2 = this.b;
                if (recyclerView2 == null || (view2 = recyclerView2.getFocusedChild()) == null || this.a.c.contains(view2)) {
                    view2 = null;
                }
                if (view2 != null) {
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view2.getLayoutParams();
                    if (!layoutParams.a.h() && layoutParams.a.b() >= 0 && layoutParams.a.b() < state.b()) {
                        anchorInfo.b(view2, RecyclerView.LayoutManager.D(view2));
                        anchorInfo.e = true;
                    }
                }
                boolean z11 = this.s;
                boolean z12 = this.v;
                if (z11 == z12 && (I0 = I0(recycler, state, anchorInfo.d, z12)) != null) {
                    int D = RecyclerView.LayoutManager.D(I0);
                    boolean z13 = anchorInfo.d;
                    OrientationHelper orientationHelper6 = anchorInfo.a;
                    if (z13) {
                        int b2 = orientationHelper6.b(I0);
                        OrientationHelper orientationHelper7 = anchorInfo.a;
                        if (Integer.MIN_VALUE == orientationHelper7.b) {
                            l = 0;
                        } else {
                            l = orientationHelper7.l() - orientationHelper7.b;
                        }
                        anchorInfo.c = l + b2;
                    } else {
                        anchorInfo.c = orientationHelper6.e(I0);
                    }
                    anchorInfo.b = D;
                    if (!state.g && v0()) {
                        int e4 = this.r.e(I0);
                        int b3 = this.r.b(I0);
                        int k = this.r.k();
                        int g = this.r.g();
                        if (b3 <= k && e4 < k) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (e4 >= g && b3 > g) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z || z2) {
                            if (anchorInfo.d) {
                                k = g;
                            }
                            anchorInfo.c = k;
                        }
                    }
                    anchorInfo.e = true;
                }
            }
            anchorInfo.a();
            if (this.v) {
                i = state.b() - 1;
            } else {
                i = 0;
            }
            anchorInfo.b = i;
            anchorInfo.e = true;
        }
        LayoutState layoutState = this.q;
        if (layoutState.j >= 0) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        layoutState.f = i3;
        int[] iArr = this.D;
        iArr[0] = 0;
        iArr[1] = 0;
        w0(state, iArr);
        int k2 = this.r.k() + Math.max(0, iArr[0]);
        int h = this.r.h() + Math.max(0, iArr[1]);
        if (state.g && (i8 = this.x) != -1 && this.y != Integer.MIN_VALUE && (q = q(i8)) != null) {
            boolean z14 = this.u;
            OrientationHelper orientationHelper8 = this.r;
            if (z14) {
                i9 = orientationHelper8.g() - this.r.b(q);
                e2 = this.y;
            } else {
                e2 = orientationHelper8.e(q) - this.r.k();
                i9 = this.y;
            }
            int i13 = i9 - e2;
            if (i13 > 0) {
                k2 += i13;
            } else {
                h -= i13;
            }
        }
        boolean z15 = anchorInfo.d;
        boolean z16 = this.u;
        if (!z15 ? !z16 : z16) {
            i11 = 1;
        }
        P0(recycler, state, anchorInfo, i11);
        p(recycler);
        LayoutState layoutState2 = this.q;
        if (this.r.i() == 0 && this.r.f() == 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        layoutState2.l = z5;
        this.q.getClass();
        this.q.i = 0;
        boolean z17 = anchorInfo.d;
        int i14 = anchorInfo.b;
        if (z17) {
            Y0(i14, anchorInfo.c);
            LayoutState layoutState3 = this.q;
            layoutState3.h = k2;
            D0(recycler, layoutState3, state, false);
            LayoutState layoutState4 = this.q;
            i5 = layoutState4.b;
            int i15 = layoutState4.d;
            int i16 = layoutState4.c;
            if (i16 > 0) {
                h += i16;
            }
            X0(anchorInfo.b, anchorInfo.c);
            LayoutState layoutState5 = this.q;
            layoutState5.h = h;
            layoutState5.d += layoutState5.e;
            D0(recycler, layoutState5, state, false);
            LayoutState layoutState6 = this.q;
            i4 = layoutState6.b;
            int i17 = layoutState6.c;
            if (i17 > 0) {
                Y0(i15, i5);
                LayoutState layoutState7 = this.q;
                layoutState7.h = i17;
                D0(recycler, layoutState7, state, false);
                i5 = this.q.b;
            }
        } else {
            X0(i14, anchorInfo.c);
            LayoutState layoutState8 = this.q;
            layoutState8.h = h;
            D0(recycler, layoutState8, state, false);
            LayoutState layoutState9 = this.q;
            i4 = layoutState9.b;
            int i18 = layoutState9.d;
            int i19 = layoutState9.c;
            if (i19 > 0) {
                k2 += i19;
            }
            Y0(anchorInfo.b, anchorInfo.c);
            LayoutState layoutState10 = this.q;
            layoutState10.h = k2;
            layoutState10.d += layoutState10.e;
            D0(recycler, layoutState10, state, false);
            LayoutState layoutState11 = this.q;
            int i20 = layoutState11.b;
            int i21 = layoutState11.c;
            if (i21 > 0) {
                X0(i18, i4);
                LayoutState layoutState12 = this.q;
                layoutState12.h = i21;
                D0(recycler, layoutState12, state, false);
                i4 = this.q.b;
            }
            i5 = i20;
        }
        if (v() > 0) {
            if (this.u ^ this.v) {
                int J02 = J0(i4, recycler, state, true);
                i6 = i5 + J02;
                i7 = i4 + J02;
                J0 = K0(i6, recycler, state, false);
            } else {
                int K0 = K0(i5, recycler, state, true);
                i6 = i5 + K0;
                i7 = i4 + K0;
                J0 = J0(i7, recycler, state, false);
            }
            i5 = i6 + J0;
            i4 = i7 + J0;
        }
        if (state.k && v() != 0 && !state.g && v0()) {
            List list2 = recycler.d;
            int size = list2.size();
            int D2 = RecyclerView.LayoutManager.D(u(0));
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            while (i22 < size) {
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) list2.get(i22);
                boolean h2 = viewHolder.h();
                View view3 = viewHolder.a;
                if (!h2) {
                    if (viewHolder.b() < D2) {
                        z6 = true;
                    } else {
                        z6 = z7;
                    }
                    boolean z18 = this.u;
                    OrientationHelper orientationHelper9 = this.r;
                    if (z6 != z18) {
                        i23 += orientationHelper9.c(view3);
                    } else {
                        i24 += orientationHelper9.c(view3);
                    }
                }
                i22++;
                z7 = false;
            }
            this.q.k = list2;
            if (i23 > 0) {
                Y0(RecyclerView.LayoutManager.D(M0()), i5);
                LayoutState layoutState13 = this.q;
                layoutState13.h = i23;
                r4 = 0;
                layoutState13.c = 0;
                layoutState13.a(null);
                D0(recycler, this.q, state, false);
            } else {
                r4 = 0;
            }
            if (i24 > 0) {
                X0(RecyclerView.LayoutManager.D(L0()), i4);
                LayoutState layoutState14 = this.q;
                layoutState14.h = i24;
                layoutState14.c = r4;
                list = null;
                layoutState14.a(null);
                D0(recycler, this.q, state, r4);
            } else {
                list = null;
            }
            this.q.k = list;
        }
        if (!state.g) {
            OrientationHelper orientationHelper10 = this.r;
            orientationHelper10.b = orientationHelper10.l();
        } else {
            anchorInfo.c();
        }
        this.s = this.v;
    }

    public final void Y0(int i, int i2) {
        int i3;
        this.q.c = i2 - this.r.k();
        LayoutState layoutState = this.q;
        layoutState.d = i;
        if (this.u) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        layoutState.e = i3;
        layoutState.f = -1;
        layoutState.b = i2;
        layoutState.g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void Z(RecyclerView.State state) {
        this.z = null;
        this.x = -1;
        this.y = Integer.MIN_VALUE;
        this.A.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public final PointF a(int i) {
        if (v() == 0) {
            return null;
        }
        boolean z = false;
        int i2 = 1;
        if (i < RecyclerView.LayoutManager.D(u(0))) {
            z = true;
        }
        if (z != this.u) {
            i2 = -1;
        }
        if (this.p == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void a0(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.z = savedState;
            if (this.x != -1) {
                savedState.j = -1;
            }
            i0();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable, androidx.recyclerview.widget.LinearLayoutManager$SavedState, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.os.Parcelable, androidx.recyclerview.widget.LinearLayoutManager$SavedState, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable b0() {
        SavedState savedState = this.z;
        if (savedState != null) {
            ?? obj = new Object();
            obj.j = savedState.j;
            obj.k = savedState.k;
            obj.l = savedState.l;
            return obj;
        }
        ?? obj2 = new Object();
        if (v() > 0) {
            C0();
            boolean z = this.s ^ this.u;
            obj2.l = z;
            if (z) {
                View L0 = L0();
                obj2.k = this.r.g() - this.r.b(L0);
                obj2.j = RecyclerView.LayoutManager.D(L0);
                return obj2;
            }
            View M0 = M0();
            obj2.j = RecyclerView.LayoutManager.D(M0);
            obj2.k = this.r.e(M0) - this.r.k();
            return obj2;
        }
        obj2.j = -1;
        return obj2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void c(String str) {
        RecyclerView recyclerView;
        if (this.z == null && (recyclerView = this.b) != null) {
            recyclerView.f(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean d() {
        if (this.p == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean e() {
        if (this.p == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void h(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i3;
        if (this.p != 0) {
            i = i2;
        }
        if (v() != 0 && i != 0) {
            C0();
            if (i > 0) {
                i3 = 1;
            } else {
                i3 = -1;
            }
            W0(i3, Math.abs(i), true, state);
            x0(state, this.q, layoutPrefetchRegistry);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void i(int i, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        boolean z;
        int i2;
        SavedState savedState = this.z;
        int i3 = -1;
        if (savedState != null && (i2 = savedState.j) >= 0) {
            z = savedState.l;
        } else {
            S0();
            z = this.u;
            i2 = this.x;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        }
        if (!z) {
            i3 = 1;
        }
        for (int i4 = 0; i4 < this.C && i2 >= 0 && i2 < i; i4++) {
            ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(i2, 0);
            i2 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int j(RecyclerView.State state) {
        return y0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int j0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 1) {
            return 0;
        }
        return T0(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int k(RecyclerView.State state) {
        return z0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void k0(int i) {
        this.x = i;
        this.y = Integer.MIN_VALUE;
        SavedState savedState = this.z;
        if (savedState != null) {
            savedState.j = -1;
        }
        i0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int l(RecyclerView.State state) {
        return A0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int l0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.p == 0) {
            return 0;
        }
        return T0(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int m(RecyclerView.State state) {
        return y0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int n(RecyclerView.State state) {
        return z0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int o(RecyclerView.State state) {
        return A0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final View q(int i) {
        int v = v();
        if (v == 0) {
            return null;
        }
        int D = i - RecyclerView.LayoutManager.D(u(0));
        if (D >= 0 && D < v) {
            View u = u(D);
            if (RecyclerView.LayoutManager.D(u) == i) {
                return u;
            }
        }
        return super.q(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams r() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean s0() {
        if (this.m != 1073741824 && this.l != 1073741824) {
            int v = v();
            for (int i = 0; i < v; i++) {
                ViewGroup.LayoutParams layoutParams = u(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean v0() {
        if (this.z == null && this.s == this.v) {
            return true;
        }
        return false;
    }

    public void w0(RecyclerView.State state, int[] iArr) {
        int i;
        int i2;
        if (state.a != -1) {
            i = this.r.l();
        } else {
            i = 0;
        }
        if (this.q.f == -1) {
            i2 = 0;
        } else {
            i2 = i;
            i = 0;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public void x0(RecyclerView.State state, LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i = layoutState.d;
        if (i >= 0 && i < state.b()) {
            ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(i, Math.max(0, layoutState.g));
        }
    }

    public final int y0(RecyclerView.State state) {
        if (v() == 0) {
            return 0;
        }
        C0();
        OrientationHelper orientationHelper = this.r;
        boolean z = !this.w;
        return ScrollbarHelper.a(state, orientationHelper, F0(z), E0(z), this, this.w);
    }

    public final int z0(RecyclerView.State state) {
        if (v() == 0) {
            return 0;
        }
        C0();
        OrientationHelper orientationHelper = this.r;
        boolean z = !this.w;
        return ScrollbarHelper.b(state, orientationHelper, F0(z), E0(z), this, this.w, this.u);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void N(RecyclerView recyclerView) {
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.recyclerview.widget.LinearLayoutManager$LayoutChunkResult, java.lang.Object] */
    public LinearLayoutManager(int i) {
        this.p = 1;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = true;
        this.x = -1;
        this.y = Integer.MIN_VALUE;
        this.z = null;
        this.A = new AnchorInfo();
        this.B = new Object();
        this.C = 2;
        this.D = new int[2];
        U0(i);
        c(null);
        if (this.t) {
            this.t = false;
            i0();
        }
    }

    public void P0(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo, int i) {
    }
}
