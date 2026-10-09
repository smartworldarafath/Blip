package io.sentry;

import defpackage.jb;
import io.sentry.protocol.SentryId;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProfileContext implements JsonSerializable {
    public SentryId j;
    public ConcurrentHashMap k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<ProfileContext> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        public static ProfileContext b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ProfileContext profileContext = new ProfileContext(SentryId.k);
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("profiler_id")) {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    objectReader.D(iLogger, concurrentHashMap, e0);
                } else {
                    SentryId sentryId = (SentryId) objectReader.z0(iLogger, new Object());
                    if (sentryId != null) {
                        profileContext.j = sentryId;
                    }
                }
            }
            profileContext.k = concurrentHashMap;
            objectReader.i0();
            return profileContext;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    public ProfileContext(SentryId sentryId) {
        this.j = sentryId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProfileContext)) {
            return false;
        }
        return this.j.equals(((ProfileContext) obj).j);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("profiler_id");
        jsonObjectWriter.g(iLogger, this.j);
        ConcurrentHashMap concurrentHashMap = this.k;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.k, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
