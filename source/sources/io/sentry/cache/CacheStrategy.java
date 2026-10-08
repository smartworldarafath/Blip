package io.sentry.cache;

import io.sentry.ISerializer;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.Objects;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CacheStrategy {
    public static final Charset n = Charset.forName("UTF-8");
    public final SentryOptions j;
    public final LazyEvaluator k = new LazyEvaluator(new a(0, this));
    public final File l;
    public final int m;

    public CacheStrategy(SentryOptions sentryOptions, String str, int i) {
        Objects.b(sentryOptions, "SentryOptions is required.");
        this.j = sentryOptions;
        this.l = new File(str);
        this.m = i;
    }

    public final SentryEnvelope b(File file) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            try {
                SentryEnvelope e = ((ISerializer) this.k.a()).e(bufferedInputStream);
                bufferedInputStream.close();
                return e;
            } finally {
            }
        } catch (IOException e2) {
            this.j.getLogger().b(SentryLevel.ERROR, "Failed to deserialize the envelope.", e2);
            return null;
        }
    }

    public final Session c(SentryEnvelopeItem sentryEnvelopeItem) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(sentryEnvelopeItem.f()), n));
            try {
                Session session = (Session) ((ISerializer) this.k.a()).d(bufferedReader, Session.class);
                bufferedReader.close();
                return session;
            } finally {
            }
        } catch (Throwable th) {
            this.j.getLogger().b(SentryLevel.ERROR, "Failed to deserialize the session.", th);
            return null;
        }
    }
}
