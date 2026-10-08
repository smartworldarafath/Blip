package androidx.recyclerview.widget;

import androidx.core.util.Pools$SimplePool;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.jb;
import defpackage.u2;
import io.sentry.d;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AdapterHelper {
    public final RecyclerView.AnonymousClass6 d;
    public final Pools$SimplePool a = new Pools$SimplePool(30);
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public final OpReorderer e = new OpReorderer(this);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UpdateOp {
        public int a;
        public int b;
        public int c;

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof UpdateOp) {
                    UpdateOp updateOp = (UpdateOp) obj;
                    int i = this.a;
                    if (i == updateOp.a) {
                        if (i != 8 || Math.abs(this.c - this.b) != 1 || this.c != updateOp.b || this.b != updateOp.c) {
                            if (this.c == updateOp.c && this.b == updateOp.b) {
                                return true;
                            }
                            return false;
                        }
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            return true;
        }

        public final int hashCode() {
            return (((this.a * 31) + this.b) * 31) + this.c;
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append("[");
            int i = this.a;
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        if (i != 8) {
                            str = "??";
                        } else {
                            str = "mv";
                        }
                    } else {
                        str = "up";
                    }
                } else {
                    str = "rm";
                }
            } else {
                str = "add";
            }
            sb.append(str);
            sb.append(",s:");
            sb.append(this.b);
            sb.append("c:");
            return jb.i(sb, this.c, ",p:null]");
        }
    }

    public AdapterHelper(RecyclerView.AnonymousClass6 anonymousClass6) {
        this.d = anonymousClass6;
    }

    public final boolean a(int i) {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i2);
            int i3 = updateOp.a;
            if (i3 == 8) {
                if (e(updateOp.c, i2 + 1) == i) {
                    return true;
                }
            } else {
                if (i3 == 1) {
                    int i4 = updateOp.b;
                    int i5 = updateOp.c + i4;
                    while (i4 < i5) {
                        if (e(i4, i2 + 1) == i) {
                            return true;
                        }
                        i4++;
                    }
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    public final void b() {
        RecyclerView.AnonymousClass6 anonymousClass6;
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            anonymousClass6 = this.d;
            if (i >= size) {
                break;
            }
            anonymousClass6.a((UpdateOp) arrayList.get(i));
            i++;
        }
        i(arrayList);
        ArrayList arrayList2 = this.b;
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            UpdateOp updateOp = (UpdateOp) arrayList2.get(i2);
            int i3 = updateOp.a;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 4) {
                        if (i3 == 8) {
                            anonymousClass6.a(updateOp);
                            anonymousClass6.e(updateOp.b, updateOp.c);
                        }
                    } else {
                        anonymousClass6.a(updateOp);
                        anonymousClass6.c(updateOp.b, updateOp.c);
                    }
                } else {
                    anonymousClass6.a(updateOp);
                    int i4 = updateOp.b;
                    int i5 = updateOp.c;
                    RecyclerView recyclerView = RecyclerView.this;
                    recyclerView.M(i4, i5, true);
                    recyclerView.p0 = true;
                    recyclerView.m0.c += i5;
                }
            } else {
                anonymousClass6.a(updateOp);
                anonymousClass6.d(updateOp.b, updateOp.c);
            }
        }
        i(arrayList2);
    }

    public final void c(UpdateOp updateOp) {
        int i;
        Pools$SimplePool pools$SimplePool;
        int i2 = updateOp.a;
        if (i2 != 1 && i2 != 8) {
            int j = j(updateOp.b, i2);
            int i3 = updateOp.b;
            int i4 = updateOp.a;
            if (i4 != 2) {
                if (i4 == 4) {
                    i = 1;
                } else {
                    d.e(updateOp, "op should be remove or update.");
                    return;
                }
            } else {
                i = 0;
            }
            int i5 = 1;
            int i6 = 1;
            while (true) {
                int i7 = updateOp.c;
                pools$SimplePool = this.a;
                if (i5 >= i7) {
                    break;
                }
                int j2 = j((i * i5) + updateOp.b, updateOp.a);
                int i8 = updateOp.a;
                if (i8 == 2 ? j2 == j : !(i8 != 4 || j2 != j + 1)) {
                    i6++;
                } else {
                    UpdateOp g = g(i8, j, i6);
                    d(g, i3);
                    pools$SimplePool.b(g);
                    if (updateOp.a == 4) {
                        i3 += i6;
                    }
                    i6 = 1;
                    j = j2;
                }
                i5++;
            }
            pools$SimplePool.b(updateOp);
            if (i6 > 0) {
                UpdateOp g2 = g(updateOp.a, j, i6);
                d(g2, i3);
                pools$SimplePool.b(g2);
                return;
            }
            return;
        }
        u2.g("should not dispatch add or move for pre layout");
    }

    public final void d(UpdateOp updateOp, int i) {
        RecyclerView.AnonymousClass6 anonymousClass6 = this.d;
        anonymousClass6.a(updateOp);
        int i2 = updateOp.a;
        if (i2 != 2) {
            if (i2 == 4) {
                anonymousClass6.c(i, updateOp.c);
                return;
            } else {
                u2.g("only remove and update ops can be dispatched in first pass");
                return;
            }
        }
        int i3 = updateOp.c;
        RecyclerView recyclerView = RecyclerView.this;
        recyclerView.M(i, i3, true);
        recyclerView.p0 = true;
        recyclerView.m0.c += i3;
    }

    public final int e(int i, int i2) {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        while (i2 < size) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i2);
            int i3 = updateOp.a;
            int i4 = updateOp.b;
            if (i3 == 8) {
                if (i4 == i) {
                    i = updateOp.c;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (updateOp.c <= i) {
                        i++;
                    }
                }
            } else if (i4 > i) {
                continue;
            } else if (i3 == 2) {
                int i5 = updateOp.c;
                if (i < i4 + i5) {
                    return -1;
                }
                i -= i5;
            } else if (i3 == 1) {
                i += updateOp.c;
            }
            i2++;
        }
        return i;
    }

    public final boolean f() {
        if (this.b.size() > 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.AdapterHelper$UpdateOp, java.lang.Object] */
    public final UpdateOp g(int i, int i2, int i3) {
        UpdateOp updateOp = (UpdateOp) this.a.a();
        if (updateOp == null) {
            ?? obj = new Object();
            obj.a = i;
            obj.b = i2;
            obj.c = i3;
            return obj;
        }
        updateOp.a = i;
        updateOp.b = i2;
        updateOp.c = i3;
        return updateOp;
    }

    public final void h(UpdateOp updateOp) {
        this.c.add(updateOp);
        int i = updateOp.a;
        RecyclerView.AnonymousClass6 anonymousClass6 = this.d;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i == 8) {
                        anonymousClass6.e(updateOp.b, updateOp.c);
                        return;
                    } else {
                        d.e(updateOp, "Unknown update op type for ");
                        return;
                    }
                }
                anonymousClass6.c(updateOp.b, updateOp.c);
                return;
            }
            int i2 = updateOp.b;
            int i3 = updateOp.c;
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.M(i2, i3, false);
            recyclerView.p0 = true;
            return;
        }
        anonymousClass6.d(updateOp.b, updateOp.c);
    }

    public final void i(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(i);
            updateOp.getClass();
            this.a.b(updateOp);
        }
        arrayList.clear();
    }

    public final int j(int i, int i2) {
        int i3;
        int i4;
        ArrayList arrayList = this.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = (UpdateOp) arrayList.get(size);
            int i5 = updateOp.a;
            int i6 = updateOp.b;
            if (i5 == 8) {
                int i7 = updateOp.c;
                if (i6 < i7) {
                    i4 = i7;
                    i3 = i6;
                } else {
                    i3 = i7;
                    i4 = i6;
                }
                if (i >= i3 && i <= i4) {
                    if (i3 == i6) {
                        if (i2 == 1) {
                            updateOp.c = i7 + 1;
                        } else if (i2 == 2) {
                            updateOp.c = i7 - 1;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            updateOp.b = i6 + 1;
                        } else if (i2 == 2) {
                            updateOp.b = i6 - 1;
                        }
                        i--;
                    }
                } else if (i < i6) {
                    if (i2 == 1) {
                        updateOp.b = i6 + 1;
                        updateOp.c = i7 + 1;
                    } else if (i2 == 2) {
                        updateOp.b = i6 - 1;
                        updateOp.c = i7 - 1;
                    }
                }
            } else if (i6 <= i) {
                if (i5 == 1) {
                    i -= updateOp.c;
                } else if (i5 == 2) {
                    i += updateOp.c;
                }
            } else if (i2 == 1) {
                updateOp.b = i6 + 1;
            } else if (i2 == 2) {
                updateOp.b = i6 - 1;
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = (UpdateOp) arrayList.get(size2);
            int i8 = updateOp2.a;
            int i9 = updateOp2.c;
            Pools$SimplePool pools$SimplePool = this.a;
            if (i8 == 8) {
                if (i9 == updateOp2.b || i9 < 0) {
                    arrayList.remove(size2);
                    pools$SimplePool.b(updateOp2);
                }
            } else if (i9 <= 0) {
                arrayList.remove(size2);
                pools$SimplePool.b(updateOp2);
            }
        }
        return i;
    }
}
