package androidx.media3.exoplayer.upstream;

import androidx.media3.exoplayer.upstream.SlidingPercentile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SlidingPercentile {
    public static final b h;
    public static final b i;
    public final int a;
    public int e;
    public int f;
    public int g;
    public final Sample[] c = new Sample[5];
    public final ArrayList b = new ArrayList();
    public int d = -1;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Sample {
        public int a;
        public int b;
        public float c;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.exoplayer.upstream.b] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.media3.exoplayer.upstream.b] */
    static {
        final int i2 = 0;
        h = new Comparator() { // from class: androidx.media3.exoplayer.upstream.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                SlidingPercentile.Sample sample = (SlidingPercentile.Sample) obj;
                SlidingPercentile.Sample sample2 = (SlidingPercentile.Sample) obj2;
                switch (i2) {
                    case 0:
                        return sample.a - sample2.a;
                    default:
                        return Float.compare(sample.c, sample2.c);
                }
            }
        };
        final int i3 = 1;
        i = new Comparator() { // from class: androidx.media3.exoplayer.upstream.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                SlidingPercentile.Sample sample = (SlidingPercentile.Sample) obj;
                SlidingPercentile.Sample sample2 = (SlidingPercentile.Sample) obj2;
                switch (i3) {
                    case 0:
                        return sample.a - sample2.a;
                    default:
                        return Float.compare(sample.c, sample2.c);
                }
            }
        };
    }

    public SlidingPercentile(int i2) {
        this.a = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(int i2, float f) {
        Sample sample;
        int i3 = this.d;
        ArrayList arrayList = this.b;
        if (i3 != 1) {
            Collections.sort(arrayList, h);
            this.d = 1;
        }
        int i4 = this.g;
        Sample[] sampleArr = this.c;
        if (i4 > 0) {
            int i5 = i4 - 1;
            this.g = i5;
            sample = sampleArr[i5];
        } else {
            sample = new Object();
        }
        int i6 = this.e;
        this.e = i6 + 1;
        sample.a = i6;
        sample.b = i2;
        sample.c = f;
        arrayList.add(sample);
        this.f += i2;
        while (true) {
            int i7 = this.f;
            int i8 = this.a;
            if (i7 > i8) {
                int i9 = i7 - i8;
                Sample sample2 = (Sample) arrayList.get(0);
                int i10 = sample2.b;
                if (i10 <= i9) {
                    this.f -= i10;
                    arrayList.remove(0);
                    int i11 = this.g;
                    if (i11 < 5) {
                        this.g = i11 + 1;
                        sampleArr[i11] = sample2;
                    }
                } else {
                    sample2.b = i10 - i9;
                    this.f -= i9;
                }
            } else {
                return;
            }
        }
    }

    public final float b() {
        int i2 = this.d;
        ArrayList arrayList = this.b;
        if (i2 != 0) {
            Collections.sort(arrayList, i);
            this.d = 0;
        }
        float f = 0.5f * this.f;
        int i3 = 0;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            Sample sample = (Sample) arrayList.get(i4);
            i3 += sample.b;
            if (i3 >= f) {
                return sample.c;
            }
        }
        if (arrayList.isEmpty()) {
            return Float.NaN;
        }
        return ((Sample) arrayList.get(arrayList.size() - 1)).c;
    }
}
