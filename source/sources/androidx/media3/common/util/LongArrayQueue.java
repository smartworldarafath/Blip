package androidx.media3.common.util;

import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LongArrayQueue {
    public int a;
    public int b;
    public int c;
    public long[] d;
    public int e;

    public final long a() {
        int i = this.c;
        if (i != 0) {
            long[] jArr = this.d;
            int i2 = this.a;
            long j = jArr[i2];
            this.a = this.e & (i2 + 1);
            this.c = i - 1;
            return j;
        }
        k8.o();
        return 0L;
    }
}
