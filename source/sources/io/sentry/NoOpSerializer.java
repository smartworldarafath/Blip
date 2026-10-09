package io.sentry;

import java.io.BufferedInputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class NoOpSerializer implements ISerializer {
    public static final NoOpSerializer a = new Object();

    @Override // io.sentry.ISerializer
    public final String c(ConcurrentHashMap concurrentHashMap) {
        return "";
    }

    @Override // io.sentry.ISerializer
    public final Object d(Reader reader, Class cls) {
        return null;
    }

    @Override // io.sentry.ISerializer
    public final SentryEnvelope e(BufferedInputStream bufferedInputStream) {
        return null;
    }

    @Override // io.sentry.ISerializer
    public final void a(Object obj, Writer writer) {
    }

    @Override // io.sentry.ISerializer
    public final void b(SentryEnvelope sentryEnvelope, OutputStream outputStream) {
    }
}
