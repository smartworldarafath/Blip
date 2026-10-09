package io.sentry.rrweb;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.rrweb.RRWebEvent;
import io.sentry.rrweb.RRWebIncrementalSnapshotEvent;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.HashMap;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RRWebInteractionMoveEvent extends RRWebIncrementalSnapshotEvent implements JsonSerializable {
    public int m;
    public List n;
    public HashMap o;
    public HashMap p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<RRWebInteractionMoveEvent> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v6, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v9, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        public static RRWebInteractionMoveEvent b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            RRWebInteractionMoveEvent rRWebInteractionMoveEvent = new RRWebInteractionMoveEvent();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("data")) {
                    if (!RRWebEvent.Deserializer.a(rRWebInteractionMoveEvent, e0, objectReader, iLogger)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                    }
                } else {
                    objectReader.H0();
                    HashMap hashMap2 = null;
                    while (objectReader.peek() == JsonToken.NAME) {
                        String e02 = objectReader.e0();
                        e02.getClass();
                        if (!e02.equals("pointerId")) {
                            if (!e02.equals("positions")) {
                                if (e02.equals("source")) {
                                    RRWebIncrementalSnapshotEvent.IncrementalSource incrementalSource = (RRWebIncrementalSnapshotEvent.IncrementalSource) objectReader.z0(iLogger, new Object());
                                    Objects.b(incrementalSource, "");
                                    rRWebInteractionMoveEvent.l = incrementalSource;
                                } else {
                                    if (hashMap2 == null) {
                                        hashMap2 = new HashMap();
                                    }
                                    objectReader.D(iLogger, hashMap2, e02);
                                }
                            } else {
                                rRWebInteractionMoveEvent.n = objectReader.R0(iLogger, new Object());
                            }
                        } else {
                            rRWebInteractionMoveEvent.m = objectReader.nextInt();
                        }
                    }
                    rRWebInteractionMoveEvent.p = hashMap2;
                    objectReader.i0();
                }
            }
            rRWebInteractionMoveEvent.o = hashMap;
            objectReader.i0();
            return rRWebInteractionMoveEvent;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Position implements JsonSerializable {
        public int j;
        public float k;
        public float l;
        public long m;
        public HashMap n;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Deserializer implements JsonDeserializer<Position> {
            /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
            /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, io.sentry.rrweb.RRWebInteractionMoveEvent$Position] */
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
                        case 120:
                            if (e0.equals("x")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 121:
                            if (e0.equals("y")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 3355:
                            if (e0.equals("id")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 665490880:
                            if (e0.equals("timeOffset")) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            obj.k = objectReader.nextFloat();
                            break;
                        case 1:
                            obj.l = objectReader.nextFloat();
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            obj.j = objectReader.nextInt();
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            obj.m = objectReader.nextLong();
                            break;
                        default:
                            if (hashMap == null) {
                                hashMap = new HashMap();
                            }
                            objectReader.D(iLogger, hashMap, e0);
                            break;
                    }
                }
                obj.n = hashMap;
                objectReader.i0();
                return obj;
            }
        }

        @Override // io.sentry.JsonSerializable
        public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
            JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
            jsonObjectWriter.a();
            jsonObjectWriter.c("id");
            jsonObjectWriter.f(this.j);
            jsonObjectWriter.c("x");
            jsonObjectWriter.e(this.k);
            jsonObjectWriter.c("y");
            jsonObjectWriter.e(this.l);
            jsonObjectWriter.c("timeOffset");
            jsonObjectWriter.f(this.m);
            HashMap hashMap = this.n;
            if (hashMap != null) {
                for (String str : hashMap.keySet()) {
                    jb.n(this.n, str, jsonObjectWriter, str, iLogger);
                }
            }
            jsonObjectWriter.b();
        }
    }

    public RRWebInteractionMoveEvent() {
        super(RRWebIncrementalSnapshotEvent.IncrementalSource.TouchMove);
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        RRWebEvent.Serializer.a(this, jsonObjectWriter, iLogger);
        jsonObjectWriter.c("data");
        jsonObjectWriter.a();
        jsonObjectWriter.c("source");
        jsonObjectWriter.g(iLogger, this.l);
        List list = this.n;
        if (list != null && !list.isEmpty()) {
            jsonObjectWriter.c("positions");
            jsonObjectWriter.g(iLogger, this.n);
        }
        jsonObjectWriter.c("pointerId");
        jsonObjectWriter.f(this.m);
        HashMap hashMap = this.p;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.p, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
        HashMap hashMap2 = this.o;
        if (hashMap2 != null) {
            for (String str2 : hashMap2.keySet()) {
                jb.n(this.o, str2, jsonObjectWriter, str2, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
