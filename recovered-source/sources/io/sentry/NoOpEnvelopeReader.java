package io.sentry;

import java.io.BufferedInputStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpEnvelopeReader implements IEnvelopeReader {
    public static final NoOpEnvelopeReader a = new Object();

    @Override // io.sentry.IEnvelopeReader
    public final SentryEnvelope a(BufferedInputStream bufferedInputStream) {
        return null;
    }
}
