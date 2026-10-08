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
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MeasurementValue implements JsonSerializable {
    public final Number j;
    public final String k;
    public ConcurrentHashMap l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<MeasurementValue> {
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            Number number = null;
            String str = null;
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("unit")) {
                    if (!e0.equals("value")) {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                    } else {
                        number = (Number) objectReader.G0();
                    }
                } else {
                    str = objectReader.L();
                }
            }
            objectReader.i0();
            if (number != null) {
                MeasurementValue measurementValue = new MeasurementValue(number, str);
                measurementValue.l = concurrentHashMap;
                return measurementValue;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"value\"");
            iLogger.b(SentryLevel.ERROR, "Missing required field \"value\"", illegalStateException);
            throw illegalStateException;
        }
    }

    public MeasurementValue(Number number, String str) {
        this.j = number;
        this.k = str;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("value");
        jsonObjectWriter.i(this.j);
        String str = this.k;
        if (str != null) {
            jsonObjectWriter.c("unit");
            jsonObjectWriter.j(str);
        }
        ConcurrentHashMap concurrentHashMap = this.l;
        if (concurrentHashMap != null) {
            for (String str2 : concurrentHashMap.keySet()) {
                jb.o(this.l, str2, jsonObjectWriter, str2, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
