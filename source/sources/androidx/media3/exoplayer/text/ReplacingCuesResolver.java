package androidx.media3.exoplayer.text;

import androidx.media3.extractor.text.CuesWithTiming;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ReplacingCuesResolver implements CuesResolver {
    public final ArrayList a = new ArrayList();

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final long a(long j) {
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j < ((CuesWithTiming) arrayList.get(0)).b) {
            return ((CuesWithTiming) arrayList.get(0)).b;
        }
        for (int i = 1; i < arrayList.size(); i++) {
            CuesWithTiming cuesWithTiming = (CuesWithTiming) arrayList.get(i);
            long j2 = cuesWithTiming.b;
            long j3 = cuesWithTiming.b;
            if (j < j2) {
                long j4 = ((CuesWithTiming) arrayList.get(i - 1)).d;
                if (j4 != -9223372036854775807L && j4 > j && j4 < j3) {
                    return j4;
                }
                return j3;
            }
        }
        long j5 = ((CuesWithTiming) Iterables.b(arrayList)).d;
        if (j5 == -9223372036854775807L || j >= j5) {
            return Long.MIN_VALUE;
        }
        return j5;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final ImmutableList b(long j) {
        int f = f(j);
        if (f == 0) {
            return ImmutableList.r();
        }
        CuesWithTiming cuesWithTiming = (CuesWithTiming) this.a.get(f - 1);
        long j2 = cuesWithTiming.d;
        if (j2 != -9223372036854775807L && j >= j2) {
            return ImmutableList.r();
        }
        return cuesWithTiming.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
    @Override // androidx.media3.exoplayer.text.CuesResolver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(CuesWithTiming cuesWithTiming, long j) {
        boolean z;
        boolean z2;
        int size;
        long j2 = cuesWithTiming.b;
        if (j2 != -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        if (j2 <= j) {
            long j3 = cuesWithTiming.d;
            if (j3 == -9223372036854775807L || j < j3) {
                z2 = true;
                ArrayList arrayList = this.a;
                for (size = arrayList.size() - 1; size >= 0; size--) {
                    if (j2 >= ((CuesWithTiming) arrayList.get(size)).b) {
                        arrayList.add(size + 1, cuesWithTiming);
                        return z2;
                    }
                    if (((CuesWithTiming) arrayList.get(size)).b <= j) {
                        z2 = false;
                    }
                }
                arrayList.add(0, cuesWithTiming);
                return z2;
            }
        }
        z2 = false;
        ArrayList arrayList2 = this.a;
        while (size >= 0) {
        }
        arrayList2.add(0, cuesWithTiming);
        return z2;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final void clear() {
        this.a.clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final long d(long j) {
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty() || j < ((CuesWithTiming) arrayList.get(0)).b) {
            return -9223372036854775807L;
        }
        for (int i = 1; i < arrayList.size(); i++) {
            long j2 = ((CuesWithTiming) arrayList.get(i)).b;
            if (j == j2) {
                return j2;
            }
            if (j < j2) {
                CuesWithTiming cuesWithTiming = (CuesWithTiming) arrayList.get(i - 1);
                long j3 = cuesWithTiming.d;
                if (j3 != -9223372036854775807L && j3 <= j) {
                    return j3;
                }
                return cuesWithTiming.b;
            }
        }
        CuesWithTiming cuesWithTiming2 = (CuesWithTiming) Iterables.b(arrayList);
        long j4 = cuesWithTiming2.d;
        if (j4 != -9223372036854775807L && j >= j4) {
            return j4;
        }
        return cuesWithTiming2.b;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public final void e(long j) {
        int f = f(j);
        if (f == 0) {
            return;
        }
        ArrayList arrayList = this.a;
        long j2 = ((CuesWithTiming) arrayList.get(f - 1)).d;
        if (j2 == -9223372036854775807L || j2 >= j) {
            f--;
        }
        arrayList.subList(0, f).clear();
    }

    public final int f(long j) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.a;
            if (i < arrayList.size()) {
                if (j < ((CuesWithTiming) arrayList.get(i)).b) {
                    return i;
                }
                i++;
            } else {
                return arrayList.size();
            }
        }
    }
}
