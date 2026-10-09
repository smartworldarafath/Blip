package androidx.compose.ui.platform;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.compose.ui.focus.FocusDirection;
import defpackage.m0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IndirectPointerNavigationGestureDetector {
    public final m0 a;
    public int b = 0;
    public boolean c;
    public final GestureDetector d;

    public IndirectPointerNavigationGestureDetector(Context context, m0 m0Var) {
        this.a = m0Var;
        this.d = new GestureDetector(context, new GestureDetector.OnGestureListener() { // from class: androidx.compose.ui.platform.IndirectPointerNavigationGestureDetector$gestureDetector$1
            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                IndirectPointerNavigationGestureDetector indirectPointerNavigationGestureDetector = IndirectPointerNavigationGestureDetector.this;
                m0 m0Var2 = indirectPointerNavigationGestureDetector.a;
                if (!indirectPointerNavigationGestureDetector.c) {
                    int i = indirectPointerNavigationGestureDetector.b;
                    int i2 = 2;
                    if (i == 1) {
                        if (Math.abs(f) > Math.abs(f2)) {
                            if (f > 0.0f) {
                                i2 = 1;
                            }
                            m0Var2.b(new FocusDirection(i2));
                            return true;
                        }
                    } else if (i == 2 && Math.abs(f2) > Math.abs(f)) {
                        if (f2 > 0.0f) {
                            i2 = 1;
                        }
                        m0Var2.b(new FocusDirection(i2));
                    }
                }
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onShowPress(MotionEvent motionEvent) {
            }
        });
    }
}
