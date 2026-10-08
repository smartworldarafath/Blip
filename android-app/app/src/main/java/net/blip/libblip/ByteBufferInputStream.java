package net.blip.libblip;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ByteBufferInputStream extends InputStream {
    public final ByteBuffer j;

    public ByteBufferInputStream(ByteBuffer byteBuffer) {
        this.j = byteBuffer.asReadOnlyBuffer();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        bArr.getClass();
        ByteBuffer byteBuffer = this.j;
        if (!byteBuffer.hasRemaining()) {
            return -1;
        }
        int min = (int) Math.min(i2, byteBuffer.remaining());
        byteBuffer.get(bArr, i, min);
        return min;
    }

    @Override // java.io.InputStream
    public final int read() {
        ByteBuffer byteBuffer = this.j;
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & 255;
        }
        return -1;
    }
}
