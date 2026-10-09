package io.sentry;

import java.io.IOException;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public enum SentryLevel implements JsonSerializable {
    DEBUG,
    INFO,
    WARNING,
    ERROR,
    FATAL;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryLevel> {
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            return SentryLevel.valueOf(objectReader.r().toUpperCase(Locale.ROOT));
        }
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        ((JsonObjectWriter) objectWriter).j(name().toLowerCase(Locale.ROOT));
    }
}
