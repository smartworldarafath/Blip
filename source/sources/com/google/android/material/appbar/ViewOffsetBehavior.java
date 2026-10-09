package com.google.android.material.appbar;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public ViewOffsetHelper a;

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        r(coordinatorLayout, view, i);
        if (this.a == null) {
            this.a = new ViewOffsetHelper(view);
        }
        ViewOffsetHelper viewOffsetHelper = this.a;
        View view2 = viewOffsetHelper.a;
        viewOffsetHelper.b = view2.getTop();
        viewOffsetHelper.c = view2.getLeft();
        ViewOffsetHelper viewOffsetHelper2 = this.a;
        View view3 = viewOffsetHelper2.a;
        int top = 0 - (view3.getTop() - viewOffsetHelper2.b);
        Field field = ViewCompat.a;
        view3.offsetTopAndBottom(top);
        view3.offsetLeftAndRight(0 - (view3.getLeft() - viewOffsetHelper2.c));
        return true;
    }

    public void r(CoordinatorLayout coordinatorLayout, View view, int i) {
        coordinatorLayout.q(view, i);
    }
}
