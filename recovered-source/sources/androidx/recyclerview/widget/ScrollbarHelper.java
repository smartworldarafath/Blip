package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class ScrollbarHelper {
    public static int a(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z) {
        if (layoutManager.v() != 0 && state.b() != 0 && view != null && view2 != null) {
            if (!z) {
                return Math.abs(RecyclerView.LayoutManager.D(view) - RecyclerView.LayoutManager.D(view2)) + 1;
            }
            return Math.min(orientationHelper.l(), orientationHelper.b(view2) - orientationHelper.e(view));
        }
        return 0;
    }

    public static int b(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z, boolean z2) {
        int max;
        if (layoutManager.v() == 0 || state.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int min = Math.min(RecyclerView.LayoutManager.D(view), RecyclerView.LayoutManager.D(view2));
        int max2 = Math.max(RecyclerView.LayoutManager.D(view), RecyclerView.LayoutManager.D(view2));
        if (z2) {
            max = Math.max(0, (state.b() - max2) - 1);
        } else {
            max = Math.max(0, min);
        }
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(orientationHelper.b(view2) - orientationHelper.e(view)) / (Math.abs(RecyclerView.LayoutManager.D(view) - RecyclerView.LayoutManager.D(view2)) + 1))) + (orientationHelper.k() - orientationHelper.e(view)));
    }

    public static int c(RecyclerView.State state, OrientationHelper orientationHelper, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z) {
        if (layoutManager.v() != 0 && state.b() != 0 && view != null && view2 != null) {
            if (!z) {
                return state.b();
            }
            return (int) (((orientationHelper.b(view2) - orientationHelper.e(view)) / (Math.abs(RecyclerView.LayoutManager.D(view) - RecyclerView.LayoutManager.D(view2)) + 1)) * state.b());
        }
        return 0;
    }
}
