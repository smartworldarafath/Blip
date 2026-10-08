package io.sentry.profilemeasurements;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProfileMeasurement implements JsonSerializable {
    public ConcurrentHashMap j;
    public String k;
    public Collection l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<ProfileMeasurement> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v4, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ProfileMeasurement profileMeasurement = new ProfileMeasurement("unknown", new ArrayList());
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("values")) {
                    if (!e0.equals("unit")) {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                    } else {
                        String L = objectReader.L();
                        if (L != null) {
                            profileMeasurement.k = L;
                        }
                    }
                } else {
                    ArrayList R0 = objectReader.R0(iLogger, new Object());
                    if (R0 != null) {
                        profileMeasurement.l = R0;
                    }
                }
            }
            profileMeasurement.j = concurrentHashMap;
            objectReader.i0();
            return profileMeasurement;
        }
    }

    public ProfileMeasurement(String str, AbstractCollection abstractCollection) {
        this.k = str;
        this.l = abstractCollection;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && ProfileMeasurement.class == obj.getClass()) {
                ProfileMeasurement profileMeasurement = (ProfileMeasurement) obj;
                if (Objects.a(this.j, profileMeasurement.j) && this.k.equals(profileMeasurement.k) && new ArrayList(this.l).equals(new ArrayList(profileMeasurement.l))) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k, this.l});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("unit");
        jsonObjectWriter.g(iLogger, this.k);
        jsonObjectWriter.c("values");
        jsonObjectWriter.g(iLogger, this.l);
        ConcurrentHashMap concurrentHashMap = this.j;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.j, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
