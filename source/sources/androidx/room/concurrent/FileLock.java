package androidx.room.concurrent;

import defpackage.q;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileLock {
    public final String a;
    public FileChannel b;

    public FileLock(String str) {
        this.a = str.concat(".lck");
    }

    public final void a() {
        String str = this.a;
        if (this.b == null) {
            try {
                File file = new File(str);
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileChannel channel = new FileOutputStream(file).getChannel();
                this.b = channel;
                if (channel != null) {
                    channel.lock();
                }
            } catch (Throwable th) {
                FileChannel fileChannel = this.b;
                if (fileChannel != null) {
                    fileChannel.close();
                }
                this.b = null;
                throw new IllegalStateException(q.i("Unable to lock file: '", str, "'."), th);
            }
        }
    }
}
