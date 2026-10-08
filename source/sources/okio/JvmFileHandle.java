package okio;

import java.io.RandomAccessFile;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JvmFileHandle extends FileHandle {
    public final RandomAccessFile m;

    public JvmFileHandle(RandomAccessFile randomAccessFile) {
        this.m = randomAccessFile;
    }

    @Override // okio.FileHandle
    public final synchronized int a(long j, byte[] bArr, int i, int i2) {
        bArr.getClass();
        this.m.seek(j);
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int read = this.m.read(bArr, i, i2 - i3);
            if (read == -1) {
                if (i3 == 0) {
                    return -1;
                }
            } else {
                i3 += read;
            }
        }
        return i3;
    }
}
