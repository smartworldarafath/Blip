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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryProfile implements JsonSerializable {
    public List j = new ArrayList();
    public List k = new ArrayList();
    public List l = new ArrayList();
    public Map m = new HashMap();
    public ConcurrentHashMap n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryProfile> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v7, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v9, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            SentryProfile sentryProfile = new SentryProfile();
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1266514778:
                        if (e0.equals("frames")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -892498197:
                        if (e0.equals("stacks")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1864843273:
                        if (e0.equals("samples")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 2061486532:
                        if (e0.equals("thread_metadata")) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        ArrayList R0 = objectReader.R0(iLogger, new Object());
                        if (R0 == null) {
                            break;
                        } else {
                            sentryProfile.l = R0;
                            break;
                        }
                    case 1:
                        List list = (List) objectReader.z0(iLogger, new Object());
                        if (list == null) {
                            break;
                        } else {
                            sentryProfile.k = list;
                            break;
                        }
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        ArrayList R02 = objectReader.R0(iLogger, new Object());
                        if (R02 == null) {
                            break;
                        } else {
                            sentryProfile.j = R02;
                            break;
                        }
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        HashMap Q = objectReader.Q(iLogger, new Object());
                        if (Q == null) {
                            break;
                        } else {
                            sentryProfile.m = Q;
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
            sentryProfile.n = concurrentHashMap;
            objectReader.i0();
            return sentryProfile;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NestedIntegerListDeserializer implements JsonDeserializer<List<List<Integer>>> {
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            ArrayList arrayList = new ArrayList();
            objectReader.T0();
            while (objectReader.hasNext()) {
                ArrayList arrayList2 = new ArrayList();
                objectReader.T0();
                while (objectReader.hasNext()) {
                    arrayList2.add(Integer.valueOf(objectReader.nextInt()));
                }
                objectReader.Q0();
                arrayList.add(arrayList2);
            }
            objectReader.Q0();
            return arrayList;
        }
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("samples");
        jsonObjectWriter.g(iLogger, this.j);
        jsonObjectWriter.c("stacks");
        jsonObjectWriter.g(iLogger, this.k);
        jsonObjectWriter.c("frames");
        jsonObjectWriter.g(iLogger, this.l);
        jsonObjectWriter.c("thread_metadata");
        jsonObjectWriter.g(iLogger, this.m);
        ConcurrentHashMap concurrentHashMap = this.n;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.n, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
