package io.sentry.protocol.profiling;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryThreadMetadata implements JsonSerializable {
    public String j;
    public int k;
    public HashMap l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryThreadMetadata> {
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, io.sentry.protocol.profiling.SentryThreadMetadata] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ?? obj = new Object();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("priority")) {
                    if (!e0.equals("name")) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                    } else {
                        obj.j = objectReader.L();
                    }
                } else {
                    obj.k = objectReader.nextInt();
                }
            }
            obj.l = hashMap;
            objectReader.i0();
            return obj;
        }
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("name");
            jsonObjectWriter.g(iLogger, this.j);
        }
        jsonObjectWriter.c("priority");
        jsonObjectWriter.g(iLogger, Integer.valueOf(this.k));
        HashMap hashMap = this.l;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.l, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
