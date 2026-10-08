package io.sentry.protocol;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.HashMap;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryPackage implements JsonSerializable {
    public final String j;
    public final String k;
    public HashMap l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryPackage> {
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            String str = null;
            String str2 = null;
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("name")) {
                    if (!e0.equals("version")) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                    } else {
                        str2 = objectReader.r();
                    }
                } else {
                    str = objectReader.r();
                }
            }
            objectReader.i0();
            if (str != null) {
                if (str2 != null) {
                    SentryPackage sentryPackage = new SentryPackage(str, str2);
                    sentryPackage.l = hashMap;
                    return sentryPackage;
                }
                IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"version\"");
                iLogger.b(SentryLevel.ERROR, "Missing required field \"version\"", illegalStateException);
                throw illegalStateException;
            }
            IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"name\"");
            iLogger.b(SentryLevel.ERROR, "Missing required field \"name\"", illegalStateException2);
            throw illegalStateException2;
        }
    }

    public SentryPackage(String str, String str2) {
        this.j = str;
        this.k = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SentryPackage.class == obj.getClass()) {
            SentryPackage sentryPackage = (SentryPackage) obj;
            if (Objects.equals(this.j, sentryPackage.j) && Objects.equals(this.k, sentryPackage.k)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.j, this.k);
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("name");
        jsonObjectWriter.j(this.j);
        jsonObjectWriter.c("version");
        jsonObjectWriter.j(this.k);
        HashMap hashMap = this.l;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.l, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
