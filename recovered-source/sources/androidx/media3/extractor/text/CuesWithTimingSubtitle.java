package androidx.media3.extractor.text;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.collect.UnmodifiableListIterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CuesWithTimingSubtitle implements Subtitle {
    public static final Ordering l = Ordering.c().d(new Object());
    public final ImmutableList j;
    public final long[] k;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CuesWithTimingSubtitle(List list) {
        long j;
        long j2;
        long j3 = -9223372036854775807L;
        int i = 0;
        if (list.size() == 1) {
            UnmodifiableListIterator listIterator = ((ImmutableList) list).listIterator(0);
            Object next = listIterator.next();
            if (!listIterator.hasNext()) {
                CuesWithTiming cuesWithTiming = (CuesWithTiming) next;
                long j4 = cuesWithTiming.b;
                long j5 = cuesWithTiming.c;
                if (j4 == -9223372036854775807L) {
                    j2 = 0;
                } else {
                    j2 = j4;
                }
                ImmutableList immutableList = cuesWithTiming.a;
                if (j5 == -9223372036854775807L) {
                    this.j = ImmutableList.t(immutableList);
                    this.k = new long[]{j2};
                    return;
                } else {
                    this.j = ImmutableList.u(immutableList, ImmutableList.r());
                    this.k = new long[]{j2, j5 + j2};
                    return;
                }
            }
            StringBuilder sb = new StringBuilder("expected one element but was: <");
            sb.append(next);
            while (i < 4 && listIterator.hasNext()) {
                sb.append(", ");
                sb.append(listIterator.next());
                i++;
            }
            if (listIterator.hasNext()) {
                sb.append(", ...");
            }
            sb.append('>');
            throw new IllegalArgumentException(sb.toString());
        }
        long[] jArr = new long[list.size() * 2];
        this.k = jArr;
        Arrays.fill(jArr, Long.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        ImmutableList x = ImmutableList.x(l, list);
        int i2 = 0;
        while (i < x.size()) {
            CuesWithTiming cuesWithTiming2 = (CuesWithTiming) x.get(i);
            long j6 = cuesWithTiming2.b;
            long j7 = cuesWithTiming2.c;
            ImmutableList immutableList2 = cuesWithTiming2.a;
            j6 = j6 == j3 ? 0L : j6;
            long j8 = j6 + j7;
            if (i2 != 0) {
                int i3 = i2 - 1;
                long j9 = this.k[i3];
                if (j9 >= j6) {
                    if (j9 == j6 && ((ImmutableList) arrayList.get(i3)).isEmpty()) {
                        arrayList.set(i3, immutableList2);
                        j = j3;
                    } else {
                        j = j3;
                        Log.f("CuesWithTimingSubtitle", "Truncating unsupported overlapping cues.");
                        this.k[i3] = j6;
                        arrayList.set(i3, immutableList2);
                    }
                    if (j7 == j) {
                        this.k[i2] = j8;
                        arrayList.add(ImmutableList.r());
                        i2++;
                    }
                    i++;
                    j3 = j;
                }
            }
            j = j3;
            this.k[i2] = j6;
            arrayList.add(immutableList2);
            i2++;
            if (j7 == j) {
            }
            i++;
            j3 = j;
        }
        this.j = ImmutableList.m(arrayList);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int a(long j) {
        int a = Util.a(this.k, j, false);
        if (a < this.j.size()) {
            return a;
        }
        return -1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final long b(int i) {
        boolean z;
        if (i < this.j.size()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        return this.k[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.extractor.text.Subtitle
    public final List c(long j) {
        int d = Util.d(this.k, j, false);
        if (d == -1) {
            return ImmutableList.r();
        }
        return (ImmutableList) this.j.get(d);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int d() {
        return this.j.size();
    }
}
