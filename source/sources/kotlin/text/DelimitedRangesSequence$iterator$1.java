package kotlin.text;

import defpackage.k8;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DelimitedRangesSequence$iterator$1 implements Iterator<IntRange>, KMappedMarker {
    public int j = -1;
    public int k;
    public int l;
    public IntRange m;
    public int n;
    public final /* synthetic */ DelimitedRangesSequence o;

    public DelimitedRangesSequence$iterator$1(DelimitedRangesSequence delimitedRangesSequence) {
        this.o = delimitedRangesSequence;
        int d = RangesKt.d(0, 0, delimitedRangesSequence.a.length());
        this.k = d;
        this.l = d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        if (r7 < r4) goto L10;
     */
    /* JADX WARN: Type inference failed for: r0v7, types: [kotlin.ranges.IntProgression, kotlin.ranges.IntRange] */
    /* JADX WARN: Type inference failed for: r0v8, types: [kotlin.ranges.IntProgression, kotlin.ranges.IntRange] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        DelimitedRangesSequence delimitedRangesSequence = this.o;
        CharSequence charSequence = delimitedRangesSequence.a;
        int i = this.l;
        int i2 = 0;
        if (i < 0) {
            this.j = 0;
            this.m = null;
            return;
        }
        int i3 = delimitedRangesSequence.b;
        if (i3 > 0) {
            int i4 = this.n + 1;
            this.n = i4;
        }
        if (i <= charSequence.length()) {
            Pair pair = (Pair) delimitedRangesSequence.c.n(charSequence, Integer.valueOf(this.l));
            if (pair == null) {
                this.m = new IntProgression(this.k, StringsKt.p(charSequence), 1);
                this.l = -1;
            } else {
                int intValue = ((Number) pair.j).intValue();
                int intValue2 = ((Number) pair.k).intValue();
                this.m = RangesKt.j(this.k, intValue);
                int i5 = intValue + intValue2;
                this.k = i5;
                if (intValue2 == 0) {
                    i2 = 1;
                }
                this.l = i5 + i2;
            }
            this.j = 1;
        }
        this.m = new IntProgression(this.k, StringsKt.p(charSequence), 1);
        this.l = -1;
        this.j = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.j == -1) {
            a();
        }
        if (this.j == 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final IntRange next() {
        if (this.j == -1) {
            a();
        }
        if (this.j != 0) {
            IntRange intRange = this.m;
            intRange.getClass();
            this.m = null;
            this.j = -1;
            return intRange;
        }
        k8.o();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
