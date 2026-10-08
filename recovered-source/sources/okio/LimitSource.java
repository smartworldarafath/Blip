package okio;

import defpackage.fe;
import defpackage.k8;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LimitSource extends ForwardingSource {
    public final long k;
    public final boolean l;
    public long m;

    public LimitSource(Source source, long j, boolean z) {
        super(source);
        this.k = j;
        this.l = z;
        if (j >= 0) {
            return;
        }
        fe.l(q.h(j, "byteCount < 0: "));
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003a, code lost:
    
        if (r2 != 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0056, code lost:
    
        throw new java.io.EOFException("expected " + r5 + " bytes but got " + r16.m);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
    
        r8 = r16.m + r2;
        r16.m = r8;
        r8 = r8 - r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005f, code lost:
    
        if (r8 > 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0062, code lost:
    
        r2 = r19.k - r8;
        r8 = new java.lang.Object();
        r8.a0(r19);
        r19.l0(r2, r8);
        r8.skip(r8.k);
        defpackage.k8.l("expected ", r5, " bytes but got ", r16.m);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007a, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002e, code lost:
    
        if (r17 > r2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
    
        if (r17 > r2) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0026, code lost:
    
        r2 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0030, code lost:
    
        r2 = r16.j.J0(r2, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (r2 != (-1)) goto L20;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v5, types: [okio.Buffer, java.lang.Object] */
    @Override // okio.ForwardingSource, okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long J0(long j, Buffer buffer) {
        buffer.getClass();
        long j2 = this.m;
        long j3 = this.k;
        long j4 = j3 - j2;
        if (j4 >= 0) {
            if (this.l) {
                j4++;
            } else if (j4 != 0) {
            }
            return -1L;
        }
        k8.l("expected ", j3, " bytes but got ", this.m);
        return 0L;
    }
}
