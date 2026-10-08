package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {
    public final BaseTransientBottomBar$BehaviorDelegate g;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.material.snackbar.BaseTransientBottomBar$BehaviorDelegate] */
    public BaseTransientBottomBar$Behavior() {
        ?? obj = new Object();
        this.d = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        this.e = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        this.c = 0;
        this.g = obj;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.g.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (SnackbarManager.b == null) {
                    SnackbarManager.b = new SnackbarManager();
                }
                synchronized (SnackbarManager.b.a) {
                }
            }
        } else if (coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (SnackbarManager.b == null) {
                SnackbarManager.b = new SnackbarManager();
            }
            synchronized (SnackbarManager.b.a) {
            }
        }
        return super.f(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean r(View view) {
        this.g.getClass();
        return view instanceof BaseTransientBottomBar$SnackbarBaseLayout;
    }
}
