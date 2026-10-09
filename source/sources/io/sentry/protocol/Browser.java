package io.sentry.protocol;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Browser implements JsonSerializable {
    public String j;
    public String k;
    public ConcurrentHashMap l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<Browser> {
        /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.protocol.Browser, java.lang.Object] */
        public static Browser b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ?? obj = new Object();
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("name")) {
                    if (!e0.equals("version")) {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                    } else {
                        obj.k = objectReader.L();
                    }
                } else {
                    obj.j = objectReader.L();
                }
            }
            obj.l = concurrentHashMap;
            objectReader.i0();
            return obj;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Browser.class == obj.getClass()) {
            Browser browser = (Browser) obj;
            if (Objects.a(this.j, browser.j) && Objects.a(this.k, browser.k)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("name");
            jsonObjectWriter.j(this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("version");
            jsonObjectWriter.j(this.k);
        }
        ConcurrentHashMap concurrentHashMap = this.l;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.l, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
