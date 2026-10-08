package io.sentry.android.core.anr;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.Breadcrumb;
import io.sentry.DateUtils;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SpanContext;
import io.sentry.android.ndk.NdkScopeObserver;
import io.sentry.android.replay.b;
import io.sentry.android.replay.capture.BufferCaptureStrategy;
import io.sentry.android.replay.util.ReplayExecutorService;
import io.sentry.android.replay.util.ReplayRunnable;
import io.sentry.cache.PersistingScopeObserver;
import io.sentry.cache.tape.ObjectQueue;
import io.sentry.ndk.NativeScope;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.SentryId;
import io.sentry.util.FileUtils;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ a(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        String str2;
        switch (this.j) {
            case 0:
                AnrProfilingIntegration anrProfilingIntegration = (AnrProfilingIntegration) this.k;
                AnrProfileManager anrProfileManager = (AnrProfileManager) this.l;
                if (anrProfileManager != null) {
                    try {
                        anrProfileManager.close();
                        return;
                    } catch (IOException unused) {
                        anrProfilingIntegration.r.c(SentryLevel.WARNING, "Failed to close AnrProfileManager", new Object[0]);
                        return;
                    }
                }
                return;
            case 1:
                NdkScopeObserver ndkScopeObserver = (NdkScopeObserver) this.k;
                Breadcrumb breadcrumb = (Breadcrumb) this.l;
                SentryOptions sentryOptions = ndkScopeObserver.a;
                SentryLevel sentryLevel = breadcrumb.r;
                String str3 = null;
                if (sentryLevel != null) {
                    str = sentryLevel.name().toLowerCase(Locale.ROOT);
                } else {
                    str = null;
                }
                String f = DateUtils.f(breadcrumb.b());
                try {
                    ConcurrentHashMap concurrentHashMap = breadcrumb.o;
                    if (!concurrentHashMap.isEmpty()) {
                        str3 = sentryOptions.getSerializer().c(concurrentHashMap);
                    }
                } catch (Throwable th) {
                    sentryOptions.getLogger().a(SentryLevel.ERROR, th, "Breadcrumb data is not serializable.", new Object[0]);
                }
                String str4 = str3;
                NativeScope nativeScope = ndkScopeObserver.b;
                String str5 = breadcrumb.m;
                String str6 = breadcrumb.p;
                String str7 = breadcrumb.n;
                nativeScope.getClass();
                NativeScope.nativeAddBreadcrumb(str, str5, str6, str7, f, str4);
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                NdkScopeObserver ndkScopeObserver2 = (NdkScopeObserver) this.k;
                SpanContext spanContext = (SpanContext) this.l;
                NativeScope nativeScope2 = ndkScopeObserver2.b;
                String sentryId = spanContext.j.toString();
                String spanId = spanContext.k.toString();
                nativeScope2.getClass();
                NativeScope.nativeSetTrace(sentryId, spanId);
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                File file = (File) this.k;
                BufferCaptureStrategy bufferCaptureStrategy = (BufferCaptureStrategy) this.l;
                int i = BufferCaptureStrategy.w;
                FileUtils.a(file);
                bufferCaptureStrategy.l(-1);
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                b bVar = (b) this.k;
                SentryOptions sentryOptions2 = (SentryOptions) this.l;
                try {
                    bVar.run();
                    return;
                } catch (Throwable th2) {
                    sentryOptions2.getLogger().b(SentryLevel.ERROR, "Failed to execute task ReplayIntegration.finalize_previous_replay", th2);
                    return;
                }
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Runnable runnable = (Runnable) this.k;
                ReplayExecutorService replayExecutorService = (ReplayExecutorService) this.l;
                try {
                    runnable.run();
                    return;
                } catch (Throwable th3) {
                    ILogger logger = replayExecutorService.k.getLogger();
                    SentryLevel sentryLevel2 = SentryLevel.ERROR;
                    if (runnable instanceof ReplayRunnable) {
                        str2 = ((ReplayRunnable) runnable).j;
                    } else {
                        str2 = "";
                    }
                    logger.b(sentryLevel2, "Failed to execute task ".concat(str2), th3);
                    return;
                }
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                PersistingScopeObserver persistingScopeObserver = (PersistingScopeObserver) this.k;
                SentryLevel sentryLevel3 = (SentryLevel) this.l;
                Charset charset = PersistingScopeObserver.c;
                if (sentryLevel3 == null) {
                    persistingScopeObserver.g("level.json");
                    return;
                } else {
                    persistingScopeObserver.l(sentryLevel3, "level.json");
                    return;
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                PersistingScopeObserver persistingScopeObserver2 = (PersistingScopeObserver) this.k;
                Runnable runnable2 = (Runnable) this.l;
                Charset charset2 = PersistingScopeObserver.c;
                try {
                    runnable2.run();
                    return;
                } catch (Throwable th4) {
                    persistingScopeObserver2.a.getLogger().b(SentryLevel.ERROR, "Serialization task failed", th4);
                    return;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                PersistingScopeObserver persistingScopeObserver3 = (PersistingScopeObserver) this.k;
                Breadcrumb breadcrumb2 = (Breadcrumb) this.l;
                Charset charset3 = PersistingScopeObserver.c;
                try {
                    ((ObjectQueue) persistingScopeObserver3.b.a()).A(breadcrumb2);
                    return;
                } catch (IOException e) {
                    persistingScopeObserver3.a.getLogger().b(SentryLevel.ERROR, "Failed to add breadcrumb to file queue", e);
                    return;
                }
            case KeyModifiers.a /* 9 */:
                PersistingScopeObserver persistingScopeObserver4 = (PersistingScopeObserver) this.k;
                SentryId sentryId2 = (SentryId) this.l;
                Charset charset4 = PersistingScopeObserver.c;
                persistingScopeObserver4.l(sentryId2, "replay.json");
                return;
            case KeyModifiers.b /* 10 */:
                PersistingScopeObserver persistingScopeObserver5 = (PersistingScopeObserver) this.k;
                String str8 = (String) this.l;
                Charset charset5 = PersistingScopeObserver.c;
                if (str8 == null) {
                    persistingScopeObserver5.g("transaction.json");
                    return;
                } else {
                    persistingScopeObserver5.l(str8, "transaction.json");
                    return;
                }
            default:
                PersistingScopeObserver persistingScopeObserver6 = (PersistingScopeObserver) this.k;
                Contexts contexts = (Contexts) this.l;
                Charset charset6 = PersistingScopeObserver.c;
                persistingScopeObserver6.l(contexts, "contexts.json");
                return;
        }
    }
}
