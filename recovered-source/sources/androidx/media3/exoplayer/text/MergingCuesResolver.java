package androidx.media3.exoplayer.text;

import androidx.media3.extractor.text.CuesWithTiming;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MergingCuesResolver implements CuesResolver {
    public static final Ordering b;
    public final ArrayList a = new ArrayList();

    static {
        final int i = 0;
        final int i2 = 1;
        b = Ordering.c().d(new Function() { // from class: androidx.media3.exoplayer.text.a
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                CuesWithTiming cuesWithTiming = (CuesWithTiming) obj;
                switch (i) {
                    case 0:
                        Ordering ordering = MergingCuesResolver.b;
                        return Long.valueOf(cuesWithTiming.b);
                    default:
                        Ordering ordering2 = MergingCuesResolver.b;
                        return Long.valueOf(cuesWithTiming.c);
                }
            }
        }).a(Ordering.c().e().d(new Function() { // from class: androidx.media3.exoplayer.text.a
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                CuesWithTiming cuesWithTiming = (CuesWithTiming) obj;
                switch (i2) {
                    case 0:
                        Ordering ordering = MergingCuesResolver.b;
                        return Long.valueOf(cuesWithTiming.b);
                    default:
                        Ordering ordering2 = MergingCuesResolver.b;
                        return Long.valueOf(cuesWithTiming.c);
                }
            }
        }));
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final long a(long j) {
        int i = 0;
        long j2 = -9223372036854775807L;
        while (true) {
            ArrayList arrayList = this.a;
            if (i >= arrayList.size()) {
                break;
            }
            long j3 = ((CuesWithTiming) arrayList.get(i)).b;
            long j4 = ((CuesWithTiming) arrayList.get(i)).d;
            if (j < j3) {
                if (j2 == -9223372036854775807L) {
                    j2 = j3;
                } else {
                    j2 = Math.min(j2, j3);
                }
            } else {
                if (j < j4) {
                    if (j2 == -9223372036854775807L) {
                        j2 = j4;
                    } else {
                        j2 = Math.min(j2, j4);
                    }
                }
                i++;
            }
        }
        if (j2 != -9223372036854775807L) {
            return j2;
        }
        return Long.MIN_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final ImmutableList b(long j) {
        ArrayList arrayList = this.a;
        if (!arrayList.isEmpty()) {
            if (j >= ((CuesWithTiming) arrayList.get(0)).b) {
                ArrayList arrayList2 = new ArrayList();
                for (int i = 0; i < arrayList.size(); i++) {
                    CuesWithTiming cuesWithTiming = (CuesWithTiming) arrayList.get(i);
                    if (j >= cuesWithTiming.b && j < cuesWithTiming.d) {
                        arrayList2.add(cuesWithTiming);
                    }
                    if (j < cuesWithTiming.b) {
                        break;
                    }
                }
                ImmutableList x = ImmutableList.x(b, arrayList2);
                ImmutableList.Builder k = ImmutableList.k();
                for (int i2 = 0; i2 < x.size(); i2++) {
                    k.f(((CuesWithTiming) x.get(i2)).a);
                }
                return k.i();
            }
        }
        return ImmutableList.r();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final boolean c(CuesWithTiming cuesWithTiming, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        long j2 = cuesWithTiming.b;
        if (j2 != -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        if (cuesWithTiming.c != -9223372036854775807L) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.e(z2);
        if (j2 <= j && j < cuesWithTiming.d) {
            z3 = true;
        } else {
            z3 = false;
        }
        ArrayList arrayList = this.a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (j2 >= ((CuesWithTiming) arrayList.get(size)).b) {
                arrayList.add(size + 1, cuesWithTiming);
                return z3;
            }
        }
        arrayList.add(0, cuesWithTiming);
        return z3;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final void clear() {
        this.a.clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final long d(long j) {
        ArrayList arrayList = this.a;
        if (!arrayList.isEmpty()) {
            if (j >= ((CuesWithTiming) arrayList.get(0)).b) {
                long j2 = ((CuesWithTiming) arrayList.get(0)).b;
                for (int i = 0; i < arrayList.size(); i++) {
                    long j3 = ((CuesWithTiming) arrayList.get(i)).b;
                    long j4 = ((CuesWithTiming) arrayList.get(i)).d;
                    if (j4 <= j) {
                        j2 = Math.max(j2, j4);
                    } else {
                        if (j3 > j) {
                            break;
                        }
                        j2 = Math.max(j2, j3);
                    }
                }
                return j2;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final void e(long j) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.a;
            if (i < arrayList.size()) {
                long j2 = ((CuesWithTiming) arrayList.get(i)).b;
                if (j > j2 && j > ((CuesWithTiming) arrayList.get(i)).d) {
                    arrayList.remove(i);
                    i--;
                } else if (j < j2) {
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }
}
