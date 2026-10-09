package io.sentry.profilemeasurements;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProfileMeasurementValue implements JsonSerializable {
    public ConcurrentHashMap j;
    public double k;
    public String l;
    public double m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<ProfileMeasurementValue> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0029. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            Double d;
            objectReader.H0();
            ProfileMeasurementValue profileMeasurementValue = new ProfileMeasurementValue(0L, 0, 0L);
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1709412534:
                        if (e0.equals("elapsed_since_start_ns")) {
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
                    case 111972721:
                        if (e0.equals("value")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        String L = objectReader.L();
                        if (L == null) {
                            break;
                        } else {
                            profileMeasurementValue.l = L;
                            break;
                        }
                    case 1:
                        try {
                            d = objectReader.c0();
                        } catch (NumberFormatException unused) {
                            if (objectReader.k0(iLogger) != null) {
                                d = Double.valueOf(r2.getTime() / 1000.0d);
                            } else {
                                d = null;
                            }
                        }
                        if (d == null) {
                            break;
                        } else {
                            profileMeasurementValue.k = d.doubleValue();
                            break;
                        }
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        Double c0 = objectReader.c0();
                        if (c0 == null) {
                            break;
                        } else {
                            profileMeasurementValue.m = c0.doubleValue();
                            break;
                        }
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                        break;
                }
            }
            profileMeasurementValue.j = concurrentHashMap;
            objectReader.i0();
            return profileMeasurementValue;
        }
    }

    public ProfileMeasurementValue(Long l, Number number, long j) {
        this.l = l.toString();
        this.m = number.doubleValue();
        this.k = j / 1.0E9d;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && ProfileMeasurementValue.class == obj.getClass()) {
                ProfileMeasurementValue profileMeasurementValue = (ProfileMeasurementValue) obj;
                if (Objects.a(this.j, profileMeasurementValue.j) && this.l.equals(profileMeasurementValue.l) && this.m == profileMeasurementValue.m && this.k == profileMeasurementValue.k) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.l, Double.valueOf(this.m)});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("value");
        jsonObjectWriter.g(iLogger, Double.valueOf(this.m));
        jsonObjectWriter.c("elapsed_since_start_ns");
        jsonObjectWriter.g(iLogger, this.l);
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.g(iLogger, BigDecimal.valueOf(this.k).setScale(6, RoundingMode.DOWN));
        ConcurrentHashMap concurrentHashMap = this.j;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.j, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
