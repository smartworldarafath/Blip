package io.sentry;

import java.io.BufferedInputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ISerializer {
    void a(Object obj, Writer writer);

    void b(SentryEnvelope sentryEnvelope, OutputStream outputStream);

    String c(ConcurrentHashMap concurrentHashMap);

    Object d(Reader reader, Class cls);

    SentryEnvelope e(BufferedInputStream bufferedInputStream);
}
