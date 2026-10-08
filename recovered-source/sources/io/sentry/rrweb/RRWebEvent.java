package io.sentry.rrweb;

import io.sentry.ILogger;
import io.sentry.JsonObjectWriter;
import io.sentry.ObjectReader;
import io.sentry.util.Objects;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RRWebEvent {
    public RRWebEventType j;
    public long k = System.currentTimeMillis();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v1, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        public static boolean a(RRWebEvent rRWebEvent, String str, ObjectReader objectReader, ILogger iLogger) {
            if (!str.equals("type")) {
                if (!str.equals("timestamp")) {
                    return false;
                }
                rRWebEvent.k = objectReader.nextLong();
                return true;
            }
            RRWebEventType rRWebEventType = (RRWebEventType) objectReader.z0(iLogger, new Object());
            Objects.b(rRWebEventType, "");
            rRWebEvent.j = rRWebEventType;
            return true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Serializer {
        public static void a(RRWebEvent rRWebEvent, JsonObjectWriter jsonObjectWriter, ILogger iLogger) {
            jsonObjectWriter.c("type");
            jsonObjectWriter.g(iLogger, rRWebEvent.j);
            jsonObjectWriter.c("timestamp");
            jsonObjectWriter.f(rRWebEvent.k);
        }
    }

    public RRWebEvent(RRWebEventType rRWebEventType) {
        this.j = rRWebEventType;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RRWebEvent)) {
            return false;
        }
        RRWebEvent rRWebEvent = (RRWebEvent) obj;
        if (this.k == rRWebEvent.k && this.j == rRWebEvent.j) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, Long.valueOf(this.k)});
    }
}
