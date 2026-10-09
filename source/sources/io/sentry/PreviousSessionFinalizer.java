package io.sentry;

import io.sentry.Session;
import io.sentry.cache.EnvelopeCache;
import io.sentry.cache.IEnvelopeCache;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PreviousSessionFinalizer implements Runnable {
    public static final Charset k = Charset.forName("UTF-8");
    public final SentryOptions j;

    public PreviousSessionFinalizer(SentryOptions sentryOptions) {
        this.j = sentryOptions;
    }

    public final Date a(File file) {
        SentryOptions sentryOptions = this.j;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), k));
            try {
                String readLine = bufferedReader.readLine();
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Crash marker file has %s timestamp.", readLine);
                Date d = DateUtils.d(readLine);
                bufferedReader.close();
                return d;
            } finally {
            }
        } catch (IOException e) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "Error reading the crash marker file.", e);
            return null;
        } catch (IllegalArgumentException e2) {
            sentryOptions.getLogger().a(SentryLevel.ERROR, e2, "Error converting the crash timestamp.", new Object[0]);
            return null;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        SentryOptions sentryOptions = this.j;
        String cacheDirPath = sentryOptions.getCacheDirPath();
        if (cacheDirPath == null) {
            sentryOptions.getLogger().c(SentryLevel.INFO, "Cache dir is not set, not finalizing the previous session.", new Object[0]);
            return;
        }
        IEnvelopeCache envelopeDiskCache = sentryOptions.getEnvelopeDiskCache();
        if ((envelopeDiskCache instanceof EnvelopeCache) && !((EnvelopeCache) envelopeDiskCache).g()) {
            sentryOptions.getLogger().c(SentryLevel.WARNING, "Timed out waiting to flush previous session to its own file in session finalizer.", new Object[0]);
            return;
        }
        int i = EnvelopeCache.s;
        File file = new File(cacheDirPath, "previous_session.json");
        ISerializer serializer = sentryOptions.getSerializer();
        if (file.exists()) {
            sentryOptions.getLogger().c(SentryLevel.WARNING, "Current session is not ended, we'd need to end it.", new Object[0]);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), k));
                try {
                    Session session = (Session) serializer.d(bufferedReader, Session.class);
                    if (session == null) {
                        sentryOptions.getLogger().c(SentryLevel.ERROR, "Stream from path %s resulted in a null envelope.", file.getAbsolutePath());
                    } else {
                        File file2 = new File(sentryOptions.getCacheDirPath(), ".sentry-native/last_crash");
                        Session.State state = session.p;
                        Session.State state2 = Session.State.Crashed;
                        if (state == state2) {
                            SentryCrashLastRunState sentryCrashLastRunState = SentryCrashLastRunState.c;
                            ISentryLifecycleToken a = sentryCrashLastRunState.b.a();
                            try {
                                sentryCrashLastRunState.a = false;
                                a.close();
                                sentryCrashLastRunState.a();
                            } finally {
                            }
                        } else if (file2.exists()) {
                            sentryOptions.getLogger().c(SentryLevel.INFO, "Crash marker file exists, last Session is gonna be Crashed.", new Object[0]);
                            Date a2 = a(file2);
                            session.d(state2, null, true, null);
                            session.b(a2);
                        } else if (session.w == null) {
                            session.b(DateUtils.b());
                        }
                        if (file2.exists() && !file2.delete()) {
                            sentryOptions.getLogger().c(SentryLevel.ERROR, "Failed to delete the crash marker file. %s.", file2.getAbsolutePath());
                        }
                        ScopesAdapter.a.g(new SentryEnvelope(null, sentryOptions.getSdkVersion(), SentryEnvelopeItem.d(serializer, session)), new Hint());
                    }
                    bufferedReader.close();
                } finally {
                }
            } catch (Throwable th) {
                sentryOptions.getLogger().b(SentryLevel.ERROR, "Error processing previous session.", th);
            }
            if (!file.delete()) {
                sentryOptions.getLogger().c(SentryLevel.WARNING, "Failed to delete the previous session file.", new Object[0]);
            }
        }
    }
}
