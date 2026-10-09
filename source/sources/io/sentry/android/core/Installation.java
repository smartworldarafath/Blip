package io.sentry.android.core;

import android.content.Context;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryUUID;
import io.sentry.util.AutoClosableReentrantLock;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Installation {
    public static String a;
    public static final Charset b = Charset.forName("UTF-8");
    public static final AutoClosableReentrantLock c = new ReentrantLock();

    public static String a(Context context) {
        ISentryLifecycleToken a2 = c.a();
        try {
            if (a == null) {
                File file = new File(context.getFilesDir(), "INSTALLATION");
                try {
                    boolean exists = file.exists();
                    Charset charset = b;
                    if (!exists) {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            String a3 = SentryUUID.a();
                            fileOutputStream.write(a3.getBytes(charset));
                            fileOutputStream.flush();
                            fileOutputStream.close();
                            a = a3;
                            a2.close();
                            return a3;
                        } finally {
                        }
                    }
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
                    try {
                        byte[] bArr = new byte[(int) randomAccessFile.length()];
                        randomAccessFile.readFully(bArr);
                        String str = new String(bArr, charset);
                        randomAccessFile.close();
                        a = str;
                    } finally {
                    }
                } catch (Throwable th) {
                    throw new RuntimeException(th);
                }
            }
            String str2 = a;
            a2.close();
            return str2;
        } catch (Throwable th2) {
            try {
                a2.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
