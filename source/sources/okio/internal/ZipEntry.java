package okio.internal;

import java.util.ArrayList;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ZipEntry {
    public final Path a;
    public final boolean b;
    public final String c;
    public final long d;
    public final long e;
    public final long f;
    public final int g;
    public final long h;
    public final int i;
    public final int j;
    public final Long k;
    public final Long l;
    public final Long m;
    public final Integer n;
    public final Integer o;
    public final Integer p;
    public final ArrayList q;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ ZipEntry(Path path, boolean z, String str, long j, long j2, long j3, int i, long j4, int i2, int i3, Long l, Long l2, Long l3, int i4) {
        this(path, z, r5, r6, r8, r10, r12, r13, r15, r16, r17, r18, r19, null, null, null);
        String str2;
        long j5;
        long j6;
        long j7;
        int i5;
        long j8;
        int i6;
        int i7;
        Long l4;
        Long l5;
        Long l6;
        if ((i4 & 4) != 0) {
            str2 = "";
        } else {
            str2 = str;
        }
        if ((i4 & 8) != 0) {
            j5 = -1;
        } else {
            j5 = j;
        }
        if ((i4 & 16) != 0) {
            j6 = -1;
        } else {
            j6 = j2;
        }
        if ((i4 & 32) != 0) {
            j7 = -1;
        } else {
            j7 = j3;
        }
        if ((i4 & 64) != 0) {
            i5 = -1;
        } else {
            i5 = i;
        }
        if ((i4 & 128) != 0) {
            j8 = -1;
        } else {
            j8 = j4;
        }
        if ((i4 & 256) != 0) {
            i6 = -1;
        } else {
            i6 = i2;
        }
        if ((i4 & 512) != 0) {
            i7 = -1;
        } else {
            i7 = i3;
        }
        if ((i4 & 1024) != 0) {
            l4 = null;
        } else {
            l4 = l;
        }
        if ((i4 & 2048) != 0) {
            l5 = null;
        } else {
            l5 = l2;
        }
        if ((i4 & 4096) != 0) {
            l6 = null;
        } else {
            l6 = l3;
        }
    }

    public ZipEntry(Path path, boolean z, String str, long j, long j2, long j3, int i, long j4, int i2, int i3, Long l, Long l2, Long l3, Integer num, Integer num2, Integer num3) {
        path.getClass();
        str.getClass();
        this.a = path;
        this.b = z;
        this.c = str;
        this.d = j;
        this.e = j2;
        this.f = j3;
        this.g = i;
        this.h = j4;
        this.i = i2;
        this.j = i3;
        this.k = l;
        this.l = l2;
        this.m = l3;
        this.n = num;
        this.o = num2;
        this.p = num3;
        this.q = new ArrayList();
    }
}
