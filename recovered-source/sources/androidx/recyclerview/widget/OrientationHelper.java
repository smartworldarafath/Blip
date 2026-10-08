package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OrientationHelper {
    public final RecyclerView.LayoutManager a;
    public int b = Integer.MIN_VALUE;
    public final Rect c = new Rect();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.recyclerview.widget.OrientationHelper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends OrientationHelper {
        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.a.getClass();
            return view.getRight() + ((RecyclerView.LayoutParams) view.getLayoutParams()).b.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.a.getClass();
            Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).b;
            return view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int d(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.a.getClass();
            Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).b;
            return view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int e(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.a.getClass();
            return (view.getLeft() - ((RecyclerView.LayoutParams) view.getLayoutParams()).b.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int f() {
            return this.a.n;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int g() {
            RecyclerView.LayoutManager layoutManager = this.a;
            return layoutManager.n - layoutManager.B();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int h() {
            return this.a.B();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int i() {
            return this.a.l;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int j() {
            return this.a.m;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int k() {
            return this.a.A();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int l() {
            RecyclerView.LayoutManager layoutManager = this.a;
            return (layoutManager.n - layoutManager.A()) - layoutManager.B();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int m(View view) {
            RecyclerView.LayoutManager layoutManager = this.a;
            Rect rect = this.c;
            layoutManager.G(view, rect);
            return rect.right;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int n(View view) {
            RecyclerView.LayoutManager layoutManager = this.a;
            Rect rect = this.c;
            layoutManager.G(view, rect);
            return rect.left;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final void o(int i) {
            this.a.K(i);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.recyclerview.widget.OrientationHelper$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends OrientationHelper {
        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.a.getClass();
            return view.getBottom() + ((RecyclerView.LayoutParams) view.getLayoutParams()).b.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.a.getClass();
            Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).b;
            return view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int d(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.a.getClass();
            Rect rect = ((RecyclerView.LayoutParams) view.getLayoutParams()).b;
            return view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int e(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.a.getClass();
            return (view.getTop() - ((RecyclerView.LayoutParams) view.getLayoutParams()).b.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int f() {
            return this.a.o;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int g() {
            RecyclerView.LayoutManager layoutManager = this.a;
            return layoutManager.o - layoutManager.z();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int h() {
            return this.a.z();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int i() {
            return this.a.m;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int j() {
            return this.a.l;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int k() {
            return this.a.C();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int l() {
            RecyclerView.LayoutManager layoutManager = this.a;
            return (layoutManager.o - layoutManager.C()) - layoutManager.z();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int m(View view) {
            RecyclerView.LayoutManager layoutManager = this.a;
            Rect rect = this.c;
            layoutManager.G(view, rect);
            return rect.bottom;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int n(View view) {
            RecyclerView.LayoutManager layoutManager = this.a;
            Rect rect = this.c;
            layoutManager.G(view, rect);
            return rect.top;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final void o(int i) {
            this.a.L(i);
        }
    }

    public OrientationHelper(RecyclerView.LayoutManager layoutManager) {
        this.a = layoutManager;
    }

    public static OrientationHelper a(RecyclerView.LayoutManager layoutManager, int i) {
        if (i != 0) {
            if (i == 1) {
                return new OrientationHelper(layoutManager);
            }
            u2.g("invalid orientation");
            return null;
        }
        return new OrientationHelper(layoutManager);
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m(View view);

    public abstract int n(View view);

    public abstract void o(int i);
}
