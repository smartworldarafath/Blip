package io.sentry.util;

import io.sentry.ILogger;
import io.sentry.ISerializer;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import io.sentry.util.JsonSerializationUtils;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EventSizeLimitingUtils {
    public static boolean a(SentryEvent sentryEvent, SentryOptions sentryOptions) {
        long j;
        ISerializer serializer = sentryOptions.getSerializer();
        ILogger logger = sentryOptions.getLogger();
        Charset charset = JsonSerializationUtils.a;
        try {
            JsonSerializationUtils.ByteCountingWriter byteCountingWriter = new JsonSerializationUtils.ByteCountingWriter();
            serializer.a(sentryEvent, byteCountingWriter);
            j = byteCountingWriter.j;
        } catch (Throwable th) {
            logger.b(SentryLevel.ERROR, "Could not calculate size of serializable", th);
            j = 0;
        }
        if (j <= SentryOptions.MAX_EVENT_SIZE_BYTES) {
            return true;
        }
        return false;
    }

    public static void b(SentryEvent sentryEvent, SentryOptions sentryOptions) {
        ArrayList d = sentryEvent.d();
        if (d != null) {
            Iterator it = d.iterator();
            while (it.hasNext()) {
                SentryStackTrace sentryStackTrace = ((SentryException) it.next()).n;
                if (sentryStackTrace != null) {
                    c(sentryStackTrace, sentryEvent, sentryOptions, "Truncated exception stack frames of event %s");
                }
            }
        }
        ArrayList e = sentryEvent.e();
        if (e != null) {
            Iterator it2 = e.iterator();
            while (it2.hasNext()) {
                SentryStackTrace sentryStackTrace2 = ((SentryThread) it2.next()).r;
                if (sentryStackTrace2 != null) {
                    c(sentryStackTrace2, sentryEvent, sentryOptions, "Truncated thread stack frames for event %s");
                }
            }
        }
    }

    public static void c(SentryStackTrace sentryStackTrace, SentryEvent sentryEvent, SentryOptions sentryOptions, String str) {
        List list = sentryStackTrace.j;
        if (list != null && list.size() > 500) {
            ArrayList arrayList = new ArrayList(500);
            arrayList.addAll(list.subList(0, 250));
            arrayList.addAll(list.subList(list.size() - 250, list.size()));
            sentryStackTrace.j = arrayList;
            sentryOptions.getLogger().c(SentryLevel.DEBUG, str, sentryEvent.j);
        }
    }
}
