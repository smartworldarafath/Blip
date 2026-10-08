package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.graphics.drawable.DrawableWrapperCompat;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.widget.ListViewAutoScrollHelper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import net.blip.android.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DropDownListView extends ListView {
    public final Rect j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public GateKeeperDrawable p;
    public boolean q;
    public final boolean r;
    public boolean s;
    public ListViewAutoScrollHelper t;
    public ResolveHoverRunnable u;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static final Method a;
        public static final Method b;
        public static final Method c;
        public static final boolean d;

        static {
            try {
                Class cls = Integer.TYPE;
                Class cls2 = Boolean.TYPE;
                Class cls3 = Float.TYPE;
                Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, cls2, cls3, cls3);
                a = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
                b = declaredMethod2;
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
                c = declaredMethod3;
                declaredMethod3.setAccessible(true);
                d = true;
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api33Impl {
        public static boolean a(MenuPopupWindow.MenuDropDownListView menuDropDownListView) {
            return menuDropDownListView.isSelectedChildViewEnabled();
        }

        public static void b(MenuPopupWindow.MenuDropDownListView menuDropDownListView, boolean z) {
            menuDropDownListView.setSelectedChildViewEnabled(z);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class GateKeeperDrawable extends DrawableWrapperCompat {
        public boolean k;

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            if (this.k) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
        public final void setHotspot(float f, float f2) {
            if (this.k) {
                super.setHotspot(f, f2);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
        public final void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.k) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public final boolean setState(int[] iArr) {
            if (this.k) {
                return this.j.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
        public final boolean setVisible(boolean z, boolean z2) {
            if (this.k) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class PreApi33Impl {
        public static final Field a;

        static {
            Field field = null;
            try {
                field = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
                field.setAccessible(true);
            } catch (NoSuchFieldException e) {
                e.printStackTrace();
            }
            a = field;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ResolveHoverRunnable implements Runnable {
        public ResolveHoverRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.u = null;
            dropDownListView.drawableStateChanged();
        }
    }

    public DropDownListView(Context context, boolean z) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.j = new Rect();
        this.k = 0;
        this.l = 0;
        this.m = 0;
        this.n = 0;
        this.r = z;
        setCacheColorHint(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x014e A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(MotionEvent motionEvent, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        View childAt;
        View childAt2;
        int actionMasked = motionEvent.getActionMasked();
        boolean z5 = true;
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    z = true;
                    z5 = false;
                    if (z || z5) {
                        this.s = false;
                        setPressed(false);
                        drawableStateChanged();
                        childAt2 = getChildAt(this.o - getFirstVisiblePosition());
                        if (childAt2 != null) {
                            childAt2.setPressed(false);
                        }
                    }
                    ListViewAutoScrollHelper listViewAutoScrollHelper = this.t;
                    if (!z) {
                        if (listViewAutoScrollHelper == null) {
                            this.t = new ListViewAutoScrollHelper((MenuPopupWindow.MenuDropDownListView) this);
                        }
                        ListViewAutoScrollHelper listViewAutoScrollHelper2 = this.t;
                        boolean z6 = listViewAutoScrollHelper2.y;
                        listViewAutoScrollHelper2.y = true;
                        listViewAutoScrollHelper2.onTouch(this, motionEvent);
                    } else if (listViewAutoScrollHelper != null) {
                        if (listViewAutoScrollHelper.y) {
                            listViewAutoScrollHelper.d();
                        }
                        listViewAutoScrollHelper.y = false;
                    }
                    return z;
                }
                z = false;
                z5 = false;
                if (z) {
                }
                this.s = false;
                setPressed(false);
                drawableStateChanged();
                childAt2 = getChildAt(this.o - getFirstVisiblePosition());
                if (childAt2 != null) {
                }
                ListViewAutoScrollHelper listViewAutoScrollHelper3 = this.t;
                if (!z) {
                }
                return z;
            }
            z = true;
        } else {
            z = false;
        }
        int findPointerIndex = motionEvent.findPointerIndex(i);
        if (findPointerIndex >= 0) {
            int x = (int) motionEvent.getX(findPointerIndex);
            int y = (int) motionEvent.getY(findPointerIndex);
            int pointToPosition = pointToPosition(x, y);
            if (pointToPosition != -1) {
                View childAt3 = getChildAt(pointToPosition - getFirstVisiblePosition());
                float f = x;
                float f2 = y;
                this.s = true;
                drawableHotspotChanged(f, f2);
                if (!isPressed()) {
                    setPressed(true);
                }
                layoutChildren();
                int i2 = this.o;
                if (i2 != -1 && (childAt = getChildAt(i2 - getFirstVisiblePosition())) != null && childAt != childAt3 && childAt.isPressed()) {
                    childAt.setPressed(false);
                }
                this.o = pointToPosition;
                childAt3.drawableHotspotChanged(f - childAt3.getLeft(), f2 - childAt3.getTop());
                if (!childAt3.isPressed()) {
                    childAt3.setPressed(true);
                }
                Drawable selector = getSelector();
                if (selector != null && pointToPosition != -1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    selector.setVisible(false, false);
                }
                int left = childAt3.getLeft();
                int top = childAt3.getTop();
                int right = childAt3.getRight();
                int bottom = childAt3.getBottom();
                Rect rect = this.j;
                rect.set(left, top, right, bottom);
                rect.left -= this.k;
                rect.top -= this.l;
                rect.right += this.m;
                rect.bottom += this.n;
                if (Build.VERSION.SDK_INT >= 33) {
                    z3 = Api33Impl.a((MenuPopupWindow.MenuDropDownListView) this);
                } else {
                    Field field = PreApi33Impl.a;
                    if (field != null) {
                        try {
                            z3 = field.getBoolean(this);
                        } catch (IllegalAccessException e) {
                            e.printStackTrace();
                        }
                    }
                    z3 = false;
                }
                if (childAt3.isEnabled() != z3) {
                    boolean z7 = !z3;
                    if (Build.VERSION.SDK_INT >= 33) {
                        Api33Impl.b((MenuPopupWindow.MenuDropDownListView) this, z7);
                    } else {
                        Field field2 = PreApi33Impl.a;
                        if (field2 != null) {
                            try {
                                field2.set(this, Boolean.valueOf(z7));
                            } catch (IllegalAccessException e2) {
                                e2.printStackTrace();
                            }
                        }
                    }
                    if (pointToPosition != -1) {
                        refreshDrawableState();
                    }
                }
                if (z2) {
                    float exactCenterX = rect.exactCenterX();
                    float exactCenterY = rect.exactCenterY();
                    if (getVisibility() == 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    selector.setVisible(z4, false);
                    selector.setHotspot(exactCenterX, exactCenterY);
                }
                Drawable selector2 = getSelector();
                if (selector2 != null && pointToPosition != -1) {
                    selector2.setHotspot(f, f2);
                }
                GateKeeperDrawable gateKeeperDrawable = this.p;
                if (gateKeeperDrawable != null) {
                    gateKeeperDrawable.k = false;
                }
                refreshDrawableState();
                if (actionMasked == 1) {
                    performItemClick(childAt3, pointToPosition, getItemIdAtPosition(pointToPosition));
                }
                z5 = false;
                z = true;
            }
            if (z) {
            }
            this.s = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.o - getFirstVisiblePosition());
            if (childAt2 != null) {
            }
            ListViewAutoScrollHelper listViewAutoScrollHelper32 = this.t;
            if (!z) {
            }
            return z;
        }
        z = false;
        z5 = false;
        if (z) {
        }
        this.s = false;
        setPressed(false);
        drawableStateChanged();
        childAt2 = getChildAt(this.o - getFirstVisiblePosition());
        if (childAt2 != null) {
        }
        ListViewAutoScrollHelper listViewAutoScrollHelper322 = this.t;
        if (!z) {
        }
        return z;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.j;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.u == null) {
            super.drawableStateChanged();
            GateKeeperDrawable gateKeeperDrawable = this.p;
            if (gateKeeperDrawable != null) {
                gateKeeperDrawable.k = true;
            }
            Drawable selector = getSelector();
            if (selector != null && this.s && isPressed()) {
                selector.setState(getDrawableState());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        if (!this.r && !super.hasFocus()) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        if (!this.r && !super.hasWindowFocus()) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean isFocused() {
        if (!this.r && !super.isFocused()) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        if ((this.r && this.q) || super.isInTouchMode()) {
            return true;
        }
        return false;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.u = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.u == null) {
            ResolveHoverRunnable resolveHoverRunnable = new ResolveHoverRunnable();
            this.u = resolveHoverRunnable;
            post(resolveHoverRunnable);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
            return onHoverEvent;
        }
        int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
            View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
            if (childAt.isEnabled()) {
                requestFocus();
                if (Build.VERSION.SDK_INT >= 30 && Api30Impl.d) {
                    try {
                        Api30Impl.a.invoke(this, Integer.valueOf(pointToPosition), childAt, Boolean.FALSE, -1, -1);
                        Api30Impl.b.invoke(this, Integer.valueOf(pointToPosition));
                        Api30Impl.c.invoke(this, Integer.valueOf(pointToPosition));
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    } catch (InvocationTargetException e2) {
                        e2.printStackTrace();
                    }
                } else {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
            }
            Drawable selector = getSelector();
            if (selector != null && this.s && isPressed()) {
                selector.setState(getDrawableState());
            }
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.o = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        ResolveHoverRunnable resolveHoverRunnable = this.u;
        if (resolveHoverRunnable != null) {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.u = null;
            dropDownListView.removeCallbacks(resolveHoverRunnable);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.q = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.appcompat.widget.DropDownListView$GateKeeperDrawable, androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable$Callback, android.graphics.drawable.Drawable] */
    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        GateKeeperDrawable gateKeeperDrawable = null;
        if (drawable != 0) {
            ?? drawable2 = new Drawable();
            Drawable drawable3 = drawable2.j;
            if (drawable3 != null) {
                drawable3.setCallback(null);
            }
            drawable2.j = drawable;
            drawable.setCallback(drawable2);
            drawable2.k = true;
            gateKeeperDrawable = drawable2;
        }
        this.p = gateKeeperDrawable;
        super.setSelector(gateKeeperDrawable);
        Rect rect = new Rect();
        if (drawable != 0) {
            drawable.getPadding(rect);
        }
        this.k = rect.left;
        this.l = rect.top;
        this.m = rect.right;
        this.n = rect.bottom;
    }
}
