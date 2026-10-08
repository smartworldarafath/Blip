package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.customview.widget.FocusStrategy;
import com.google.android.material.chip.Chip;
import defpackage.u2;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final Rect w = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    public static final FocusStrategy.BoundsAdapter x = new Object();
    public static final FocusStrategy.CollectionAdapter y = new Object();
    public final AccessibilityManager q;
    public final Chip r;
    public MyNodeProvider s;
    public final Rect m = new Rect();
    public final Rect n = new Rect();
    public final Rect o = new Rect();
    public final int[] p = new int[2];
    public int t = Integer.MIN_VALUE;
    public int u = Integer.MIN_VALUE;
    public int v = Integer.MIN_VALUE;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.customview.widget.ExploreByTouchHelper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.customview.widget.ExploreByTouchHelper$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass2 implements FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class MyNodeProvider extends AccessibilityNodeProviderCompat {
        public MyNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat b(int i) {
            return new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain(ExploreByTouchHelper.this.p(i).a));
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat c(int i) {
            int i2;
            ExploreByTouchHelper exploreByTouchHelper = ExploreByTouchHelper.this;
            if (i == 2) {
                i2 = exploreByTouchHelper.t;
            } else {
                i2 = exploreByTouchHelper.u;
            }
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return b(i2);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final boolean d(int i, int i2, Bundle bundle) {
            int i3;
            ExploreByTouchHelper exploreByTouchHelper = ExploreByTouchHelper.this;
            Chip chip = exploreByTouchHelper.r;
            if (i != -1) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 64) {
                            if (i2 != 128) {
                                return exploreByTouchHelper.q(i, i2);
                            }
                            if (exploreByTouchHelper.t != i) {
                                return false;
                            }
                            exploreByTouchHelper.t = Integer.MIN_VALUE;
                            chip.invalidate();
                            exploreByTouchHelper.v(i, 65536);
                            return true;
                        }
                        AccessibilityManager accessibilityManager = exploreByTouchHelper.q;
                        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i3 = exploreByTouchHelper.t) == i) {
                            return false;
                        }
                        if (i3 != Integer.MIN_VALUE) {
                            exploreByTouchHelper.t = Integer.MIN_VALUE;
                            chip.invalidate();
                            exploreByTouchHelper.v(i3, 65536);
                        }
                        exploreByTouchHelper.t = i;
                        chip.invalidate();
                        exploreByTouchHelper.v(i, 32768);
                        return true;
                    }
                    return exploreByTouchHelper.j(i);
                }
                return exploreByTouchHelper.u(i);
            }
            Field field = ViewCompat.a;
            return chip.performAccessibilityAction(i2, bundle);
        }
    }

    public ExploreByTouchHelper(Chip chip) {
        this.r = chip;
        this.q = (AccessibilityManager) chip.getContext().getSystemService("accessibility");
        chip.setFocusable(true);
        Field field = ViewCompat.a;
        if (chip.getImportantForAccessibility() == 0) {
            chip.setImportantForAccessibility(1);
        }
    }

    private void w(int i) {
        int i2 = this.v;
        if (i2 == i) {
            return;
        }
        this.v = i;
        v(i, 128);
        v(i2, 256);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final AccessibilityNodeProviderCompat b(View view) {
        if (this.s == null) {
            this.s = new MyNodeProvider();
        }
        return this.s;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.j.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.a);
        r(accessibilityNodeInfoCompat);
    }

    public final boolean j(int i) {
        if (this.u != i) {
            return false;
        }
        this.u = Integer.MIN_VALUE;
        t(i, false);
        v(i, 8);
        return true;
    }

    public final AccessibilityNodeInfoCompat k(int i) {
        boolean z;
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(obtain);
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        accessibilityNodeInfoCompat.i("android.view.View");
        Rect rect = w;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        accessibilityNodeInfoCompat.b = -1;
        Chip chip = this.r;
        obtain.setParent(chip);
        s(i, accessibilityNodeInfoCompat);
        if (accessibilityNodeInfoCompat.g() == null && obtain.getContentDescription() == null) {
            u2.n("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
            return null;
        }
        Rect rect2 = this.n;
        accessibilityNodeInfoCompat.f(rect2);
        if (!rect2.equals(rect)) {
            int actions = obtain.getActions();
            if ((actions & 64) == 0) {
                if ((actions & 128) == 0) {
                    obtain.setPackageName(chip.getContext().getPackageName());
                    accessibilityNodeInfoCompat.c = i;
                    obtain.setSource(chip, i);
                    if (this.t == i) {
                        obtain.setAccessibilityFocused(true);
                        accessibilityNodeInfoCompat.a(128);
                    } else {
                        obtain.setAccessibilityFocused(false);
                        accessibilityNodeInfoCompat.a(64);
                    }
                    if (this.u == i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        accessibilityNodeInfoCompat.a(2);
                    } else if (obtain.isFocusable()) {
                        accessibilityNodeInfoCompat.a(1);
                    }
                    obtain.setFocused(z);
                    int[] iArr = this.p;
                    chip.getLocationOnScreen(iArr);
                    Rect rect3 = this.m;
                    obtain.getBoundsInScreen(rect3);
                    if (rect3.equals(rect)) {
                        accessibilityNodeInfoCompat.f(rect3);
                        if (accessibilityNodeInfoCompat.b != -1) {
                            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain());
                            for (int i2 = accessibilityNodeInfoCompat.b; i2 != -1; i2 = accessibilityNodeInfoCompat2.b) {
                                accessibilityNodeInfoCompat2.b = -1;
                                AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat2.a;
                                accessibilityNodeInfo.setParent(chip, -1);
                                accessibilityNodeInfo.setBoundsInParent(rect);
                                s(i2, accessibilityNodeInfoCompat2);
                                accessibilityNodeInfoCompat2.f(rect2);
                                rect3.offset(rect2.left, rect2.top);
                            }
                        }
                        rect3.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
                    }
                    Rect rect4 = this.o;
                    if (chip.getLocalVisibleRect(rect4)) {
                        rect4.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
                        if (rect3.intersect(rect4)) {
                            AccessibilityNodeInfo accessibilityNodeInfo2 = accessibilityNodeInfoCompat.a;
                            accessibilityNodeInfo2.setBoundsInScreen(rect3);
                            if (!rect3.isEmpty() && chip.getWindowVisibility() == 0) {
                                Object parent = chip.getParent();
                                while (true) {
                                    if (parent instanceof View) {
                                        View view = (View) parent;
                                        if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                                            break;
                                        }
                                        parent = view.getParent();
                                    } else if (parent != null) {
                                        accessibilityNodeInfo2.setVisibleToUser(true);
                                    }
                                }
                            }
                        }
                    }
                    return accessibilityNodeInfoCompat;
                }
                u2.n("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
                return null;
            }
            u2.n("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            return null;
        }
        u2.n("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        return null;
    }

    public final boolean l(MotionEvent motionEvent) {
        AccessibilityManager accessibilityManager = this.q;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action != 7 && action != 9) {
                if (action == 10 && this.v != Integer.MIN_VALUE) {
                    w(Integer.MIN_VALUE);
                    return true;
                }
                return false;
            }
            int m = m(motionEvent.getX(), motionEvent.getY());
            w(m);
            if (m != Integer.MIN_VALUE) {
                return true;
            }
            return false;
        }
        return false;
    }

    public abstract int m(float f, float f2);

    public abstract void n(ArrayList arrayList);

    public final boolean o(int i, Rect rect) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        boolean z;
        int i2;
        Object obj;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2;
        int lastIndexOf;
        Object obj2;
        ArrayList arrayList = new ArrayList();
        n(arrayList);
        SparseArrayCompat sparseArrayCompat = new SparseArrayCompat(0);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            sparseArrayCompat.e(i3, k(i3));
        }
        int i4 = this.u;
        int i5 = Integer.MIN_VALUE;
        if (i4 == Integer.MIN_VALUE) {
            accessibilityNodeInfoCompat = null;
        } else {
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) sparseArrayCompat.c(i4);
        }
        FocusStrategy.BoundsAdapter boundsAdapter = x;
        FocusStrategy.CollectionAdapter collectionAdapter = y;
        Chip chip = this.r;
        int i6 = -1;
        if (i != 1 && i != 2) {
            if (i != 17 && i != 33 && i != 66 && i != 130) {
                u2.g("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return false;
            }
            Rect rect2 = new Rect();
            int i7 = this.u;
            if (i7 != Integer.MIN_VALUE) {
                p(i7).f(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                int width = chip.getWidth();
                int height = chip.getHeight();
                if (i != 17) {
                    if (i != 33) {
                        if (i != 66) {
                            if (i == 130) {
                                rect2.set(0, -1, width, -1);
                            } else {
                                u2.g("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                                return false;
                            }
                        } else {
                            rect2.set(-1, 0, -1, height);
                        }
                    } else {
                        rect2.set(0, height, width, height);
                    }
                } else {
                    rect2.set(width, 0, width, height);
                }
            }
            Rect rect3 = new Rect(rect2);
            if (i != 17) {
                if (i != 33) {
                    if (i != 66) {
                        if (i == 130) {
                            rect3.offset(0, -(rect2.height() + 1));
                        } else {
                            u2.g("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                            return false;
                        }
                    } else {
                        rect3.offset(-(rect2.width() + 1), 0);
                    }
                } else {
                    rect3.offset(0, rect2.height() + 1);
                }
            } else {
                rect3.offset(rect2.width() + 1, 0);
            }
            ((AnonymousClass2) collectionAdapter).getClass();
            int f = sparseArrayCompat.f();
            Rect rect4 = new Rect();
            accessibilityNodeInfoCompat2 = null;
            for (int i8 = 0; i8 < f; i8++) {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompat3 = (AccessibilityNodeInfoCompat) sparseArrayCompat.g(i8);
                if (accessibilityNodeInfoCompat3 != accessibilityNodeInfoCompat) {
                    ((AnonymousClass1) boundsAdapter).getClass();
                    accessibilityNodeInfoCompat3.f(rect4);
                    if (FocusStrategy.c(i, rect2, rect4)) {
                        if (FocusStrategy.c(i, rect2, rect3) && !FocusStrategy.a(i, rect2, rect4, rect3)) {
                            if (!FocusStrategy.a(i, rect2, rect3, rect4)) {
                                int d = FocusStrategy.d(i, rect2, rect4);
                                int e = FocusStrategy.e(i, rect2, rect4);
                                int i9 = (e * e) + (d * 13 * d);
                                int d2 = FocusStrategy.d(i, rect2, rect3);
                                int e2 = FocusStrategy.e(i, rect2, rect3);
                                if (i9 >= (e2 * e2) + (d2 * 13 * d2)) {
                                }
                            }
                        }
                        rect3.set(rect4);
                        accessibilityNodeInfoCompat2 = accessibilityNodeInfoCompat3;
                    }
                }
            }
            i2 = 0;
        } else {
            Field field = ViewCompat.a;
            if (chip.getLayoutDirection() == 1) {
                z = true;
            } else {
                z = false;
            }
            ((AnonymousClass2) collectionAdapter).getClass();
            int f2 = sparseArrayCompat.f();
            ArrayList arrayList2 = new ArrayList(f2);
            for (int i10 = 0; i10 < f2; i10++) {
                arrayList2.add((AccessibilityNodeInfoCompat) sparseArrayCompat.g(i10));
            }
            Collections.sort(arrayList2, new FocusStrategy.SequentialComparator(z, boundsAdapter));
            if (i != 1) {
                if (i == 2) {
                    int size = arrayList2.size();
                    if (accessibilityNodeInfoCompat == null) {
                        lastIndexOf = -1;
                    } else {
                        lastIndexOf = arrayList2.lastIndexOf(accessibilityNodeInfoCompat);
                    }
                    int i11 = lastIndexOf + 1;
                    if (i11 < size) {
                        obj2 = arrayList2.get(i11);
                    } else {
                        obj2 = null;
                    }
                    i2 = 0;
                    obj = obj2;
                } else {
                    u2.g("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                    return false;
                }
            } else {
                i2 = 0;
                int size2 = arrayList2.size();
                if (accessibilityNodeInfoCompat != null) {
                    size2 = arrayList2.indexOf(accessibilityNodeInfoCompat);
                }
                int i12 = size2 - 1;
                if (i12 >= 0) {
                    obj = arrayList2.get(i12);
                } else {
                    obj = null;
                }
            }
            accessibilityNodeInfoCompat2 = (AccessibilityNodeInfoCompat) obj;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat4 = accessibilityNodeInfoCompat2;
        if (accessibilityNodeInfoCompat4 != null) {
            if (sparseArrayCompat.j) {
                SparseArrayCompatKt.a(sparseArrayCompat);
            }
            int i13 = sparseArrayCompat.m;
            int i14 = i2;
            while (true) {
                if (i14 >= i13) {
                    break;
                }
                if (sparseArrayCompat.l[i14] == accessibilityNodeInfoCompat4) {
                    i6 = i14;
                    break;
                }
                i14++;
            }
            i5 = sparseArrayCompat.d(i6);
        }
        return u(i5);
    }

    public final AccessibilityNodeInfoCompat p(int i) {
        if (i == -1) {
            Chip chip = this.r;
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(chip);
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(obtain);
            Field field = ViewCompat.a;
            chip.onInitializeAccessibilityNodeInfo(obtain);
            ArrayList arrayList = new ArrayList();
            n(arrayList);
            if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
                u2.n("Views cannot have both real and virtual children");
                return null;
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                accessibilityNodeInfoCompat.a.addChild(chip, ((Integer) arrayList.get(i2)).intValue());
            }
            return accessibilityNodeInfoCompat;
        }
        return k(i);
    }

    public abstract boolean q(int i, int i2);

    public abstract void r(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public abstract void s(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public abstract void t(int i, boolean z);

    public final boolean u(int i) {
        int i2;
        Chip chip = this.r;
        if ((!chip.isFocused() && !chip.requestFocus()) || (i2 = this.u) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            j(i2);
        }
        this.u = i;
        t(i, true);
        v(i, 8);
        return true;
    }

    public final void v(int i, int i2) {
        View view;
        ViewParent parent;
        AccessibilityEvent obtain;
        if (i != Integer.MIN_VALUE && this.q.isEnabled() && (parent = (view = this.r).getParent()) != null) {
            if (i != -1) {
                obtain = AccessibilityEvent.obtain(i2);
                AccessibilityNodeInfoCompat p = p(i);
                obtain.getText().add(p.g());
                AccessibilityNodeInfo accessibilityNodeInfo = p.a;
                obtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
                obtain.setScrollable(accessibilityNodeInfo.isScrollable());
                obtain.setPassword(accessibilityNodeInfo.isPassword());
                obtain.setEnabled(accessibilityNodeInfo.isEnabled());
                obtain.setChecked(accessibilityNodeInfo.isChecked());
                if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
                    u2.n("Callbacks must add text or a content description in populateEventForVirtualViewId()");
                    return;
                } else {
                    obtain.setClassName(accessibilityNodeInfo.getClassName());
                    obtain.setSource(view, i);
                    obtain.setPackageName(view.getContext().getPackageName());
                }
            } else {
                obtain = AccessibilityEvent.obtain(i2);
                view.onInitializeAccessibilityEvent(obtain);
            }
            parent.requestSendAccessibilityEvent(view, obtain);
        }
    }
}
