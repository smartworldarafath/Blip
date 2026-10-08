package coil3.decode;

import java.io.InputStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ExifInterfaceInputStream extends InputStream {
    public final InputStream j;
    public int k = 1073741824;

    public ExifInterfaceInputStream(InputStream inputStream) {
        this.j = inputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.k;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    @Override // java.io.InputStream
    public final int read() {
        int read = this.j.read();
        if (read == -1) {
            this.k = 0;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        return this.j.skip(j);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        int read = this.j.read(bArr);
        if (read == -1) {
            this.k = 0;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.j.read(bArr, i, i2);
        if (read == -1) {
            this.k = 0;
        }
        return read;
    }
}
