package com.squareup.wire;

import com.squareup.wire.ProtoWriter;
import defpackage.fe;
import defpackage.kb;
import defpackage.q;
import defpackage.u2;
import defpackage.vc;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import okio.Buffer;
import okio.ByteString;
import okio.Segment;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReverseProtoWriter {
    public static final byte[] g = new byte[0];
    public Buffer a = new Object();
    public Buffer b = new Object();
    public final Buffer.UnsafeCursor c;
    public byte[] d;
    public int e;
    public final Lazy f;

    /* JADX WARN: Type inference failed for: r0v0, types: [okio.Buffer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v1, types: [okio.Buffer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [okio.Buffer$UnsafeCursor, java.lang.Object] */
    public ReverseProtoWriter() {
        ?? obj = new Object();
        obj.l = -1;
        this.c = obj;
        this.d = g;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.k;
        this.f = LazyKt.a(lazyThreadSafetyMode, new vc(11));
        LazyKt.a(lazyThreadSafetyMode, new kb(9, this));
    }

    public final void a() {
        byte[] bArr = this.d;
        byte[] bArr2 = g;
        if (bArr == bArr2) {
            return;
        }
        this.c.close();
        this.b.skip(this.e);
        this.b.a0(this.a);
        Buffer buffer = this.a;
        this.a = this.b;
        this.b = buffer;
        this.d = bArr2;
        this.e = 0;
    }

    public final int b() {
        return (this.d.length - this.e) + ((int) this.a.k);
    }

    public final void c(int i) {
        if (this.e >= i) {
            return;
        }
        a();
        Buffer buffer = this.b;
        byte[] bArr = okio.internal.Buffer.a;
        Buffer.UnsafeCursor unsafeCursor = this.c;
        if (unsafeCursor.j == null) {
            unsafeCursor.j = buffer;
            if (i > 0) {
                if (i <= 8192) {
                    long j = buffer.k;
                    Segment S = buffer.S(i);
                    int i2 = 8192 - S.c;
                    S.c = 8192;
                    buffer.k = i2 + j;
                    byte[] bArr2 = S.a;
                    unsafeCursor.k = bArr2;
                    unsafeCursor.l = 8192;
                    if (j == 0) {
                        bArr2.getClass();
                        if (8192 == bArr2.length) {
                            byte[] bArr3 = unsafeCursor.k;
                            bArr3.getClass();
                            this.d = bArr3;
                            this.e = unsafeCursor.l;
                            return;
                        }
                    }
                    u2.l("Check failed.");
                    return;
                }
                fe.l(q.g(i, "minByteCount > Segment.SIZE: "));
                return;
            }
            fe.l(q.g(i, "minByteCount <= 0: "));
            return;
        }
        u2.l("already attached to a buffer");
    }

    public final void d(ByteString byteString) {
        byteString.getClass();
        int e = byteString.e();
        while (e != 0) {
            c(1);
            int min = Math.min(this.e, e);
            int i = this.e - min;
            this.e = i;
            e -= min;
            byteString.c(e, i, min, this.d);
        }
    }

    public final void e(int i) {
        c(4);
        int i2 = this.e;
        int i3 = i2 - 4;
        this.e = i3;
        byte[] bArr = this.d;
        bArr[i3] = (byte) (i & 255);
        bArr[i2 - 3] = (byte) ((i >>> 8) & 255);
        bArr[i2 - 2] = (byte) ((i >>> 16) & 255);
        bArr[i2 - 1] = (byte) ((i >>> 24) & 255);
    }

    public final void f(long j) {
        c(8);
        int i = this.e;
        int i2 = i - 8;
        this.e = i2;
        byte[] bArr = this.d;
        bArr[i2] = (byte) (j & 255);
        bArr[i - 7] = (byte) ((j >>> 8) & 255);
        bArr[i - 6] = (byte) ((j >>> 16) & 255);
        bArr[i - 5] = (byte) ((j >>> 24) & 255);
        bArr[i - 4] = (byte) ((j >>> 32) & 255);
        bArr[i - 3] = (byte) ((j >>> 40) & 255);
        bArr[i - 2] = (byte) ((j >>> 48) & 255);
        bArr[i - 1] = (byte) ((j >>> 56) & 255);
    }

    public final void g(int i) {
        int a = ProtoWriter.Companion.a(i);
        c(a);
        int i2 = this.e - a;
        this.e = i2;
        while (true) {
            int i3 = i & (-128);
            byte[] bArr = this.d;
            if (i3 != 0) {
                bArr[i2] = (byte) ((i & 127) | 128);
                i >>>= 7;
                i2++;
            } else {
                bArr[i2] = (byte) i;
                return;
            }
        }
    }

    public final void h(long j) {
        int b = ProtoWriter.Companion.b(j);
        c(b);
        int i = this.e - b;
        this.e = i;
        while (true) {
            long j2 = (-128) & j;
            byte[] bArr = this.d;
            if (j2 != 0) {
                bArr[i] = (byte) ((127 & j) | 128);
                j >>>= 7;
                i++;
            } else {
                bArr[i] = (byte) j;
                return;
            }
        }
    }
}
