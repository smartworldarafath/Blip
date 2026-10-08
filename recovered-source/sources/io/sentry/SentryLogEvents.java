package io.sentry;

import defpackage.jb;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryLogEvents implements JsonSerializable {
    public final List j;
    public HashMap k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryLogEvents> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v5, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ArrayList arrayList = null;
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("items")) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    objectReader.D(iLogger, hashMap, e0);
                } else {
                    arrayList = objectReader.R0(iLogger, new Object());
                }
            }
            objectReader.i0();
            if (arrayList != null) {
                SentryLogEvents sentryLogEvents = new SentryLogEvents(arrayList);
                sentryLogEvents.k = hashMap;
                return sentryLogEvents;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"items\"");
            iLogger.b(SentryLevel.ERROR, "Missing required field \"items\"", illegalStateException);
            throw illegalStateException;
        }
    }

    public SentryLogEvents(List list) {
        this.j = list;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("items");
        jsonObjectWriter.g(iLogger, this.j);
        HashMap hashMap = this.k;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.k, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
