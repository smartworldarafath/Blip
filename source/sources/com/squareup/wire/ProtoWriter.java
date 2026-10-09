package com.squareup.wire;

import okio.BufferedSink;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoWriter {
    public final BufferedSink a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static int a(int i) {
            if ((i & (-128)) == 0) {
                return 1;
            }
            if ((i & (-16384)) == 0) {
                return 2;
            }
            if (((-2097152) & i) == 0) {
                return 3;
            }
            if ((i & (-268435456)) == 0) {
                return 4;
            }
            return 5;
        }

        public static int b(long j) {
            if (((-128) & j) == 0) {
                return 1;
            }
            if (((-16384) & j) == 0) {
                return 2;
            }
            if (((-2097152) & j) == 0) {
                return 3;
            }
            if (((-268435456) & j) == 0) {
                return 4;
            }
            if (((-34359738368L) & j) == 0) {
                return 5;
            }
            if (((-4398046511104L) & j) == 0) {
                return 6;
            }
            if (((-562949953421312L) & j) == 0) {
                return 7;
            }
            if (((-72057594037927936L) & j) == 0) {
                return 8;
            }
            if ((j & Long.MIN_VALUE) == 0) {
                return 9;
            }
            return 10;
        }
    }

    public ProtoWriter(BufferedSink bufferedSink) {
        bufferedSink.getClass();
        this.a = bufferedSink;
    }

    public final void a(ByteString byteString) {
        byteString.getClass();
        this.a.M0(byteString);
    }

    public final void b(int i) {
        while (true) {
            int i2 = i & (-128);
            BufferedSink bufferedSink = this.a;
            if (i2 != 0) {
                bufferedSink.writeByte((i & 127) | 128);
                i >>>= 7;
            } else {
                bufferedSink.writeByte(i);
                return;
            }
        }
    }

    public final void c(long j) {
        while (true) {
            long j2 = (-128) & j;
            BufferedSink bufferedSink = this.a;
            if (j2 != 0) {
                bufferedSink.writeByte((((int) j) & 127) | 128);
                j >>>= 7;
            } else {
                bufferedSink.writeByte((int) j);
                return;
            }
        }
    }
}
