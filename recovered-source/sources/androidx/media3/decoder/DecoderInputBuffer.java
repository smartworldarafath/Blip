package androidx.media3.decoder;

import androidx.media3.common.Format;
import androidx.media3.common.MediaLibraryInfo;
import defpackage.jb;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DecoderInputBuffer extends Buffer {
    public Format k;
    public final CryptoInfo l = new CryptoInfo();
    public ByteBuffer m;
    public long n;
    public ByteBuffer o;
    public final int p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class InsufficientCapacityException extends IllegalStateException {
    }

    static {
        MediaLibraryInfo.a("media3.decoder");
    }

    public DecoderInputBuffer(int i) {
        this.p = i;
    }

    public void f() {
        this.j = 0;
        ByteBuffer byteBuffer = this.m;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.o;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
    }

    public final ByteBuffer g(int i) {
        int capacity;
        int i2 = this.p;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.m;
        if (byteBuffer == null) {
            capacity = 0;
        } else {
            capacity = byteBuffer.capacity();
        }
        throw new IllegalStateException(jb.e("Buffer too small (", capacity, " < ", i, ")"));
    }

    public final void h(int i) {
        ByteBuffer byteBuffer = this.m;
        if (byteBuffer == null) {
            this.m = g(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (capacity >= i2) {
            this.m = byteBuffer;
            return;
        }
        ByteBuffer g = g(i2);
        g.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            g.put(byteBuffer);
        }
        this.m = g;
    }

    public final void i() {
        ByteBuffer byteBuffer = this.m;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.o;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }
}
