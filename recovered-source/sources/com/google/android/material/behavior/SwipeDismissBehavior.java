package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
import java.lang.reflect.Field;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public ViewDragHelper a;
    public boolean b;
    public int c = 2;
    public float d = 0.0f;
    public float e = 0.5f;
    public final ViewDragHelper.Callback f = new ViewDragHelper.Callback() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1
        public int a;
        public int b = -1;

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int a(View view, int i) {
            boolean z;
            int width;
            int width2;
            Field field = ViewCompat.a;
            if (view.getLayoutDirection() == 1) {
                z = true;
            } else {
                z = false;
            }
            int i2 = SwipeDismissBehavior.this.c;
            if (i2 == 0) {
                width = this.a;
                if (z) {
                    width -= view.getWidth();
                    width2 = this.a;
                } else {
                    width2 = view.getWidth() + width;
                }
            } else {
                int i3 = this.a;
                if (i2 == 1) {
                    if (z) {
                        width2 = view.getWidth() + i3;
                        width = i3;
                    } else {
                        width = i3 - view.getWidth();
                        width2 = this.a;
                    }
                } else {
                    width = i3 - view.getWidth();
                    width2 = this.a + view.getWidth();
                }
            }
            return Math.min(Math.max(width, i), width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int b(View view, int i) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int c(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void e(View view, int i) {
            this.b = i;
            this.a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void g(View view, int i, int i2) {
            float f = this.a;
            float width = view.getWidth();
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            float f2 = (width * swipeDismissBehavior.d) + f;
            float width2 = (view.getWidth() * swipeDismissBehavior.e) + this.a;
            float f3 = i;
            if (f3 <= f2) {
                view.setAlpha(1.0f);
            } else if (f3 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((f3 - f2) / (width2 - f2))), 1.0f));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0050, code lost:
        
            if (java.lang.Math.abs(r9.getLeft() - r8.a) >= java.lang.Math.round(r9.getWidth() * 0.5f)) goto L27;
         */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void h(View view, float f, float f2) {
            int i;
            boolean z;
            this.b = -1;
            int width = view.getWidth();
            boolean z2 = false;
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            if (f != 0.0f) {
                Field field = ViewCompat.a;
                if (view.getLayoutDirection() == 1) {
                    z = true;
                } else {
                    z = false;
                }
                int i2 = swipeDismissBehavior.c;
                if (i2 != 2) {
                    i = i2 == 0 ? this.a : this.a;
                }
                int left = view.getLeft();
                int i3 = this.a;
                if (left < i3) {
                    i = i3 - width;
                } else {
                    i = i3 + width;
                }
                z2 = true;
            }
            if (swipeDismissBehavior.a.o(i, view.getTop())) {
                SettleRunnable settleRunnable = new SettleRunnable(view, z2);
                Field field2 = ViewCompat.a;
                view.postOnAnimation(settleRunnable);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final boolean i(View view, int i) {
            int i2 = this.b;
            if ((i2 == -1 || i2 == i) && SwipeDismissBehavior.this.r(view)) {
                return true;
            }
            return false;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void f(int i) {
        }
    };

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class SettleRunnable implements Runnable {
        public final View j;

        public SettleRunnable(View view, boolean z) {
            this.j = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.a;
            if (viewDragHelper != null && viewDragHelper.f()) {
                Field field = ViewCompat.a;
                this.j.postOnAnimation(this);
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z = this.b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                this.b = false;
            }
        } else {
            z = coordinatorLayout.o(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.b = z;
        }
        if (!z) {
            return false;
        }
        if (this.a == null) {
            this.a = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.f);
        }
        return this.a.p(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i) {
        Field field = ViewCompat.a;
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            ViewCompat.k(view, 1048576);
            ViewCompat.i(view, 0);
            if (r(view)) {
                ViewCompat.l(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.l, new AccessibilityViewCommand() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.2
                    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                    public final boolean a(View view2) {
                        int width;
                        SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
                        boolean z = false;
                        if (!swipeDismissBehavior.r(view2)) {
                            return false;
                        }
                        Field field2 = ViewCompat.a;
                        if (view2.getLayoutDirection() == 1) {
                            z = true;
                        }
                        int i2 = swipeDismissBehavior.c;
                        if ((i2 == 0 && z) || (i2 == 1 && !z)) {
                            width = -view2.getWidth();
                        } else {
                            width = view2.getWidth();
                        }
                        view2.offsetLeftAndRight(width);
                        view2.setAlpha(0.0f);
                        return true;
                    }
                });
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean q(View view, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.a;
        if (viewDragHelper != null) {
            viewDragHelper.j(motionEvent);
            return true;
        }
        return false;
    }

    public boolean r(View view) {
        return true;
    }
}
