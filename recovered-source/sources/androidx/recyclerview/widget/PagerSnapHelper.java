package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PagerSnapHelper extends SnapHelper {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.recyclerview.widget.PagerSnapHelper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends LinearSmoothScroller {
        public AnonymousClass1(PagerSnapHelper pagerSnapHelper, Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public final void c(View view, RecyclerView.SmoothScroller.Action action) {
            throw null;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final float e(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public final int f(int i) {
            return Math.min(100, super.f(i));
        }
    }

    public static int b(View view, OrientationHelper orientationHelper) {
        return ((orientationHelper.c(view) / 2) + orientationHelper.e(view)) - ((orientationHelper.l() / 2) + orientationHelper.k());
    }

    public abstract int[] a(RecyclerView.LayoutManager layoutManager, View view);

    public abstract OrientationHelper c(RecyclerView.LayoutManager layoutManager);

    public abstract OrientationHelper d(RecyclerView.LayoutManager layoutManager);
}
