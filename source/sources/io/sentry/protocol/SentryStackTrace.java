package io.sentry.protocol;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.util.CollectionUtils;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryStackTrace implements JsonSerializable {
    public List j;
    public AbstractMap k;
    public Boolean l;
    public InstructionAddressAdjustment m;
    public ConcurrentHashMap n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryStackTrace> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, io.sentry.protocol.SentryStackTrace] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            ?? obj = new Object();
            objectReader.H0();
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
                    case -1010705206:
                        if (e0.equals("instruction_addr_adjustment")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 78226992:
                        if (e0.equals("registers")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 284874180:
                        if (e0.equals("snapshot")) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.j = objectReader.R0(iLogger, new Object());
                        break;
                    case 1:
                        obj.m = (InstructionAddressAdjustment) objectReader.z0(iLogger, new Object());
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.k = CollectionUtils.a((Map) objectReader.G0());
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.l = objectReader.n0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                        break;
                }
            }
            obj.n = concurrentHashMap;
            objectReader.i0();
            return obj;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum InstructionAddressAdjustment implements JsonSerializable {
        AUTO,
        ALL,
        ALL_BUT_FIRST,
        NONE;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Deserializer implements JsonDeserializer<InstructionAddressAdjustment> {
            @Override // io.sentry.JsonDeserializer
            public final Object a(ObjectReader objectReader, ILogger iLogger) {
                return InstructionAddressAdjustment.valueOf(objectReader.r().toUpperCase(Locale.ROOT));
            }
        }

        @Override // io.sentry.JsonSerializable
        public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
            ((JsonObjectWriter) objectWriter).j(toString().toLowerCase(Locale.ROOT));
        }
    }

    public SentryStackTrace(List list) {
        this.j = list;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("frames");
            jsonObjectWriter.g(iLogger, this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("registers");
            jsonObjectWriter.g(iLogger, this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("snapshot");
            jsonObjectWriter.h(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("instruction_addr_adjustment");
            jsonObjectWriter.g(iLogger, this.m);
        }
        ConcurrentHashMap concurrentHashMap = this.n;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.n, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
