package coil3.video.internal;

import android.media.MediaDataSource;
import java.util.concurrent.locks.ReentrantLock;
import okio.FileHandle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileHandleMediaDataSource extends MediaDataSource {
    public final FileHandle j;

    public FileHandleMediaDataSource(FileHandle fileHandle) {
        this.j = fileHandle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.j.size();
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j, byte[] bArr, int i, int i2) {
        FileHandle fileHandle = this.j;
        fileHandle.getClass();
        bArr.getClass();
        ReentrantLock reentrantLock = fileHandle.l;
        reentrantLock.lock();
        try {
            if (!fileHandle.j) {
                reentrantLock.unlock();
                return fileHandle.a(j, bArr, i, i2);
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
