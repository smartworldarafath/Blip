package io.sentry.android.core.anr;

import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.cache.tape.ObjectQueue;
import io.sentry.cache.tape.QueueFile;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AnrProfileManager implements AutoCloseable {
    public final ObjectQueue j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.android.core.anr.AnrProfileManager$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements ObjectQueue.Converter<AnrStackTrace> {
        @Override // io.sentry.cache.tape.ObjectQueue.Converter
        public final void a(Object obj, OutputStream outputStream) {
            AnrStackTrace anrStackTrace = (AnrStackTrace) obj;
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
            try {
                anrStackTrace.a(dataOutputStream);
                dataOutputStream.flush();
                outputStream.flush();
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        @Override // io.sentry.cache.tape.ObjectQueue.Converter
        public final Object b(byte[] bArr) {
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
            try {
                if (dataInputStream.readShort() == 1) {
                    long readLong = dataInputStream.readLong();
                    int readInt = dataInputStream.readInt();
                    if (readInt >= 0 && readInt <= 1000) {
                        StackTraceElement[] stackTraceElementArr = new StackTraceElement[readInt];
                        for (int i = 0; i < readInt; i++) {
                            String readUTF = dataInputStream.readUTF();
                            String readUTF2 = dataInputStream.readUTF();
                            boolean readBoolean = dataInputStream.readBoolean();
                            String readUTF3 = dataInputStream.readUTF();
                            if (readBoolean) {
                                readUTF3 = null;
                            }
                            stackTraceElementArr[i] = new StackTraceElement(readUTF, readUTF2, readUTF3, dataInputStream.readInt());
                        }
                        return new AnrStackTrace(readLong, stackTraceElementArr);
                    }
                }
            } catch (EOFException unused) {
            }
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object, io.sentry.cache.tape.ObjectQueue$Converter] */
    public AnrProfileManager(SentryOptions sentryOptions, File file) {
        QueueFile queueFile;
        ILogger logger = sentryOptions.getLogger();
        try {
            try {
                QueueFile.Builder builder = new QueueFile.Builder(file);
                builder.b = 120;
                queueFile = builder.a();
            } catch (IOException e) {
                logger.b(SentryLevel.ERROR, "Failed to create stacktrace queue", e);
                queueFile = null;
            }
        } catch (IOException unused) {
            if (file.delete()) {
                QueueFile.Builder builder2 = new QueueFile.Builder(file);
                builder2.b = 120;
                queueFile = builder2.a();
            } else {
                throw new IOException("Could not delete file");
            }
        }
        if (queueFile == null) {
            this.j = ObjectQueue.P();
        } else {
            this.j = ObjectQueue.O(queueFile, new Object());
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }
}
