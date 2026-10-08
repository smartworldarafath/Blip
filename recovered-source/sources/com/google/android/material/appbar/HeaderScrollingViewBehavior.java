package com.google.android.material.appbar;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {
    public int b;

    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public final void r(CoordinatorLayout coordinatorLayout, View view, int i) {
        AppBarLayout$ScrollingViewBehavior.s(coordinatorLayout.j(view));
        coordinatorLayout.q(view, i);
    }
}
