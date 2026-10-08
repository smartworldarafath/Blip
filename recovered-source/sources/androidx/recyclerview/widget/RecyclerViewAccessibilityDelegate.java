package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RecyclerViewAccessibilityDelegate extends AccessibilityDelegateCompat {
    public final RecyclerView m;
    public final ItemDelegate n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ItemDelegate extends AccessibilityDelegateCompat {
        public final RecyclerViewAccessibilityDelegate m;
        public final WeakHashMap n = new WeakHashMap();

        public ItemDelegate(RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
            this.m = recyclerViewAccessibilityDelegate;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.n.get(view);
            if (accessibilityDelegateCompat != null) {
                return accessibilityDelegateCompat.a(view, accessibilityEvent);
            }
            return this.j.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final AccessibilityNodeProviderCompat b(View view) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.n.get(view);
            if (accessibilityDelegateCompat != null) {
                return accessibilityDelegateCompat.b(view);
            }
            return super.b(view);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.n.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.c(view, accessibilityEvent);
            } else {
                super.c(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = this.m;
            RecyclerView recyclerView = recyclerViewAccessibilityDelegate.m;
            RecyclerView recyclerView2 = recyclerViewAccessibilityDelegate.m;
            boolean I = recyclerView.I();
            View.AccessibilityDelegate accessibilityDelegate = this.j;
            if (!I && recyclerView2.getLayoutManager() != null) {
                recyclerView2.getLayoutManager().R(view, accessibilityNodeInfoCompat);
                AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.n.get(view);
                if (accessibilityDelegateCompat != null) {
                    accessibilityDelegateCompat.d(view, accessibilityNodeInfoCompat);
                    return;
                } else {
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    return;
                }
            }
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void e(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.n.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.e(view, accessibilityEvent);
            } else {
                super.e(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.n.get(viewGroup);
            if (accessibilityDelegateCompat != null) {
                return accessibilityDelegateCompat.f(viewGroup, view, accessibilityEvent);
            }
            return this.j.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean g(View view, int i, Bundle bundle) {
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = this.m;
            RecyclerView recyclerView = recyclerViewAccessibilityDelegate.m;
            RecyclerView recyclerView2 = recyclerViewAccessibilityDelegate.m;
            if (!recyclerView.I() && recyclerView2.getLayoutManager() != null) {
                AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.n.get(view);
                if (accessibilityDelegateCompat != null) {
                    if (accessibilityDelegateCompat.g(view, i, bundle)) {
                        return true;
                    }
                } else if (super.g(view, i, bundle)) {
                    return true;
                }
                RecyclerView.Recycler recycler = recyclerView2.getLayoutManager().b.l;
                return false;
            }
            return super.g(view, i, bundle);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void h(View view, int i) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.n.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.h(view, i);
            } else {
                super.h(view, i);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void i(View view, AccessibilityEvent accessibilityEvent) {
            AccessibilityDelegateCompat accessibilityDelegateCompat = (AccessibilityDelegateCompat) this.n.get(view);
            if (accessibilityDelegateCompat != null) {
                accessibilityDelegateCompat.i(view, accessibilityEvent);
            } else {
                super.i(view, accessibilityEvent);
            }
        }
    }

    public RecyclerViewAccessibilityDelegate(RecyclerView recyclerView) {
        this.m = recyclerView;
        ItemDelegate itemDelegate = this.n;
        if (itemDelegate != null) {
            this.n = itemDelegate;
        } else {
            this.n = new ItemDelegate(this);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if ((view instanceof RecyclerView) && !this.m.I()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().P(accessibilityEvent);
            }
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.j.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.a);
        RecyclerView recyclerView = this.m;
        if (!recyclerView.I() && recyclerView.getLayoutManager() != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            RecyclerView recyclerView2 = layoutManager.b;
            layoutManager.Q(recyclerView2.l, recyclerView2.m0, accessibilityNodeInfoCompat);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a4 A[ADDED_TO_REGION] */
    @Override // androidx.core.view.AccessibilityDelegateCompat
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean g(View view, int i, Bundle bundle) {
        int i2;
        int A;
        if (super.g(view, i, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.m;
        if (!recyclerView.I() && recyclerView.getLayoutManager() != null) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            RecyclerView.Recycler recycler = layoutManager.b.l;
            int i3 = layoutManager.o;
            int i4 = layoutManager.n;
            Rect rect = new Rect();
            if (layoutManager.b.getMatrix().isIdentity() && layoutManager.b.getGlobalVisibleRect(rect)) {
                i3 = rect.height();
                i4 = rect.width();
            }
            if (i != 4096) {
                if (i != 8192) {
                    i2 = 0;
                    A = 0;
                } else {
                    if (layoutManager.b.canScrollVertically(-1)) {
                        i2 = -((i3 - layoutManager.C()) - layoutManager.z());
                    } else {
                        i2 = 0;
                    }
                    if (layoutManager.b.canScrollHorizontally(-1)) {
                        A = -((i4 - layoutManager.A()) - layoutManager.B());
                    }
                    A = 0;
                }
                if (i2 == 0 || A != 0) {
                    layoutManager.b.Z(A, i2, true);
                    return true;
                }
            } else {
                if (layoutManager.b.canScrollVertically(1)) {
                    i2 = (i3 - layoutManager.C()) - layoutManager.z();
                } else {
                    i2 = 0;
                }
                if (layoutManager.b.canScrollHorizontally(1)) {
                    A = (i4 - layoutManager.A()) - layoutManager.B();
                    if (i2 == 0) {
                    }
                    layoutManager.b.Z(A, i2, true);
                    return true;
                }
                A = 0;
                if (i2 == 0) {
                }
                layoutManager.b.Z(A, i2, true);
                return true;
            }
        }
        return false;
    }
}
