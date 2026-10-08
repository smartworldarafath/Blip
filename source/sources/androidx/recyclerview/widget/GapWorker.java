package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.os.Trace;
import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GapWorker implements Runnable {
    public static final ThreadLocal n = new ThreadLocal();
    public static final Comparator o = new Object();
    public ArrayList j;
    public long k;
    public long l;
    public ArrayList m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.recyclerview.widget.GapWorker$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Comparator<Task> {
        @Override // java.util.Comparator
        public final int compare(Task task, Task task2) {
            boolean z;
            boolean z2;
            Task task3 = task;
            Task task4 = task2;
            RecyclerView recyclerView = task3.d;
            if (recyclerView == null) {
                z = true;
            } else {
                z = false;
            }
            if (task4.d == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z != z2) {
                if (recyclerView != null) {
                    return -1;
                }
            } else {
                boolean z3 = task3.a;
                if (z3 != task4.a) {
                    if (z3) {
                        return -1;
                    }
                } else {
                    int i = task4.b - task3.b;
                    if (i != 0) {
                        return i;
                    }
                    int i2 = task3.c - task4.c;
                    if (i2 == 0) {
                        return 0;
                    }
                    return i2;
                }
            }
            return 1;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @SuppressLint({"VisibleForTests"})
    /* loaded from: classes.dex */
    public static class LayoutPrefetchRegistryImpl implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {
        public int a;
        public int b;
        public int[] c;
        public int d;

        public final void a(int i, int i2) {
            if (i >= 0) {
                if (i2 >= 0) {
                    int i3 = this.d;
                    int i4 = i3 * 2;
                    int[] iArr = this.c;
                    if (iArr == null) {
                        int[] iArr2 = new int[4];
                        this.c = iArr2;
                        Arrays.fill(iArr2, -1);
                    } else if (i4 >= iArr.length) {
                        int[] iArr3 = new int[i3 * 4];
                        this.c = iArr3;
                        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                    }
                    int[] iArr4 = this.c;
                    iArr4[i4] = i;
                    iArr4[i4 + 1] = i2;
                    this.d++;
                    return;
                }
                u2.g("Pixel distance must be non-negative");
                return;
            }
            u2.g("Layout positions must be non-negative");
        }

        public final void b(RecyclerView recyclerView, boolean z) {
            this.d = 0;
            int[] iArr = this.c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.v;
            if (recyclerView.u != null && layoutManager != null && layoutManager.i) {
                if (z) {
                    if (!recyclerView.n.f()) {
                        layoutManager.i(recyclerView.u.a(), this);
                    }
                } else if (!recyclerView.I()) {
                    layoutManager.h(this.a, this.b, recyclerView.m0, this);
                }
                int i = this.d;
                if (i > layoutManager.j) {
                    layoutManager.j = i;
                    layoutManager.k = z;
                    recyclerView.l.m();
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Task {
        public boolean a;
        public int b;
        public int c;
        public RecyclerView d;
        public int e;
    }

    public static RecyclerView.ViewHolder c(RecyclerView recyclerView, int i, long j) {
        int h = recyclerView.o.h();
        for (int i2 = 0; i2 < h; i2++) {
            RecyclerView.ViewHolder G = RecyclerView.G(recyclerView.o.g(i2));
            if (G.c == i && !G.f()) {
                return null;
            }
        }
        RecyclerView.Recycler recycler = recyclerView.l;
        try {
            recyclerView.N();
            RecyclerView.ViewHolder k = recycler.k(i, j);
            if (k != null) {
                if (k.e() && !k.f()) {
                    recycler.h(k.a);
                } else {
                    recycler.a(k, false);
                }
            }
            recyclerView.O(false);
            return k;
        } catch (Throwable th) {
            recyclerView.O(false);
            throw th;
        }
    }

    public final void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.A && this.k == 0) {
            this.k = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.l0;
        layoutPrefetchRegistryImpl.a = i;
        layoutPrefetchRegistryImpl.b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(long j) {
        Task task;
        RecyclerView recyclerView;
        long j2;
        RecyclerView recyclerView2;
        Task task2;
        boolean z;
        ArrayList arrayList = this.m;
        ArrayList arrayList2 = this.j;
        int size = arrayList2.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList2.get(i2);
            int windowVisibility = recyclerView3.getWindowVisibility();
            LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView3.l0;
            if (windowVisibility == 0) {
                layoutPrefetchRegistryImpl.b(recyclerView3, false);
                i += layoutPrefetchRegistryImpl.d;
            }
        }
        arrayList.ensureCapacity(i);
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList2.get(i4);
            if (recyclerView4.getWindowVisibility() == 0) {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl2 = recyclerView4.l0;
                int abs = Math.abs(layoutPrefetchRegistryImpl2.b) + Math.abs(layoutPrefetchRegistryImpl2.a);
                for (int i5 = 0; i5 < layoutPrefetchRegistryImpl2.d * 2; i5 += 2) {
                    if (i3 >= arrayList.size()) {
                        Object obj = new Object();
                        arrayList.add(obj);
                        task2 = obj;
                    } else {
                        task2 = (Task) arrayList.get(i3);
                    }
                    int[] iArr = layoutPrefetchRegistryImpl2.c;
                    int i6 = iArr[i5 + 1];
                    if (i6 <= abs) {
                        z = true;
                    } else {
                        z = false;
                    }
                    task2.a = z;
                    task2.b = abs;
                    task2.c = i6;
                    task2.d = recyclerView4;
                    task2.e = iArr[i5];
                    i3++;
                }
            }
        }
        Collections.sort(arrayList, o);
        for (int i7 = 0; i7 < arrayList.size() && (recyclerView = (task = (Task) arrayList.get(i7)).d) != null; i7++) {
            if (task.a) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = j;
            }
            RecyclerView.ViewHolder c = c(recyclerView, task.e, j2);
            if (c != null && c.b != null && c.e() && !c.f() && (recyclerView2 = (RecyclerView) c.b.get()) != null) {
                if (recyclerView2.J && recyclerView2.o.h() != 0) {
                    RecyclerView.Recycler recycler = recyclerView2.l;
                    RecyclerView.ItemAnimator itemAnimator = recyclerView2.S;
                    if (itemAnimator != null) {
                        itemAnimator.e();
                    }
                    RecyclerView.LayoutManager layoutManager = recyclerView2.v;
                    if (layoutManager != null) {
                        layoutManager.d0(recycler);
                        recyclerView2.v.e0(recycler);
                    }
                    recycler.a.clear();
                    recycler.f();
                }
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl3 = recyclerView2.l0;
                layoutPrefetchRegistryImpl3.b(recyclerView2, true);
                if (layoutPrefetchRegistryImpl3.d != 0) {
                    try {
                        int i8 = TraceCompat.a;
                        Trace.beginSection("RV Nested Prefetch");
                        RecyclerView.State state = recyclerView2.m0;
                        RecyclerView.Adapter adapter = recyclerView2.u;
                        state.d = 1;
                        state.e = adapter.a();
                        state.g = false;
                        state.h = false;
                        state.i = false;
                        for (int i9 = 0; i9 < layoutPrefetchRegistryImpl3.d * 2; i9 += 2) {
                            c(recyclerView2, layoutPrefetchRegistryImpl3.c[i9], j);
                        }
                        Trace.endSection();
                        task.a = false;
                        task.b = 0;
                        task.c = 0;
                        task.d = null;
                        task.e = 0;
                    } catch (Throwable th) {
                        int i10 = TraceCompat.a;
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            task.a = false;
            task.b = 0;
            task.c = 0;
            task.d = null;
            task.e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.j;
        try {
            int i = TraceCompat.a;
            Trace.beginSection("RV Prefetch");
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long j = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i2);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j = Math.max(recyclerView.getDrawingTime(), j);
                    }
                }
                if (j != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(j) + this.l);
                }
            }
            this.k = 0L;
            Trace.endSection();
        } catch (Throwable th) {
            this.k = 0L;
            int i3 = TraceCompat.a;
            Trace.endSection();
            throw th;
        }
    }
}
