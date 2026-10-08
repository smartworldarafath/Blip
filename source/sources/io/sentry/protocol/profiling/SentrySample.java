package io.sentry.protocol.profiling;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.vendor.gson.stream.JsonToken;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentrySample implements JsonSerializable {
    public double j;
    public int k;
    public String l;
    public HashMap m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentrySample> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, io.sentry.protocol.profiling.SentrySample] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ?? obj = new Object();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1562235024:
                        if (e0.equals("thread_id")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 55126294:
                        if (e0.equals("timestamp")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1302676018:
                        if (e0.equals("stack_id")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.l = objectReader.L();
                        break;
                    case 1:
                        obj.j = objectReader.nextDouble();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.k = objectReader.nextInt();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                        break;
                }
            }
            obj.m = hashMap;
            objectReader.i0();
            return obj;
        }
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.g(iLogger, BigDecimal.valueOf(this.j).setScale(6, RoundingMode.DOWN));
        jsonObjectWriter.c("stack_id");
        jsonObjectWriter.g(iLogger, Integer.valueOf(this.k));
        if (this.l != null) {
            jsonObjectWriter.c("thread_id");
            jsonObjectWriter.g(iLogger, this.l);
        }
        HashMap hashMap = this.m;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.m, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
