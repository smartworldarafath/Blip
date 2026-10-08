package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Field;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ChildHelper {
    public final RecyclerView.AnonymousClass5 a;
    public final Bucket b = new Bucket();
    public final ArrayList c = new ArrayList();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Bucket {
        public long a = 0;
        public Bucket b;

        public final void a(int i) {
            if (i >= 64) {
                Bucket bucket = this.b;
                if (bucket != null) {
                    bucket.a(i - 64);
                    return;
                }
                return;
            }
            this.a &= ~(1 << i);
        }

        public final int b(int i) {
            Bucket bucket = this.b;
            if (bucket == null) {
                long j = this.a;
                if (i >= 64) {
                    return Long.bitCount(j);
                }
                return Long.bitCount(((1 << i) - 1) & j);
            }
            if (i < 64) {
                return Long.bitCount(((1 << i) - 1) & this.a);
            }
            return Long.bitCount(this.a) + bucket.b(i - 64);
        }

        public final void c() {
            if (this.b == null) {
                this.b = new Bucket();
            }
        }

        public final boolean d(int i) {
            if (i >= 64) {
                c();
                return this.b.d(i - 64);
            }
            if (((1 << i) & this.a) != 0) {
                return true;
            }
            return false;
        }

        public final void e(int i, boolean z) {
            boolean z2;
            if (i >= 64) {
                c();
                this.b.e(i - 64, z);
                return;
            }
            long j = this.a;
            if ((Long.MIN_VALUE & j) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            long j2 = (1 << i) - 1;
            this.a = ((j & (~j2)) << 1) | (j & j2);
            if (z) {
                h(i);
            } else {
                a(i);
            }
            if (!z2 && this.b == null) {
                return;
            }
            c();
            this.b.e(0, z2);
        }

        public final boolean f(int i) {
            boolean z;
            if (i >= 64) {
                c();
                return this.b.f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.a;
            if ((j2 & j) != 0) {
                z = true;
            } else {
                z = false;
            }
            long j3 = j2 & (~j);
            this.a = j3;
            long j4 = j - 1;
            this.a = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            Bucket bucket = this.b;
            if (bucket != null) {
                if (bucket.d(0)) {
                    h(63);
                }
                this.b.f(0);
            }
            return z;
        }

        public final void g() {
            this.a = 0L;
            Bucket bucket = this.b;
            if (bucket != null) {
                bucket.g();
            }
        }

        public final void h(int i) {
            if (i >= 64) {
                c();
                this.b.h(i - 64);
            } else {
                this.a |= 1 << i;
            }
        }

        public final String toString() {
            if (this.b == null) {
                return Long.toBinaryString(this.a);
            }
            return this.b.toString() + "xx" + Long.toBinaryString(this.a);
        }
    }

    public ChildHelper(RecyclerView.AnonymousClass5 anonymousClass5) {
        this.a = anonymousClass5;
    }

    public final void a(View view, int i, boolean z) {
        int f;
        RecyclerView recyclerView = RecyclerView.this;
        if (i < 0) {
            f = recyclerView.getChildCount();
        } else {
            f = f(i);
        }
        this.b.e(f, z);
        if (z) {
            i(view);
        }
        recyclerView.addView(view, f);
        RecyclerView.G(view);
    }

    public final void b(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int f;
        RecyclerView recyclerView = RecyclerView.this;
        if (i < 0) {
            f = recyclerView.getChildCount();
        } else {
            f = f(i);
        }
        this.b.e(f, z);
        if (z) {
            i(view);
        }
        RecyclerView.ViewHolder G = RecyclerView.G(view);
        if (G != null) {
            if (!G.j() && !G.o()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + G + recyclerView.w());
            }
            G.j &= -257;
        }
        recyclerView.attachViewToParent(view, f, layoutParams);
    }

    public final void c(int i) {
        RecyclerView.ViewHolder G;
        int f = f(i);
        this.b.f(f);
        RecyclerView recyclerView = RecyclerView.this;
        View childAt = recyclerView.getChildAt(f);
        if (childAt != null && (G = RecyclerView.G(childAt)) != null) {
            if (G.j() && !G.o()) {
                throw new IllegalArgumentException("called detach on an already detached child " + G + recyclerView.w());
            }
            G.a(256);
        }
        recyclerView.detachViewFromParent(f);
    }

    public final View d(int i) {
        return RecyclerView.this.getChildAt(f(i));
    }

    public final int e() {
        return RecyclerView.this.getChildCount() - this.c.size();
    }

    public final int f(int i) {
        if (i >= 0) {
            int childCount = RecyclerView.this.getChildCount();
            int i2 = i;
            while (i2 < childCount) {
                Bucket bucket = this.b;
                int b = i - (i2 - bucket.b(i2));
                if (b == 0) {
                    while (bucket.d(i2)) {
                        i2++;
                    }
                    return i2;
                }
                i2 += b;
            }
            return -1;
        }
        return -1;
    }

    public final View g(int i) {
        return RecyclerView.this.getChildAt(i);
    }

    public final int h() {
        return RecyclerView.this.getChildCount();
    }

    public final void i(View view) {
        this.c.add(view);
        RecyclerView.ViewHolder G = RecyclerView.G(view);
        if (G != null) {
            View view2 = G.a;
            RecyclerView recyclerView = RecyclerView.this;
            int i = G.q;
            if (i != -1) {
                G.p = i;
            } else {
                Field field = ViewCompat.a;
                G.p = view2.getImportantForAccessibility();
            }
            if (recyclerView.J()) {
                G.q = 4;
                recyclerView.z0.add(G);
            } else {
                Field field2 = ViewCompat.a;
                view2.setImportantForAccessibility(4);
            }
        }
    }

    public final void j(View view) {
        RecyclerView.ViewHolder G;
        if (this.c.remove(view) && (G = RecyclerView.G(view)) != null) {
            RecyclerView recyclerView = RecyclerView.this;
            int i = G.p;
            if (recyclerView.J()) {
                G.q = i;
                recyclerView.z0.add(G);
            } else {
                View view2 = G.a;
                Field field = ViewCompat.a;
                view2.setImportantForAccessibility(i);
            }
            G.p = 0;
        }
    }

    public final String toString() {
        return this.b.toString() + ", hidden list:" + this.c.size();
    }
}
