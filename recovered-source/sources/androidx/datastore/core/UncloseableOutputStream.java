package androidx.datastore.core;

import java.io.FileOutputStream;
import java.io.OutputStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UncloseableOutputStream extends OutputStream {
    public final FileOutputStream j;

    public UncloseableOutputStream(FileOutputStream fileOutputStream) {
        this.j = fileOutputStream;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        this.j.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        bArr.getClass();
        this.j.write(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.j.write(i);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        bArr.getClass();
        this.j.write(bArr, i, i2);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
