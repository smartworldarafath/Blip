package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.protocol.SentryId;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryMetricsEvent implements JsonSerializable {
    public SentryId j;
    public SpanId k;
    public Double l;
    public String m;
    public String n;
    public String o;
    public Double p;
    public Map q;
    public HashMap r;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryMetricsEvent> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:31:0x008a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0097 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a2 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00a8 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00ae A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00b4 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00ba A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00c0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x007f A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r11v9, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r12v6, types: [io.sentry.SentryMetricsEvent, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            SentryId sentryId = null;
            Double d = null;
            String str = null;
            HashMap hashMap = null;
            String str2 = null;
            Double d2 = null;
            HashMap hashMap2 = null;
            SpanId spanId = null;
            String str3 = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -2011840976:
                        if (e0.equals("span_id")) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                spanId = (SpanId) objectReader.z0(iLogger, new Object());
                                break;
                            case 1:
                                str2 = objectReader.L();
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                str = objectReader.L();
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                str3 = objectReader.L();
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                d = objectReader.c0();
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                d2 = objectReader.c0();
                                break;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                hashMap2 = objectReader.Q(iLogger, new Object());
                                break;
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                sentryId = (SentryId) objectReader.z0(iLogger, new Object());
                                break;
                            default:
                                if (hashMap == null) {
                                    hashMap = new HashMap();
                                }
                                objectReader.D(iLogger, hashMap, e0);
                                break;
                        }
                    case 3373707:
                        if (e0.equals("name")) {
                            c = 1;
                        }
                        switch (c) {
                        }
                        break;
                    case 3575610:
                        if (e0.equals("type")) {
                            c = 2;
                        }
                        switch (c) {
                        }
                        break;
                    case 3594628:
                        if (e0.equals("unit")) {
                            c = 3;
                        }
                        switch (c) {
                        }
                        break;
                    case 55126294:
                        if (e0.equals("timestamp")) {
                            c = 4;
                        }
                        switch (c) {
                        }
                        break;
                    case 111972721:
                        if (e0.equals("value")) {
                            c = 5;
                        }
                        switch (c) {
                        }
                        break;
                    case 405645655:
                        if (e0.equals("attributes")) {
                            c = 6;
                        }
                        switch (c) {
                        }
                        break;
                    case 1270300245:
                        if (e0.equals("trace_id")) {
                            c = 7;
                        }
                        switch (c) {
                        }
                        break;
                    default:
                        switch (c) {
                        }
                        break;
                }
            }
            objectReader.i0();
            if (sentryId != null) {
                if (d != null) {
                    if (str != null) {
                        if (str2 != null) {
                            if (d2 != null) {
                                ?? obj = new Object();
                                obj.j = sentryId;
                                obj.l = d;
                                obj.m = str2;
                                obj.o = str;
                                obj.p = d2;
                                obj.q = hashMap2;
                                obj.k = spanId;
                                obj.n = str3;
                                obj.r = hashMap;
                                return obj;
                            }
                            IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"value\"");
                            iLogger.b(SentryLevel.ERROR, "Missing required field \"value\"", illegalStateException);
                            throw illegalStateException;
                        }
                        IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"name\"");
                        iLogger.b(SentryLevel.ERROR, "Missing required field \"name\"", illegalStateException2);
                        throw illegalStateException2;
                    }
                    IllegalStateException illegalStateException3 = new IllegalStateException("Missing required field \"type\"");
                    iLogger.b(SentryLevel.ERROR, "Missing required field \"type\"", illegalStateException3);
                    throw illegalStateException3;
                }
                IllegalStateException illegalStateException4 = new IllegalStateException("Missing required field \"timestamp\"");
                iLogger.b(SentryLevel.ERROR, "Missing required field \"timestamp\"", illegalStateException4);
                throw illegalStateException4;
            }
            IllegalStateException illegalStateException5 = new IllegalStateException("Missing required field \"trace_id\"");
            iLogger.b(SentryLevel.ERROR, "Missing required field \"trace_id\"", illegalStateException5);
            throw illegalStateException5;
        }
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.g(iLogger, DateUtils.a(this.l));
        jsonObjectWriter.c("type");
        jsonObjectWriter.j(this.o);
        jsonObjectWriter.c("name");
        jsonObjectWriter.j(this.m);
        jsonObjectWriter.c("value");
        jsonObjectWriter.i(this.p);
        jsonObjectWriter.c("trace_id");
        jsonObjectWriter.g(iLogger, this.j);
        if (this.k != null) {
            jsonObjectWriter.c("span_id");
            jsonObjectWriter.g(iLogger, this.k);
        }
        if (this.n != null) {
            jsonObjectWriter.c("unit");
            jsonObjectWriter.g(iLogger, this.n);
        }
        if (this.q != null) {
            jsonObjectWriter.c("attributes");
            jsonObjectWriter.g(iLogger, this.q);
        }
        HashMap hashMap = this.r;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.r, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
