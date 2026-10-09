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
import defpackage.u2;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    public final LazySpanLookup B;
    public final int C;
    public boolean D;
    public boolean E;
    public SavedState F;
    public final Rect G;
    public final AnchorInfo H;
    public final boolean I;
    public int[] J;
    public final Runnable K;
    public final int p;
    public final Span[] q;
    public final OrientationHelper r;
    public final OrientationHelper s;
    public final int t;
    public int u;
    public final LayoutState v;
    public boolean w;
    public final BitSet y;
    public boolean x = false;
    public int z = -1;
    public int A = Integer.MIN_VALUE;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class AnchorInfo {
        public int a;
        public int b;
        public boolean c;
        public boolean d;
        public boolean e;
        public int[] f;

        public AnchorInfo() {
            a();
        }

        public final void a() {
            this.a = -1;
            this.b = Integer.MIN_VALUE;
            this.c = false;
            this.d = false;
            this.e = false;
            int[] iArr = this.f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {
        public Span e;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LazySpanLookup {
        public int[] a;
        public ArrayList b;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes.dex */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Object();
            public int j;
            public int k;
            public int[] l;
            public boolean m;

            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements Parcelable.Creator<FullSpanItem> {
                /* JADX WARN: Type inference failed for: r2v1, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem, java.lang.Object] */
                @Override // android.os.Parcelable.Creator
                public final FullSpanItem createFromParcel(Parcel parcel) {
                    ?? obj = new Object();
                    obj.j = parcel.readInt();
                    obj.k = parcel.readInt();
                    boolean z = true;
                    if (parcel.readInt() != 1) {
                        z = false;
                    }
                    obj.m = z;
                    int readInt = parcel.readInt();
                    if (readInt > 0) {
                        int[] iArr = new int[readInt];
                        obj.l = iArr;
                        parcel.readIntArray(iArr);
                    }
                    return obj;
                }

                @Override // android.os.Parcelable.Creator
                public final FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            public final String toString() {
                return "FullSpanItem{mPosition=" + this.j + ", mGapDir=" + this.k + ", mHasUnwantedGapAfter=" + this.m + ", mGapPerSpan=" + Arrays.toString(this.l) + '}';
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.j);
                parcel.writeInt(this.k);
                parcel.writeInt(this.m ? 1 : 0);
                int[] iArr = this.l;
                if (iArr != null && iArr.length > 0) {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.l);
                } else {
                    parcel.writeInt(0);
                }
            }
        }

        public final void a() {
            int[] iArr = this.a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.b = null;
        }

        public final void b(int i) {
            int[] iArr = this.a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int length = iArr.length;
                while (length <= i) {
                    length *= 2;
                }
                int[] iArr3 = new int[length];
                this.a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public final void c(int i, int i2) {
            int[] iArr = this.a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                b(i3);
                int[] iArr2 = this.a;
                System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
                Arrays.fill(this.a, i, i3, -1);
                ArrayList arrayList = this.b;
                if (arrayList != null) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        FullSpanItem fullSpanItem = (FullSpanItem) this.b.get(size);
                        int i4 = fullSpanItem.j;
                        if (i4 >= i) {
                            fullSpanItem.j = i4 + i2;
                        }
                    }
                }
            }
        }

        public final void d(int i, int i2) {
            int[] iArr = this.a;
            if (iArr != null && i < iArr.length) {
                int i3 = i + i2;
                b(i3);
                int[] iArr2 = this.a;
                System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
                int[] iArr3 = this.a;
                Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
                ArrayList arrayList = this.b;
                if (arrayList != null) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        FullSpanItem fullSpanItem = (FullSpanItem) this.b.get(size);
                        int i4 = fullSpanItem.j;
                        if (i4 >= i) {
                            if (i4 < i3) {
                                this.b.remove(size);
                            } else {
                                fullSpanItem.j = i4 - i2;
                            }
                        }
                    }
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public int j;
        public int k;
        public int l;
        public int[] m;
        public int n;
        public int[] o;
        public ArrayList p;
        public boolean q;
        public boolean r;
        public boolean s;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Type inference failed for: r3v1, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState, java.lang.Object] */
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                boolean z;
                boolean z2;
                ?? obj = new Object();
                obj.j = parcel.readInt();
                obj.k = parcel.readInt();
                int readInt = parcel.readInt();
                obj.l = readInt;
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    obj.m = iArr;
                    parcel.readIntArray(iArr);
                }
                int readInt2 = parcel.readInt();
                obj.n = readInt2;
                if (readInt2 > 0) {
                    int[] iArr2 = new int[readInt2];
                    obj.o = iArr2;
                    parcel.readIntArray(iArr2);
                }
                boolean z3 = false;
                if (parcel.readInt() == 1) {
                    z = true;
                } else {
                    z = false;
                }
                obj.q = z;
                if (parcel.readInt() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                obj.r = z2;
                if (parcel.readInt() == 1) {
                    z3 = true;
                }
                obj.s = z3;
                obj.p = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
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
            parcel.writeInt(this.l);
            if (this.l > 0) {
                parcel.writeIntArray(this.m);
            }
            parcel.writeInt(this.n);
            if (this.n > 0) {
                parcel.writeIntArray(this.o);
            }
            parcel.writeInt(this.q ? 1 : 0);
            parcel.writeInt(this.r ? 1 : 0);
            parcel.writeInt(this.s ? 1 : 0);
            parcel.writeList(this.p);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class Span {
        public final ArrayList a = new ArrayList();
        public int b = Integer.MIN_VALUE;
        public int c = Integer.MIN_VALUE;
        public int d = 0;
        public final int e;

        public Span(int i) {
            this.e = i;
        }

        public final void a() {
            View view = (View) this.a.get(r0.size() - 1);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.c = StaggeredGridLayoutManager.this.r.b(view);
            layoutParams.getClass();
        }

        public final void b() {
            this.a.clear();
            this.b = Integer.MIN_VALUE;
            this.c = Integer.MIN_VALUE;
            this.d = 0;
        }

        public final int c() {
            boolean z = StaggeredGridLayoutManager.this.w;
            ArrayList arrayList = this.a;
            if (z) {
                return e(arrayList.size() - 1, -1);
            }
            return e(0, arrayList.size());
        }

        public final int d() {
            boolean z = StaggeredGridLayoutManager.this.w;
            ArrayList arrayList = this.a;
            if (z) {
                return e(0, arrayList.size());
            }
            return e(arrayList.size() - 1, -1);
        }

        public final int e(int i, int i2) {
            int i3;
            boolean z;
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            int k = staggeredGridLayoutManager.r.k();
            int g = staggeredGridLayoutManager.r.g();
            if (i2 > i) {
                i3 = 1;
            } else {
                i3 = -1;
            }
            while (i != i2) {
                View view = (View) this.a.get(i);
                int e = staggeredGridLayoutManager.r.e(view);
                int b = staggeredGridLayoutManager.r.b(view);
                boolean z2 = false;
                if (e <= g) {
                    z = true;
                } else {
                    z = false;
                }
                if (b >= k) {
                    z2 = true;
                }
                if (z && z2 && (e < k || b > g)) {
                    return RecyclerView.LayoutManager.D(view);
                }
                i += i3;
            }
            return -1;
        }

        public final int f(int i) {
            int i2 = this.c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.a.size() == 0) {
                return i;
            }
            a();
            return this.c;
        }

        public final View g(int i, int i2) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
            View view = null;
            ArrayList arrayList = this.a;
            if (i2 == -1) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    View view2 = (View) arrayList.get(i3);
                    if ((staggeredGridLayoutManager.w && RecyclerView.LayoutManager.D(view2) <= i) || ((!staggeredGridLayoutManager.w && RecyclerView.LayoutManager.D(view2) >= i) || !view2.hasFocusable())) {
                        break;
                    }
                    i3++;
                    view = view2;
                }
                return view;
            }
            int size2 = arrayList.size() - 1;
            while (size2 >= 0) {
                View view3 = (View) arrayList.get(size2);
                if ((staggeredGridLayoutManager.w && RecyclerView.LayoutManager.D(view3) >= i) || ((!staggeredGridLayoutManager.w && RecyclerView.LayoutManager.D(view3) <= i) || !view3.hasFocusable())) {
                    break;
                }
                size2--;
                view = view3;
            }
            return view;
        }

        public final int h(int i) {
            int i2 = this.b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            ArrayList arrayList = this.a;
            if (arrayList.size() == 0) {
                return i;
            }
            View view = (View) arrayList.get(0);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            this.b = StaggeredGridLayoutManager.this.r.e(view);
            layoutParams.getClass();
            return this.b;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup] */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.recyclerview.widget.LayoutState, java.lang.Object] */
    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.p = -1;
        this.w = false;
        ?? obj = new Object();
        this.B = obj;
        this.C = 2;
        this.G = new Rect();
        this.H = new AnchorInfo();
        this.I = true;
        this.K = new Runnable() { // from class: androidx.recyclerview.widget.StaggeredGridLayoutManager.1
            @Override // java.lang.Runnable
            public final void run() {
                StaggeredGridLayoutManager.this.w0();
            }
        };
        RecyclerView.LayoutManager.Properties E = RecyclerView.LayoutManager.E(context, attributeSet, i, i2);
        int i3 = E.a;
        if (i3 != 0 && i3 != 1) {
            u2.g("invalid orientation.");
            throw null;
        }
        c(null);
        if (i3 != this.t) {
            this.t = i3;
            OrientationHelper orientationHelper = this.r;
            this.r = this.s;
            this.s = orientationHelper;
            i0();
        }
        int i4 = E.b;
        c(null);
        if (i4 != this.p) {
            obj.a();
            i0();
            this.p = i4;
            this.y = new BitSet(this.p);
            this.q = new Span[this.p];
            for (int i5 = 0; i5 < this.p; i5++) {
                this.q[i5] = new Span(i5);
            }
            i0();
        }
        boolean z = E.c;
        c(null);
        SavedState savedState = this.F;
        if (savedState != null && savedState.q != z) {
            savedState.q = z;
        }
        this.w = z;
        i0();
        ?? obj2 = new Object();
        obj2.a = true;
        obj2.f = 0;
        obj2.g = 0;
        this.v = obj2;
        this.r = OrientationHelper.a(this, this.t);
        this.s = OrientationHelper.a(this, 1 - this.t);
    }

    public static int W0(int i, int i2, int i3) {
        int mode;
        if ((i2 == 0 && i3 == 0) || ((mode = View.MeasureSpec.getMode(i)) != Integer.MIN_VALUE && mode != 1073741824)) {
            return i;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode);
    }

    public final View A0(boolean z) {
        OrientationHelper orientationHelper = this.r;
        int k = orientationHelper.k();
        int g = orientationHelper.g();
        int v = v();
        View view = null;
        for (int i = 0; i < v; i++) {
            View u = u(i);
            int e = orientationHelper.e(u);
            if (orientationHelper.b(u) > k && e < g) {
                if (e < k && z) {
                    if (view == null) {
                        view = u;
                    }
                } else {
                    return u;
                }
            }
        }
        return view;
    }

    public final void B0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int g;
        int F0 = F0(Integer.MIN_VALUE);
        if (F0 != Integer.MIN_VALUE && (g = this.r.g() - F0) > 0) {
            int i = g - (-S0(-g, recycler, state));
            if (z && i > 0) {
                this.r.o(i);
            }
        }
    }

    public final void C0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int k;
        int G0 = G0(Integer.MAX_VALUE);
        if (G0 != Integer.MAX_VALUE && (k = G0 - this.r.k()) > 0) {
            int S0 = k - S0(k, recycler, state);
            if (z && S0 > 0) {
                this.r.o(-S0);
            }
        }
    }

    public final int D0() {
        if (v() == 0) {
            return 0;
        }
        return RecyclerView.LayoutManager.D(u(0));
    }

    public final int E0() {
        int v = v();
        if (v == 0) {
            return 0;
        }
        return RecyclerView.LayoutManager.D(u(v - 1));
    }

    public final int F0(int i) {
        int f = this.q[0].f(i);
        for (int i2 = 1; i2 < this.p; i2++) {
            int f2 = this.q[i2].f(i);
            if (f2 > f) {
                f = f2;
            }
        }
        return f;
    }

    public final int G0(int i) {
        int h = this.q[0].h(i);
        for (int i2 = 1; i2 < this.p; i2++) {
            int h2 = this.q[i2].h(i);
            if (h2 < h) {
                h = h2;
            }
        }
        return h;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean H() {
        if (this.C != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void H0(int i, int i2, int i3) {
        int D0;
        int i4;
        int i5;
        LazySpanLookup lazySpanLookup;
        int[] iArr;
        int E0;
        ArrayList arrayList;
        LazySpanLookup.FullSpanItem fullSpanItem;
        int i6;
        if (this.x) {
            D0 = E0();
        } else {
            D0 = D0();
        }
        if (i3 == 8) {
            if (i < i2) {
                i4 = i2 + 1;
            } else {
                i4 = i + 1;
                i5 = i2;
                lazySpanLookup = this.B;
                iArr = lazySpanLookup.a;
                if (iArr != null && i5 < iArr.length) {
                    arrayList = lazySpanLookup.b;
                    if (arrayList != null) {
                        if (arrayList != null) {
                            for (int size = arrayList.size() - 1; size >= 0; size--) {
                                fullSpanItem = (LazySpanLookup.FullSpanItem) lazySpanLookup.b.get(size);
                                if (fullSpanItem.j == i5) {
                                    break;
                                }
                            }
                        }
                        fullSpanItem = null;
                        if (fullSpanItem != null) {
                            lazySpanLookup.b.remove(fullSpanItem);
                        }
                        int size2 = lazySpanLookup.b.size();
                        int i7 = 0;
                        while (true) {
                            if (i7 < size2) {
                                if (((LazySpanLookup.FullSpanItem) lazySpanLookup.b.get(i7)).j >= i5) {
                                    break;
                                } else {
                                    i7++;
                                }
                            } else {
                                i7 = -1;
                                break;
                            }
                        }
                        if (i7 != -1) {
                            LazySpanLookup.FullSpanItem fullSpanItem2 = (LazySpanLookup.FullSpanItem) lazySpanLookup.b.get(i7);
                            lazySpanLookup.b.remove(i7);
                            i6 = fullSpanItem2.j;
                            int[] iArr2 = lazySpanLookup.a;
                            if (i6 == -1) {
                                Arrays.fill(iArr2, i5, iArr2.length, -1);
                                int length = lazySpanLookup.a.length;
                            } else {
                                Arrays.fill(lazySpanLookup.a, i5, Math.min(i6 + 1, iArr2.length), -1);
                            }
                        }
                    }
                    i6 = -1;
                    int[] iArr22 = lazySpanLookup.a;
                    if (i6 == -1) {
                    }
                }
                if (i3 == 1) {
                    if (i3 != 2) {
                        if (i3 == 8) {
                            lazySpanLookup.d(i, 1);
                            lazySpanLookup.c(i2, 1);
                        }
                    } else {
                        lazySpanLookup.d(i, i2);
                    }
                } else {
                    lazySpanLookup.c(i, i2);
                }
                if (i4 <= D0) {
                    if (this.x) {
                        E0 = D0();
                    } else {
                        E0 = E0();
                    }
                    if (i5 <= E0) {
                        i0();
                        return;
                    }
                    return;
                }
                return;
            }
        } else {
            i4 = i + i2;
        }
        i5 = i;
        lazySpanLookup = this.B;
        iArr = lazySpanLookup.a;
        if (iArr != null) {
            arrayList = lazySpanLookup.b;
            if (arrayList != null) {
            }
            i6 = -1;
            int[] iArr222 = lazySpanLookup.a;
            if (i6 == -1) {
            }
        }
        if (i3 == 1) {
        }
        if (i4 <= D0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x002a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View I0() {
        char c;
        boolean z;
        boolean z2;
        int v = v();
        int i = v - 1;
        int i2 = this.p;
        BitSet bitSet = new BitSet(i2);
        bitSet.set(0, i2, true);
        int i3 = -1;
        if (this.t == 1 && J0()) {
            c = 1;
        } else {
            c = 65535;
        }
        if (this.x) {
            v = -1;
        } else {
            i = 0;
        }
        if (i < v) {
            i3 = 1;
        }
        while (i != v) {
            View u = u(i);
            LayoutParams layoutParams = (LayoutParams) u.getLayoutParams();
            boolean z3 = bitSet.get(layoutParams.e.e);
            OrientationHelper orientationHelper = this.r;
            if (z3) {
                Span span = layoutParams.e;
                if (this.x) {
                    int i4 = span.c;
                    if (i4 == Integer.MIN_VALUE) {
                        span.a();
                        i4 = span.c;
                    }
                    if (i4 < orientationHelper.g()) {
                        ArrayList arrayList = span.a;
                        ((LayoutParams) ((View) arrayList.get(arrayList.size() - 1)).getLayoutParams()).getClass();
                        return u;
                    }
                } else {
                    int i5 = span.b;
                    ArrayList arrayList2 = span.a;
                    if (i5 == Integer.MIN_VALUE) {
                        View view = (View) arrayList2.get(0);
                        LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                        span.b = StaggeredGridLayoutManager.this.r.e(view);
                        layoutParams2.getClass();
                        i5 = span.b;
                    }
                    if (i5 > orientationHelper.k()) {
                        ((LayoutParams) ((View) arrayList2.get(0)).getLayoutParams()).getClass();
                        return u;
                    }
                }
                bitSet.clear(layoutParams.e.e);
            }
            i += i3;
            if (i != v) {
                View u2 = u(i);
                if (this.x) {
                    int b = orientationHelper.b(u);
                    int b2 = orientationHelper.b(u2);
                    if (b >= b2) {
                        if (b == b2) {
                            if (layoutParams.e.e - ((LayoutParams) u2.getLayoutParams()).e.e >= 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (c >= 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z == z2) {
                                return u;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        return u;
                    }
                } else {
                    int e = orientationHelper.e(u);
                    int e2 = orientationHelper.e(u2);
                    if (e <= e2) {
                        if (e == e2) {
                            if (layoutParams.e.e - ((LayoutParams) u2.getLayoutParams()).e.e >= 0) {
                            }
                            if (c >= 0) {
                            }
                            if (z == z2) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        return u;
                    }
                }
            }
        }
        return null;
    }

    public final boolean J0() {
        RecyclerView recyclerView = this.b;
        Field field = ViewCompat.a;
        if (recyclerView.getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void K(int i) {
        super.K(i);
        for (int i2 = 0; i2 < this.p; i2++) {
            Span span = this.q[i2];
            int i3 = span.b;
            if (i3 != Integer.MIN_VALUE) {
                span.b = i3 + i;
            }
            int i4 = span.c;
            if (i4 != Integer.MIN_VALUE) {
                span.c = i4 + i;
            }
        }
    }

    public final void K0(View view, int i, int i2) {
        RecyclerView recyclerView = this.b;
        Rect rect = this.G;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.H(view));
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int W0 = W0(i, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int W02 = W0(i2, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect.bottom);
        if (r0(view, W0, W02, layoutParams)) {
            view.measure(W0, W02);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void L(int i) {
        super.L(i);
        for (int i2 = 0; i2 < this.p; i2++) {
            Span span = this.q[i2];
            int i3 = span.b;
            if (i3 != Integer.MIN_VALUE) {
                span.b = i3 + i;
            }
            int i4 = span.c;
            if (i4 != Integer.MIN_VALUE) {
                span.c = i4 + i;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x018b, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0187, code lost:
    
        if (r4 != r17.x) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0179, code lost:
    
        if (r17.x != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0189, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:261:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:267:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void L0(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        boolean z2;
        int i;
        boolean z3;
        boolean z4;
        SavedState savedState;
        int h;
        int i2;
        boolean z5;
        int i3;
        boolean z6;
        boolean z7;
        int k;
        int D0;
        int k2;
        int k3;
        SavedState savedState2 = this.F;
        AnchorInfo anchorInfo = this.H;
        if ((savedState2 != null || this.z != -1) && state.b() == 0) {
            d0(recycler);
            anchorInfo.a();
            return;
        }
        boolean z8 = anchorInfo.e;
        StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
        if (z8 && this.z == -1 && this.F == null) {
            z2 = false;
        } else {
            z2 = true;
        }
        Span[] spanArr = this.q;
        int i4 = this.p;
        LazySpanLookup lazySpanLookup = this.B;
        if (z2) {
            anchorInfo.a();
            SavedState savedState3 = this.F;
            OrientationHelper orientationHelper = this.r;
            if (savedState3 != null) {
                int i5 = savedState3.l;
                if (i5 > 0) {
                    if (i5 == i4) {
                        for (int i6 = 0; i6 < i4; i6++) {
                            spanArr[i6].b();
                            SavedState savedState4 = this.F;
                            int i7 = savedState4.m[i6];
                            if (i7 != Integer.MIN_VALUE) {
                                if (savedState4.r) {
                                    k3 = orientationHelper.g();
                                } else {
                                    k3 = orientationHelper.k();
                                }
                                i7 += k3;
                            }
                            Span span = spanArr[i6];
                            span.b = i7;
                            span.c = i7;
                        }
                    } else {
                        savedState3.m = null;
                        savedState3.l = 0;
                        savedState3.n = 0;
                        savedState3.o = null;
                        savedState3.p = null;
                        savedState3.j = savedState3.k;
                    }
                }
                SavedState savedState5 = this.F;
                this.E = savedState5.s;
                boolean z9 = savedState5.q;
                c(null);
                SavedState savedState6 = this.F;
                if (savedState6 != null && savedState6.q != z9) {
                    savedState6.q = z9;
                }
                this.w = z9;
                i0();
                R0();
                SavedState savedState7 = this.F;
                int i8 = savedState7.j;
                if (i8 != -1) {
                    this.z = i8;
                    anchorInfo.c = savedState7.r;
                } else {
                    anchorInfo.c = this.x;
                }
                if (savedState7.n > 1) {
                    lazySpanLookup.a = savedState7.o;
                    lazySpanLookup.b = savedState7.p;
                }
            } else {
                R0();
                anchorInfo.c = this.x;
            }
            if (!state.g && (i3 = this.z) != -1) {
                if (i3 >= 0 && i3 < state.b()) {
                    SavedState savedState8 = this.F;
                    if (savedState8 != null && savedState8.j != -1 && savedState8.l >= 1) {
                        anchorInfo.b = Integer.MIN_VALUE;
                        anchorInfo.a = this.z;
                    } else {
                        View q = q(this.z);
                        if (q != null) {
                            if (this.x) {
                                D0 = E0();
                            } else {
                                D0 = D0();
                            }
                            anchorInfo.a = D0;
                            if (this.A != Integer.MIN_VALUE) {
                                if (anchorInfo.c) {
                                    anchorInfo.b = (orientationHelper.g() - this.A) - orientationHelper.b(q);
                                } else {
                                    anchorInfo.b = (orientationHelper.k() + this.A) - orientationHelper.e(q);
                                }
                            } else if (orientationHelper.c(q) > orientationHelper.l()) {
                                if (anchorInfo.c) {
                                    k2 = orientationHelper.g();
                                } else {
                                    k2 = orientationHelper.k();
                                }
                                anchorInfo.b = k2;
                            } else {
                                int e = orientationHelper.e(q) - orientationHelper.k();
                                if (e < 0) {
                                    anchorInfo.b = -e;
                                } else {
                                    int g = orientationHelper.g() - orientationHelper.b(q);
                                    if (g < 0) {
                                        anchorInfo.b = g;
                                    } else {
                                        anchorInfo.b = Integer.MIN_VALUE;
                                    }
                                }
                            }
                        } else {
                            int i9 = this.z;
                            anchorInfo.a = i9;
                            int i10 = this.A;
                            if (i10 == Integer.MIN_VALUE) {
                                if (v() != 0) {
                                    if (i9 < D0()) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                }
                                anchorInfo.c = z7;
                                OrientationHelper orientationHelper2 = staggeredGridLayoutManager.r;
                                if (z7) {
                                    k = orientationHelper2.g();
                                } else {
                                    k = orientationHelper2.k();
                                }
                                anchorInfo.b = k;
                            } else {
                                boolean z10 = anchorInfo.c;
                                OrientationHelper orientationHelper3 = staggeredGridLayoutManager.r;
                                if (z10) {
                                    anchorInfo.b = orientationHelper3.g() - i10;
                                } else {
                                    anchorInfo.b = orientationHelper3.k() + i10;
                                }
                            }
                            z5 = true;
                            anchorInfo.d = true;
                            anchorInfo.e = z5;
                        }
                    }
                    z5 = true;
                    anchorInfo.e = z5;
                } else {
                    this.z = -1;
                    this.A = Integer.MIN_VALUE;
                }
            }
            if (this.D) {
                int b = state.b();
                for (int v = v() - 1; v >= 0; v--) {
                    i2 = RecyclerView.LayoutManager.D(u(v));
                    if (i2 >= 0 && i2 < b) {
                        break;
                    }
                }
                i2 = 0;
                anchorInfo.a = i2;
                anchorInfo.b = Integer.MIN_VALUE;
                z5 = true;
                anchorInfo.e = z5;
            } else {
                int b2 = state.b();
                int v2 = v();
                for (int i11 = 0; i11 < v2; i11++) {
                    int D = RecyclerView.LayoutManager.D(u(i11));
                    if (D >= 0 && D < b2) {
                        i2 = D;
                        break;
                    }
                }
                i2 = 0;
                anchorInfo.a = i2;
                anchorInfo.b = Integer.MIN_VALUE;
                z5 = true;
                anchorInfo.e = z5;
            }
        }
        if (this.F != null || this.z != -1 || (anchorInfo.c == this.D && J0() == this.E)) {
            i = 1;
        } else {
            lazySpanLookup.a();
            i = 1;
            anchorInfo.d = true;
        }
        if (v() > 0 && ((savedState = this.F) == null || savedState.l < i)) {
            if (anchorInfo.d) {
                for (int i12 = 0; i12 < i4; i12++) {
                    spanArr[i12].b();
                    int i13 = anchorInfo.b;
                    if (i13 != Integer.MIN_VALUE) {
                        Span span2 = spanArr[i12];
                        span2.b = i13;
                        span2.c = i13;
                    }
                }
            } else if (!z2 && anchorInfo.f != null) {
                for (int i14 = 0; i14 < i4; i14++) {
                    Span span3 = spanArr[i14];
                    span3.b();
                    int i15 = anchorInfo.f[i14];
                    span3.b = i15;
                    span3.c = i15;
                }
            } else {
                for (int i16 = 0; i16 < i4; i16++) {
                    Span span4 = spanArr[i16];
                    boolean z11 = this.x;
                    int i17 = anchorInfo.b;
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if (z11) {
                        h = span4.f(Integer.MIN_VALUE);
                    } else {
                        h = span4.h(Integer.MIN_VALUE);
                    }
                    span4.b();
                    if (h != Integer.MIN_VALUE && ((!z11 || h >= staggeredGridLayoutManager2.r.g()) && (z11 || h <= staggeredGridLayoutManager2.r.k()))) {
                        if (i17 != Integer.MIN_VALUE) {
                            h += i17;
                        }
                        span4.c = h;
                        span4.b = h;
                    }
                }
                int length = spanArr.length;
                int[] iArr = anchorInfo.f;
                if (iArr == null || iArr.length < length) {
                    anchorInfo.f = new int[staggeredGridLayoutManager.q.length];
                }
                for (int i18 = 0; i18 < length; i18++) {
                    anchorInfo.f[i18] = spanArr[i18].h(Integer.MIN_VALUE);
                }
            }
        }
        p(recycler);
        LayoutState layoutState = this.v;
        layoutState.a = false;
        OrientationHelper orientationHelper4 = this.s;
        int l = orientationHelper4.l();
        this.u = l / i4;
        View.MeasureSpec.makeMeasureSpec(l, orientationHelper4.i());
        U0(anchorInfo.a, state);
        if (anchorInfo.c) {
            T0(-1);
            y0(recycler, layoutState, state);
            T0(1);
            layoutState.c = anchorInfo.a + layoutState.d;
            y0(recycler, layoutState, state);
        } else {
            T0(1);
            y0(recycler, layoutState, state);
            T0(-1);
            layoutState.c = anchorInfo.a + layoutState.d;
            y0(recycler, layoutState, state);
        }
        if (orientationHelper4.i() != 1073741824) {
            int v3 = v();
            float f = 0.0f;
            for (int i19 = 0; i19 < v3; i19++) {
                View u = u(i19);
                float c = orientationHelper4.c(u);
                if (c >= f) {
                    ((LayoutParams) u.getLayoutParams()).getClass();
                    f = Math.max(f, c);
                }
            }
            int i20 = this.u;
            int round = Math.round(f * i4);
            if (orientationHelper4.i() == Integer.MIN_VALUE) {
                round = Math.min(round, orientationHelper4.l());
            }
            this.u = round / i4;
            View.MeasureSpec.makeMeasureSpec(round, orientationHelper4.i());
            if (this.u != i20) {
                for (int i21 = 0; i21 < v3; i21++) {
                    View u2 = u(i21);
                    LayoutParams layoutParams = (LayoutParams) u2.getLayoutParams();
                    layoutParams.getClass();
                    boolean J0 = J0();
                    int i22 = this.t;
                    if (J0 && i22 == 1) {
                        int i23 = -((i4 - 1) - layoutParams.e.e);
                        u2.offsetLeftAndRight((this.u * i23) - (i23 * i20));
                    } else {
                        int i24 = layoutParams.e.e;
                        int i25 = this.u * i24;
                        int i26 = i24 * i20;
                        if (i22 == 1) {
                            u2.offsetLeftAndRight(i25 - i26);
                        } else {
                            u2.offsetTopAndBottom(i25 - i26);
                        }
                    }
                }
            }
        }
        if (v() > 0) {
            if (this.x) {
                z3 = true;
                B0(recycler, state, true);
                C0(recycler, state, false);
            } else {
                z3 = true;
                C0(recycler, state, true);
                B0(recycler, state, false);
            }
        } else {
            z3 = true;
        }
        if (z && !state.g && this.C != 0 && v() > 0 && I0() != null) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.removeCallbacks(this.K);
            }
            if (w0()) {
                z4 = z3;
                if (state.g) {
                    anchorInfo.a();
                }
                this.D = anchorInfo.c;
                this.E = J0();
                if (!z4) {
                    anchorInfo.a();
                    L0(recycler, state, false);
                    return;
                }
                return;
            }
        }
        z4 = false;
        if (state.g) {
        }
        this.D = anchorInfo.c;
        this.E = J0();
        if (!z4) {
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void M() {
        this.B.a();
        for (int i = 0; i < this.p; i++) {
            this.q[i].b();
        }
    }

    public final boolean M0(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.t == 0) {
            if (i == -1) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3 == this.x) {
                return false;
            }
            return true;
        }
        if (i == -1) {
            z = true;
        } else {
            z = false;
        }
        if (z == this.x) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 != J0()) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void N(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.K);
        }
        for (int i = 0; i < this.p; i++) {
            this.q[i].b();
        }
        recyclerView.requestLayout();
    }

    public final void N0(int i, RecyclerView.State state) {
        int D0;
        int i2;
        if (i > 0) {
            D0 = E0();
            i2 = 1;
        } else {
            D0 = D0();
            i2 = -1;
        }
        LayoutState layoutState = this.v;
        layoutState.a = true;
        U0(D0, state);
        T0(i2);
        layoutState.c = D0 + layoutState.d;
        layoutState.b = Math.abs(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x004b, code lost:
    
        if (r0 == 1) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x004f, code lost:
    
        if (r0 == 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0059, code lost:
    
        if (J0() == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0063, code lost:
    
        if (J0() == false) goto L34;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View O(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View view2;
        int i2;
        int D0;
        boolean z;
        boolean z2;
        int d;
        int d2;
        int d3;
        if (v() != 0) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || (view2 = recyclerView.y(view)) == null || this.a.c.contains(view2)) {
                view2 = null;
            }
            if (view2 != null) {
                R0();
                int i3 = this.t;
                if (i != 1) {
                    if (i != 2) {
                        if (i != 17) {
                            if (i != 33) {
                                if (i == 66) {
                                }
                            }
                            i2 = Integer.MIN_VALUE;
                        }
                    } else {
                        if (i3 != 1) {
                        }
                        i2 = 1;
                    }
                } else {
                    if (i3 != 1) {
                    }
                    i2 = -1;
                }
                if (i2 != Integer.MIN_VALUE) {
                    LayoutParams layoutParams = (LayoutParams) view2.getLayoutParams();
                    layoutParams.getClass();
                    Span span = layoutParams.e;
                    if (i2 == 1) {
                        D0 = E0();
                    } else {
                        D0 = D0();
                    }
                    U0(D0, state);
                    T0(i2);
                    LayoutState layoutState = this.v;
                    layoutState.c = layoutState.d + D0;
                    layoutState.b = (int) (this.r.l() * 0.33333334f);
                    layoutState.h = true;
                    layoutState.a = false;
                    y0(recycler, layoutState, state);
                    this.D = this.x;
                    View g = span.g(D0, i2);
                    if (g != null && g != view2) {
                        return g;
                    }
                    boolean M0 = M0(i2);
                    Span[] spanArr = this.q;
                    int i4 = this.p;
                    if (M0) {
                        for (int i5 = i4 - 1; i5 >= 0; i5--) {
                            View g2 = spanArr[i5].g(D0, i2);
                            if (g2 != null && g2 != view2) {
                                return g2;
                            }
                        }
                    } else {
                        for (int i6 = 0; i6 < i4; i6++) {
                            View g3 = spanArr[i6].g(D0, i2);
                            if (g3 != null && g3 != view2) {
                                return g3;
                            }
                        }
                    }
                    boolean z3 = !this.w;
                    if (i2 == -1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z3 == z) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        d = span.c();
                    } else {
                        d = span.d();
                    }
                    View q = q(d);
                    if (q != null && q != view2) {
                        return q;
                    }
                    if (M0(i2)) {
                        for (int i7 = i4 - 1; i7 >= 0; i7--) {
                            if (i7 != span.e) {
                                if (z2) {
                                    d3 = spanArr[i7].c();
                                } else {
                                    d3 = spanArr[i7].d();
                                }
                                View q2 = q(d3);
                                if (q2 != null && q2 != view2) {
                                    return q2;
                                }
                            }
                        }
                    } else {
                        for (int i8 = 0; i8 < i4; i8++) {
                            if (z2) {
                                d2 = spanArr[i8].c();
                            } else {
                                d2 = spanArr[i8].d();
                            }
                            View q3 = q(d2);
                            if (q3 != null && q3 != view2) {
                                return q3;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public final void O0(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (layoutState.a && !layoutState.i) {
            int i = layoutState.b;
            int i2 = layoutState.e;
            if (i == 0) {
                if (i2 == -1) {
                    P0(recycler, layoutState.g);
                    return;
                } else {
                    Q0(recycler, layoutState.f);
                    return;
                }
            }
            int i3 = this.p;
            Span[] spanArr = this.q;
            int i4 = 1;
            if (i2 == -1) {
                int i5 = layoutState.f;
                int h = spanArr[0].h(i5);
                while (i4 < i3) {
                    int h2 = spanArr[i4].h(i5);
                    if (h2 > h) {
                        h = h2;
                    }
                    i4++;
                }
                int i6 = i5 - h;
                int i7 = layoutState.g;
                if (i6 >= 0) {
                    i7 -= Math.min(i6, layoutState.b);
                }
                P0(recycler, i7);
                return;
            }
            int i8 = layoutState.g;
            int f = spanArr[0].f(i8);
            while (i4 < i3) {
                int f2 = spanArr[i4].f(i8);
                if (f2 < f) {
                    f = f2;
                }
                i4++;
            }
            int i9 = f - layoutState.g;
            int i10 = layoutState.f;
            if (i9 >= 0) {
                i10 += Math.min(i9, layoutState.b);
            }
            Q0(recycler, i10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void P(AccessibilityEvent accessibilityEvent) {
        super.P(accessibilityEvent);
        if (v() > 0) {
            View A0 = A0(false);
            View z0 = z0(false);
            if (A0 != null && z0 != null) {
                int D = RecyclerView.LayoutManager.D(A0);
                int D2 = RecyclerView.LayoutManager.D(z0);
                if (D < D2) {
                    accessibilityEvent.setFromIndex(D);
                    accessibilityEvent.setToIndex(D2);
                } else {
                    accessibilityEvent.setFromIndex(D2);
                    accessibilityEvent.setToIndex(D);
                }
            }
        }
    }

    public final void P0(RecyclerView.Recycler recycler, int i) {
        for (int v = v() - 1; v >= 0; v--) {
            View u = u(v);
            OrientationHelper orientationHelper = this.r;
            if (orientationHelper.e(u) >= i && orientationHelper.n(u) >= i) {
                LayoutParams layoutParams = (LayoutParams) u.getLayoutParams();
                layoutParams.getClass();
                if (layoutParams.e.a.size() != 1) {
                    Span span = layoutParams.e;
                    ArrayList arrayList = span.a;
                    int size = arrayList.size();
                    View view = (View) arrayList.remove(size - 1);
                    LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                    layoutParams2.e = null;
                    if (layoutParams2.a.h() || layoutParams2.a.k()) {
                        span.d -= StaggeredGridLayoutManager.this.r.c(view);
                    }
                    if (size == 1) {
                        span.b = Integer.MIN_VALUE;
                    }
                    span.c = Integer.MIN_VALUE;
                    f0(u, recycler);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final void Q0(RecyclerView.Recycler recycler, int i) {
        while (v() > 0) {
            View u = u(0);
            OrientationHelper orientationHelper = this.r;
            if (orientationHelper.b(u) <= i && orientationHelper.m(u) <= i) {
                LayoutParams layoutParams = (LayoutParams) u.getLayoutParams();
                layoutParams.getClass();
                if (layoutParams.e.a.size() != 1) {
                    Span span = layoutParams.e;
                    ArrayList arrayList = span.a;
                    View view = (View) arrayList.remove(0);
                    LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                    layoutParams2.e = null;
                    if (arrayList.size() == 0) {
                        span.c = Integer.MIN_VALUE;
                    }
                    if (layoutParams2.a.h() || layoutParams2.a.k()) {
                        span.d -= StaggeredGridLayoutManager.this.r.c(view);
                    }
                    span.b = Integer.MIN_VALUE;
                    f0(u, recycler);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final void R0() {
        if (this.t != 1 && J0()) {
            this.x = !this.w;
        } else {
            this.x = this.w;
        }
    }

    public final int S0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (v() == 0 || i == 0) {
            return 0;
        }
        N0(i, state);
        LayoutState layoutState = this.v;
        int y0 = y0(recycler, layoutState, state);
        if (layoutState.b >= y0) {
            if (i < 0) {
                i = -y0;
            } else {
                i = y0;
            }
        }
        this.r.o(-i);
        this.D = this.x;
        layoutState.b = 0;
        O0(recycler, layoutState);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void T(int i, int i2) {
        H0(i, i2, 1);
    }

    public final void T0(int i) {
        boolean z;
        LayoutState layoutState = this.v;
        layoutState.e = i;
        boolean z2 = this.x;
        int i2 = 1;
        if (i == -1) {
            z = true;
        } else {
            z = false;
        }
        if (z2 != z) {
            i2 = -1;
        }
        layoutState.d = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void U() {
        this.B.a();
        i0();
    }

    public final void U0(int i, RecyclerView.State state) {
        int i2;
        int i3;
        int i4;
        boolean z;
        LayoutState layoutState = this.v;
        boolean z2 = false;
        layoutState.b = 0;
        layoutState.c = i;
        LinearSmoothScroller linearSmoothScroller = this.e;
        OrientationHelper orientationHelper = this.r;
        if (linearSmoothScroller != null && linearSmoothScroller.e && (i4 = state.a) != -1) {
            boolean z3 = this.x;
            if (i4 < i) {
                z = true;
            } else {
                z = false;
            }
            if (z3 == z) {
                i2 = orientationHelper.l();
                i3 = 0;
            } else {
                i3 = orientationHelper.l();
                i2 = 0;
            }
        } else {
            i2 = 0;
            i3 = 0;
        }
        RecyclerView recyclerView = this.b;
        if (recyclerView != null && recyclerView.q) {
            layoutState.f = orientationHelper.k() - i3;
            layoutState.g = orientationHelper.g() + i2;
        } else {
            layoutState.g = orientationHelper.f() + i2;
            layoutState.f = -i3;
        }
        layoutState.h = false;
        layoutState.a = true;
        if (orientationHelper.i() == 0 && orientationHelper.f() == 0) {
            z2 = true;
        }
        layoutState.i = z2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void V(int i, int i2) {
        H0(i, i2, 8);
    }

    public final void V0(Span span, int i, int i2) {
        int i3 = span.d;
        int i4 = span.e;
        BitSet bitSet = this.y;
        if (i == -1) {
            int i5 = span.b;
            if (i5 == Integer.MIN_VALUE) {
                View view = (View) span.a.get(0);
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                span.b = StaggeredGridLayoutManager.this.r.e(view);
                layoutParams.getClass();
                i5 = span.b;
            }
            if (i5 + i3 <= i2) {
                bitSet.set(i4, false);
                return;
            }
            return;
        }
        int i6 = span.c;
        if (i6 == Integer.MIN_VALUE) {
            span.a();
            i6 = span.c;
        }
        if (i6 - i3 >= i2) {
            bitSet.set(i4, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void W(int i, int i2) {
        H0(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void X(int i, int i2) {
        H0(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Y(RecyclerView.Recycler recycler, RecyclerView.State state) {
        L0(recycler, state, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void Z(RecyclerView.State state) {
        this.z = -1;
        this.A = Integer.MIN_VALUE;
        this.F = null;
        this.H.a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0019, code lost:
    
        if (r4 != r3.x) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (r3.x != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
    
        r1 = 1;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final PointF a(int i) {
        boolean z;
        int i2 = -1;
        if (v() != 0) {
            if (i < D0()) {
                z = true;
            } else {
                z = false;
            }
        }
        PointF pointF = new PointF();
        if (i2 == 0) {
            return null;
        }
        if (this.t == 0) {
            pointF.x = i2;
            pointF.y = 0.0f;
            return pointF;
        }
        pointF.x = 0.0f;
        pointF.y = i2;
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void a0(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.F = savedState;
            if (this.z != -1) {
                savedState.j = -1;
                savedState.k = -1;
                savedState.m = null;
                savedState.l = 0;
                savedState.n = 0;
                savedState.o = null;
                savedState.p = null;
            }
            i0();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState, android.os.Parcelable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState, android.os.Parcelable, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final Parcelable b0() {
        int D0;
        View A0;
        int h;
        int k;
        int[] iArr;
        SavedState savedState = this.F;
        if (savedState != null) {
            ?? obj = new Object();
            obj.l = savedState.l;
            obj.j = savedState.j;
            obj.k = savedState.k;
            obj.m = savedState.m;
            obj.n = savedState.n;
            obj.o = savedState.o;
            obj.q = savedState.q;
            obj.r = savedState.r;
            obj.s = savedState.s;
            obj.p = savedState.p;
            return obj;
        }
        ?? obj2 = new Object();
        obj2.q = this.w;
        obj2.r = this.D;
        obj2.s = this.E;
        LazySpanLookup lazySpanLookup = this.B;
        if (lazySpanLookup != null && (iArr = lazySpanLookup.a) != null) {
            obj2.o = iArr;
            obj2.n = iArr.length;
            obj2.p = lazySpanLookup.b;
        } else {
            obj2.n = 0;
        }
        int i = -1;
        if (v() > 0) {
            if (this.D) {
                D0 = E0();
            } else {
                D0 = D0();
            }
            obj2.j = D0;
            if (this.x) {
                A0 = z0(true);
            } else {
                A0 = A0(true);
            }
            if (A0 != null) {
                i = RecyclerView.LayoutManager.D(A0);
            }
            obj2.k = i;
            int i2 = this.p;
            obj2.l = i2;
            obj2.m = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                boolean z = this.D;
                OrientationHelper orientationHelper = this.r;
                Span[] spanArr = this.q;
                if (z) {
                    h = spanArr[i3].f(Integer.MIN_VALUE);
                    if (h != Integer.MIN_VALUE) {
                        k = orientationHelper.g();
                        h -= k;
                        obj2.m[i3] = h;
                    } else {
                        obj2.m[i3] = h;
                    }
                } else {
                    h = spanArr[i3].h(Integer.MIN_VALUE);
                    if (h != Integer.MIN_VALUE) {
                        k = orientationHelper.k();
                        h -= k;
                        obj2.m[i3] = h;
                    } else {
                        obj2.m[i3] = h;
                    }
                }
            }
            return obj2;
        }
        obj2.j = -1;
        obj2.k = -1;
        obj2.l = 0;
        return obj2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void c(String str) {
        RecyclerView recyclerView;
        if (this.F == null && (recyclerView = this.b) != null) {
            recyclerView.f(str);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void c0(int i) {
        if (i == 0) {
            w0();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean d() {
        if (this.t == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean e() {
        if (this.t == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean f(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void h(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        LayoutState layoutState;
        int f;
        if (this.t != 0) {
            i = i2;
        }
        if (v() != 0 && i != 0) {
            N0(i, state);
            int[] iArr = this.J;
            int i3 = this.p;
            if (iArr == null || iArr.length < i3) {
                this.J = new int[i3];
            }
            int i4 = 0;
            int i5 = 0;
            while (true) {
                layoutState = this.v;
                if (i4 >= i3) {
                    break;
                }
                int i6 = layoutState.d;
                Span[] spanArr = this.q;
                if (i6 == -1) {
                    int i7 = layoutState.f;
                    f = i7 - spanArr[i4].h(i7);
                } else {
                    f = spanArr[i4].f(layoutState.g) - layoutState.g;
                }
                if (f >= 0) {
                    this.J[i5] = f;
                    i5++;
                }
                i4++;
            }
            Arrays.sort(this.J, 0, i5);
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = layoutState.c;
                if (i9 >= 0 && i9 < state.b()) {
                    ((GapWorker.LayoutPrefetchRegistryImpl) layoutPrefetchRegistry).a(layoutState.c, this.J[i8]);
                    layoutState.c += layoutState.d;
                } else {
                    return;
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int j(RecyclerView.State state) {
        if (v() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.a(state, this.r, A0(z), z0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int j0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return S0(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int k(RecyclerView.State state) {
        return x0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void k0(int i) {
        SavedState savedState = this.F;
        if (savedState != null && savedState.j != i) {
            savedState.m = null;
            savedState.l = 0;
            savedState.j = -1;
            savedState.k = -1;
        }
        this.z = i;
        this.A = Integer.MIN_VALUE;
        i0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int l(RecyclerView.State state) {
        if (v() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.c(state, this.r, A0(z), z0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int l0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return S0(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int m(RecyclerView.State state) {
        if (v() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.a(state, this.r, A0(z), z0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int n(RecyclerView.State state) {
        return x0(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int o(RecyclerView.State state) {
        if (v() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.c(state, this.r, A0(z), z0(z), this, this.I);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final void o0(Rect rect, int i, int i2) {
        int g;
        int g2;
        int B = B() + A();
        int z = z() + C();
        int i3 = this.t;
        int i4 = this.p;
        if (i3 == 1) {
            int height = rect.height() + z;
            RecyclerView recyclerView = this.b;
            Field field = ViewCompat.a;
            g2 = RecyclerView.LayoutManager.g(i2, height, recyclerView.getMinimumHeight());
            g = RecyclerView.LayoutManager.g(i, (this.u * i4) + B, this.b.getMinimumWidth());
        } else {
            int width = rect.width() + B;
            RecyclerView recyclerView2 = this.b;
            Field field2 = ViewCompat.a;
            g = RecyclerView.LayoutManager.g(i, width, recyclerView2.getMinimumWidth());
            g2 = RecyclerView.LayoutManager.g(i2, (this.u * i4) + z, this.b.getMinimumHeight());
        }
        this.b.setMeasuredDimension(g, g2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams r() {
        if (this.t == 0) {
            return new RecyclerView.LayoutParams(-2, -1);
        }
        return new RecyclerView.LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams s(Context context, AttributeSet attributeSet) {
        return new RecyclerView.LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams t(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new RecyclerView.LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean v0() {
        if (this.F == null) {
            return true;
        }
        return false;
    }

    public final boolean w0() {
        int D0;
        if (v() != 0 && this.C != 0 && this.g) {
            if (this.x) {
                D0 = E0();
                D0();
            } else {
                D0 = D0();
                E0();
            }
            if (D0 == 0 && I0() != null) {
                this.B.a();
                this.f = true;
                i0();
                return true;
            }
        }
        return false;
    }

    public final int x0(RecyclerView.State state) {
        if (v() == 0) {
            return 0;
        }
        boolean z = !this.I;
        return ScrollbarHelper.b(state, this.r, A0(z), z0(z), this, this.I, this.x);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0269, code lost:
    
        O0(r1, r7);
     */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int, boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int y0(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state) {
        int i;
        Span[] spanArr;
        int k;
        int F0;
        int i2;
        BitSet bitSet;
        int i3;
        Span[] spanArr2;
        Span span;
        ?? r5;
        int h;
        int c;
        int i4;
        int i5;
        BitSet bitSet2;
        int i6;
        int i7;
        RecyclerView.Recycler recycler2 = recycler;
        BitSet bitSet3 = this.y;
        int i8 = this.p;
        bitSet3.set(0, i8, true);
        LayoutState layoutState2 = this.v;
        if (layoutState2.i) {
            if (layoutState.e == 1) {
                i = Integer.MAX_VALUE;
            } else {
                i = Integer.MIN_VALUE;
            }
        } else if (layoutState.e == 1) {
            i = layoutState.g + layoutState.b;
        } else {
            i = layoutState.f - layoutState.b;
        }
        int i9 = layoutState.e;
        int i10 = 0;
        while (true) {
            spanArr = this.q;
            if (i10 >= i8) {
                break;
            }
            if (!spanArr[i10].a.isEmpty()) {
                V0(spanArr[i10], i9, i);
            }
            i10++;
        }
        boolean z = this.x;
        OrientationHelper orientationHelper = this.r;
        if (z) {
            k = orientationHelper.g();
        } else {
            k = orientationHelper.k();
        }
        boolean z2 = false;
        while (true) {
            int i11 = layoutState.c;
            if (i11 < 0 || i11 >= state.b() || (!layoutState2.i && bitSet3.isEmpty())) {
                break;
            }
            View view = recycler2.k(layoutState.c, Long.MAX_VALUE).a;
            layoutState.c += layoutState.d;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int b = layoutParams.a.b();
            LazySpanLookup lazySpanLookup = this.B;
            int[] iArr = lazySpanLookup.a;
            if (iArr != null && b < iArr.length) {
                i2 = iArr[b];
            } else {
                i2 = -1;
            }
            if (i2 == -1) {
                if (M0(layoutState.e)) {
                    i3 = i8;
                    i7 = i8 - 1;
                    i8 = -1;
                    i6 = -1;
                } else {
                    i3 = i8;
                    i6 = 1;
                    i7 = 0;
                }
                Span span2 = null;
                int i12 = i6;
                if (layoutState.e == 1) {
                    int k2 = orientationHelper.k();
                    spanArr2 = spanArr;
                    int i13 = i7;
                    int i14 = Integer.MAX_VALUE;
                    while (i13 != i8) {
                        int i15 = i13;
                        Span span3 = spanArr2[i15];
                        BitSet bitSet4 = bitSet3;
                        int f = span3.f(k2);
                        if (f < i14) {
                            i14 = f;
                            span2 = span3;
                        }
                        i13 = i15 + i12;
                        bitSet3 = bitSet4;
                    }
                    bitSet = bitSet3;
                } else {
                    bitSet = bitSet3;
                    spanArr2 = spanArr;
                    int g = orientationHelper.g();
                    int i16 = i7;
                    int i17 = Integer.MIN_VALUE;
                    while (i16 != i8) {
                        Span span4 = spanArr2[i16];
                        int i18 = i8;
                        int h2 = span4.h(g);
                        if (h2 > i17) {
                            i17 = h2;
                            span2 = span4;
                        }
                        i16 += i12;
                        i8 = i18;
                    }
                }
                span = span2;
                lazySpanLookup.b(b);
                lazySpanLookup.a[b] = span.e;
            } else {
                bitSet = bitSet3;
                i3 = i8;
                spanArr2 = spanArr;
                span = spanArr2[i2];
            }
            layoutParams.e = span;
            if (layoutState.e == 1) {
                r5 = 0;
                b(view, -1, false);
            } else {
                r5 = 0;
                b(view, 0, false);
            }
            int i19 = this.t;
            if (i19 == 1) {
                K0(view, RecyclerView.LayoutManager.w(r5, this.u, this.l, r5, ((ViewGroup.MarginLayoutParams) layoutParams).width), RecyclerView.LayoutManager.w(true, this.o, this.m, z() + C(), ((ViewGroup.MarginLayoutParams) layoutParams).height));
            } else {
                K0(view, RecyclerView.LayoutManager.w(true, this.n, this.l, B() + A(), ((ViewGroup.MarginLayoutParams) layoutParams).width), RecyclerView.LayoutManager.w(false, this.u, this.m, 0, ((ViewGroup.MarginLayoutParams) layoutParams).height));
            }
            if (layoutState.e == 1) {
                c = span.f(k);
                h = orientationHelper.c(view) + c;
            } else {
                h = span.h(k);
                c = h - orientationHelper.c(view);
            }
            int i20 = layoutState.e;
            Span span5 = layoutParams.e;
            if (i20 == 1) {
                span5.getClass();
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                layoutParams2.e = span5;
                ArrayList arrayList = span5.a;
                arrayList.add(view);
                span5.c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    span5.b = Integer.MIN_VALUE;
                }
                if (layoutParams2.a.h() || layoutParams2.a.k()) {
                    span5.d = StaggeredGridLayoutManager.this.r.c(view) + span5.d;
                }
            } else {
                span5.getClass();
                LayoutParams layoutParams3 = (LayoutParams) view.getLayoutParams();
                layoutParams3.e = span5;
                ArrayList arrayList2 = span5.a;
                arrayList2.add(0, view);
                span5.b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    span5.c = Integer.MIN_VALUE;
                }
                if (layoutParams3.a.h() || layoutParams3.a.k()) {
                    span5.d = StaggeredGridLayoutManager.this.r.c(view) + span5.d;
                }
            }
            boolean J0 = J0();
            OrientationHelper orientationHelper2 = this.s;
            if (J0 && i19 == 1) {
                i5 = orientationHelper2.g() - (((i3 - 1) - span.e) * this.u);
                i4 = i5 - orientationHelper2.c(view);
            } else {
                int k3 = (span.e * this.u) + orientationHelper2.k();
                int c2 = orientationHelper2.c(view) + k3;
                i4 = k3;
                i5 = c2;
            }
            z2 = true;
            if (i19 == 1) {
                RecyclerView.LayoutManager.J(view, i4, c, i5, h);
            } else {
                RecyclerView.LayoutManager.J(view, c, i4, h, i5);
            }
            V0(span, layoutState2.e, i);
            recycler2 = recycler;
            O0(recycler2, layoutState2);
            if (layoutState2.h && view.hasFocusable()) {
                bitSet2 = bitSet;
                bitSet2.set(span.e, false);
            } else {
                bitSet2 = bitSet;
            }
            bitSet3 = bitSet2;
            i8 = i3;
            spanArr = spanArr2;
        }
        if (layoutState2.e == -1) {
            F0 = orientationHelper.k() - G0(orientationHelper.k());
        } else {
            F0 = F0(orientationHelper.g()) - orientationHelper.g();
        }
        if (F0 > 0) {
            return Math.min(layoutState.b, F0);
        }
        return 0;
    }

    public final View z0(boolean z) {
        OrientationHelper orientationHelper = this.r;
        int k = orientationHelper.k();
        int g = orientationHelper.g();
        View view = null;
        for (int v = v() - 1; v >= 0; v--) {
            View u = u(v);
            int e = orientationHelper.e(u);
            int b = orientationHelper.b(u);
            if (b > k && e < g) {
                if (b > g && z) {
                    if (view == null) {
                        view = u;
                    }
                } else {
                    return u;
                }
            }
        }
        return view;
    }
}
