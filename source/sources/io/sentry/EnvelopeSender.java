package io.sentry;

import io.sentry.hints.Flushable;
import io.sentry.hints.Retryable;
import io.sentry.util.LogUtils;
import io.sentry.util.Objects;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EnvelopeSender extends DirectoryProcessor {
    public final IScopes e;
    public final ISerializer f;
    public final ILogger g;

    public EnvelopeSender(IScopes iScopes, ISerializer iSerializer, ILogger iLogger, long j, int i) {
        super(iScopes, iLogger, j, i);
        Objects.b(iScopes, "Scopes are required.");
        this.e = iScopes;
        Objects.b(iSerializer, "Serializer is required.");
        this.f = iSerializer;
        Objects.b(iLogger, "Logger is required.");
        this.g = iLogger;
    }

    public static void c(EnvelopeSender envelopeSender, File file, Retryable retryable) {
        boolean a = retryable.a();
        ILogger iLogger = envelopeSender.g;
        if (!a) {
            try {
                if (!file.delete()) {
                    iLogger.c(SentryLevel.ERROR, "Failed to delete '%s' %s", file.getAbsolutePath(), "after trying to capture it");
                }
            } catch (Throwable th) {
                iLogger.a(SentryLevel.ERROR, th, "Failed to delete '%s' %s", file.getAbsolutePath(), "after trying to capture it");
            }
            iLogger.c(SentryLevel.DEBUG, "Deleted file %s.", file.getAbsolutePath());
            return;
        }
        iLogger.c(SentryLevel.INFO, "File not deleted since retry was marked. %s.", file.getAbsolutePath());
    }

    @Override // io.sentry.DirectoryProcessor
    public final boolean a(String str) {
        return str.endsWith(".envelope");
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0140, code lost:
    
        if (r2 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0117, code lost:
    
        c(r8, r9, (io.sentry.hints.Retryable) r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0163, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0160, code lost:
    
        if (r2 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0115, code lost:
    
        if (r2 != null) goto L56;
     */
    @Override // io.sentry.DirectoryProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(File file, Hint hint) {
        Object b;
        boolean isFile = file.isFile();
        ILogger iLogger = this.g;
        if (!isFile) {
            iLogger.c(SentryLevel.DEBUG, "'%s' is not a file.", file.getAbsolutePath());
            return;
        }
        if (!file.getName().endsWith(".envelope")) {
            iLogger.c(SentryLevel.DEBUG, "File '%s' doesn't match extension expected.", file.getAbsolutePath());
            return;
        }
        if (!file.getParentFile().canWrite()) {
            iLogger.c(SentryLevel.WARNING, "File '%s' cannot be deleted so it will not be processed.", file.getAbsolutePath());
            return;
        }
        try {
            try {
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    try {
                        SentryEnvelope e = this.f.e(bufferedInputStream);
                        if (e == null) {
                            iLogger.c(SentryLevel.ERROR, "Failed to deserialize cached envelope %s", file.getAbsolutePath());
                        } else {
                            this.e.g(e, hint);
                        }
                        Object b2 = hint.b("sentry:typeCheckHint");
                        if (Flushable.class.isInstance(hint.b("sentry:typeCheckHint")) && b2 != null) {
                            if (!((Flushable) b2).e()) {
                                iLogger.c(SentryLevel.WARNING, "Timed out waiting for envelope submission.", new Object[0]);
                            }
                        } else {
                            LogUtils.a(Flushable.class, b2, iLogger);
                        }
                        bufferedInputStream.close();
                        Object b3 = hint.b("sentry:typeCheckHint");
                        if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint")) && b3 != null) {
                            c(this, file, (Retryable) b3);
                        } else {
                            LogUtils.a(Retryable.class, b3, iLogger);
                        }
                    } catch (Throwable th) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    Object b4 = hint.b("sentry:typeCheckHint");
                    if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint")) && b4 != null) {
                        c(this, file, (Retryable) b4);
                    } else {
                        LogUtils.a(Retryable.class, b4, iLogger);
                    }
                    throw th3;
                }
            } catch (IOException e2) {
                iLogger.a(SentryLevel.ERROR, e2, "I/O on file '%s' failed.", file.getAbsolutePath());
                b = hint.b("sentry:typeCheckHint");
                if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                }
                LogUtils.a(Retryable.class, b, iLogger);
            }
        } catch (FileNotFoundException e3) {
            iLogger.a(SentryLevel.ERROR, e3, "File '%s' cannot be found.", file.getAbsolutePath());
            b = hint.b("sentry:typeCheckHint");
            if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint"))) {
            }
            LogUtils.a(Retryable.class, b, iLogger);
        } catch (Throwable th4) {
            iLogger.a(SentryLevel.ERROR, th4, "Failed to capture cached envelope %s", file.getAbsolutePath());
            Object b5 = hint.b("sentry:typeCheckHint");
            if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint")) && b5 != null) {
                ((Retryable) b5).c(false);
                iLogger.a(SentryLevel.INFO, th4, "File '%s' won't retry.", file.getAbsolutePath());
            } else {
                LogUtils.a(Retryable.class, b5, iLogger);
            }
            b = hint.b("sentry:typeCheckHint");
            if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint"))) {
            }
            LogUtils.a(Retryable.class, b, iLogger);
        }
    }
}
