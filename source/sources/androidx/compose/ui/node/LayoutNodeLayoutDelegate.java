package androidx.compose.ui.node;

import androidx.compose.ui.node.LayoutNode;
import defpackage.ta;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayoutNodeLayoutDelegate {
    public final LayoutNode a;
    public boolean b;
    public boolean c;
    public boolean e;
    public boolean f;
    public boolean g;
    public int h;
    public int i;
    public boolean j;
    public boolean k;
    public int l;
    public boolean m;
    public boolean n;
    public int o;
    public LookaheadPassDelegate q;
    public LayoutNode.LayoutState d = LayoutNode.LayoutState.n;
    public final MeasurePassDelegate p = new MeasurePassDelegate(this);

    public LayoutNodeLayoutDelegate(LayoutNode layoutNode) {
        this.a = layoutNode;
    }

    public final NodeCoordinator a() {
        return this.a.O.d;
    }

    public final void b() {
        LayoutNode.LayoutState layoutState = this.a.P.d;
        if (layoutState == LayoutNode.LayoutState.l || layoutState == LayoutNode.LayoutState.m) {
            if (this.p.K) {
                g(true);
            } else {
                f(true);
            }
        }
        if (layoutState == LayoutNode.LayoutState.m) {
            LookaheadPassDelegate lookaheadPassDelegate = this.q;
            if (lookaheadPassDelegate != null && lookaheadPassDelegate.E) {
                i(true);
            } else {
                h(true);
            }
        }
    }

    public final void c(long j) {
        LookaheadPassDelegate lookaheadPassDelegate = this.q;
        if (lookaheadPassDelegate != null) {
            LayoutNode.LayoutState layoutState = LayoutNode.LayoutState.k;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.o;
            layoutNodeLayoutDelegate.d = layoutState;
            LayoutNode layoutNode = layoutNodeLayoutDelegate.a;
            layoutNodeLayoutDelegate.e = false;
            lookaheadPassDelegate.I = j;
            OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.a(layoutNode).getSnapshotObserver();
            ta taVar = lookaheadPassDelegate.J;
            snapshotObserver.a.e(layoutNode, snapshotObserver.b, taVar);
            layoutNodeLayoutDelegate.f = true;
            layoutNodeLayoutDelegate.g = true;
            boolean a = LayoutNodeLayoutDelegateKt.a(layoutNode);
            MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.p;
            if (a) {
                measurePassDelegate.F = true;
                measurePassDelegate.G = true;
            } else {
                measurePassDelegate.E = true;
            }
            layoutNodeLayoutDelegate.d = LayoutNode.LayoutState.n;
        }
    }

    public final void d(int i) {
        boolean z;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate;
        int i2 = this.l;
        this.l = i;
        boolean z2 = false;
        if (i2 == 0) {
            z = true;
        } else {
            z = false;
        }
        if (i == 0) {
            z2 = true;
        }
        if (z != z2) {
            LayoutNode w = this.a.w();
            if (w != null) {
                layoutNodeLayoutDelegate = w.P;
            } else {
                layoutNodeLayoutDelegate = null;
            }
            if (layoutNodeLayoutDelegate != null) {
                int i3 = layoutNodeLayoutDelegate.l;
                if (i == 0) {
                    layoutNodeLayoutDelegate.d(i3 - 1);
                } else {
                    layoutNodeLayoutDelegate.d(i3 + 1);
                }
            }
        }
    }

    public final void e(int i) {
        boolean z;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate;
        int i2 = this.o;
        this.o = i;
        boolean z2 = false;
        if (i2 == 0) {
            z = true;
        } else {
            z = false;
        }
        if (i == 0) {
            z2 = true;
        }
        if (z != z2) {
            LayoutNode w = this.a.w();
            if (w != null) {
                layoutNodeLayoutDelegate = w.P;
            } else {
                layoutNodeLayoutDelegate = null;
            }
            if (layoutNodeLayoutDelegate != null) {
                int i3 = layoutNodeLayoutDelegate.o;
                if (i == 0) {
                    layoutNodeLayoutDelegate.e(i3 - 1);
                } else {
                    layoutNodeLayoutDelegate.e(i3 + 1);
                }
            }
        }
    }

    public final void f(boolean z) {
        if (this.k != z) {
            this.k = z;
            if (z && !this.j) {
                d(this.l + 1);
            } else if (!z && !this.j) {
                d(this.l - 1);
            }
        }
    }

    public final void g(boolean z) {
        if (this.j != z) {
            this.j = z;
            if (z && !this.k) {
                d(this.l + 1);
            } else if (!z && !this.k) {
                d(this.l - 1);
            }
        }
    }

    public final void h(boolean z) {
        if (this.n != z) {
            this.n = z;
            if (z && !this.m) {
                e(this.o + 1);
            } else if (!z && !this.m) {
                e(this.o - 1);
            }
        }
    }

    public final void i(boolean z) {
        if (this.m != z) {
            this.m = z;
            if (z && !this.n) {
                e(this.o + 1);
            } else if (!z && !this.n) {
                e(this.o - 1);
            }
        }
    }

    public final void j() {
        MeasurePassDelegate measurePassDelegate = this.p;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = measurePassDelegate.o;
        Object obj = measurePassDelegate.B;
        LayoutNode layoutNode = this.a;
        if ((obj != null || layoutNodeLayoutDelegate.a().a() != null) && measurePassDelegate.A) {
            measurePassDelegate.A = false;
            measurePassDelegate.B = layoutNodeLayoutDelegate.a().a();
            LayoutNode w = layoutNode.w();
            if (w != null) {
                LayoutNode.Z(w, false, 7);
            }
        }
        LookaheadPassDelegate lookaheadPassDelegate = this.q;
        if (lookaheadPassDelegate != null) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate2 = lookaheadPassDelegate.o;
            if (lookaheadPassDelegate.H == null) {
                LookaheadDelegate b1 = layoutNodeLayoutDelegate2.a().b1();
                b1.getClass();
                if (b1.D.a() == null) {
                    return;
                }
            }
            if (lookaheadPassDelegate.G) {
                lookaheadPassDelegate.G = false;
                LookaheadDelegate b12 = layoutNodeLayoutDelegate2.a().b1();
                b12.getClass();
                lookaheadPassDelegate.H = b12.D.a();
                if (LayoutNodeLayoutDelegateKt.a(layoutNode)) {
                    LayoutNode w2 = layoutNode.w();
                    if (w2 != null) {
                        LayoutNode.Z(w2, false, 7);
                        return;
                    }
                    return;
                }
                LayoutNode w3 = layoutNode.w();
                if (w3 != null) {
                    LayoutNode.X(w3, false, 7);
                }
            }
        }
    }
}
