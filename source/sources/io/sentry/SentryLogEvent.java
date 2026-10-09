package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.protocol.SentryId;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryLogEvent implements JsonSerializable {
    public SentryId j;
    public SpanId k;
    public Double l;
    public String m;
    public SentryLogLevel n;
    public Integer o;
    public Map p;
    public HashMap q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryLogEvent> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:28:0x007d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0089 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0094 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a1 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00a7 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00ad A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00b3 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0072 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r10v8, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.Object, io.sentry.SentryLogEvent] */
        /* JADX WARN: Type inference failed for: r3v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
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
            SentryLogLevel sentryLogLevel = null;
            HashMap hashMap2 = null;
            Integer num = null;
            SpanId spanId = null;
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
                                num = objectReader.y();
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                str = objectReader.L();
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                d = objectReader.c0();
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                sentryLogLevel = (SentryLogLevel) objectReader.z0(iLogger, new Object());
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                hashMap2 = objectReader.Q(iLogger, new Object());
                                break;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                sentryId = (SentryId) objectReader.z0(iLogger, new Object());
                                break;
                            default:
                                if (hashMap == null) {
                                    hashMap = new HashMap();
                                }
                                objectReader.D(iLogger, hashMap, e0);
                                break;
                        }
                    case -1615012149:
                        if (e0.equals("severity_number")) {
                            c = 1;
                        }
                        switch (c) {
                        }
                        break;
                    case 3029410:
                        if (e0.equals("body")) {
                            c = 2;
                        }
                        switch (c) {
                        }
                        break;
                    case 55126294:
                        if (e0.equals("timestamp")) {
                            c = 3;
                        }
                        switch (c) {
                        }
                        break;
                    case 102865796:
                        if (e0.equals("level")) {
                            c = 4;
                        }
                        switch (c) {
                        }
                        break;
                    case 405645655:
                        if (e0.equals("attributes")) {
                            c = 5;
                        }
                        switch (c) {
                        }
                        break;
                    case 1270300245:
                        if (e0.equals("trace_id")) {
                            c = 6;
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
                        if (sentryLogLevel != null) {
                            ?? obj = new Object();
                            obj.j = sentryId;
                            obj.l = d;
                            obj.m = str;
                            obj.n = sentryLogLevel;
                            obj.p = hashMap2;
                            obj.o = num;
                            obj.k = spanId;
                            obj.q = hashMap;
                            return obj;
                        }
                        IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"level\"");
                        iLogger.b(SentryLevel.ERROR, "Missing required field \"level\"", illegalStateException);
                        throw illegalStateException;
                    }
                    IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"body\"");
                    iLogger.b(SentryLevel.ERROR, "Missing required field \"body\"", illegalStateException2);
                    throw illegalStateException2;
                }
                IllegalStateException illegalStateException3 = new IllegalStateException("Missing required field \"timestamp\"");
                iLogger.b(SentryLevel.ERROR, "Missing required field \"timestamp\"", illegalStateException3);
                throw illegalStateException3;
            }
            IllegalStateException illegalStateException4 = new IllegalStateException("Missing required field \"trace_id\"");
            iLogger.b(SentryLevel.ERROR, "Missing required field \"trace_id\"", illegalStateException4);
            throw illegalStateException4;
        }
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.g(iLogger, DateUtils.a(this.l));
        jsonObjectWriter.c("trace_id");
        jsonObjectWriter.g(iLogger, this.j);
        if (this.k != null) {
            jsonObjectWriter.c("span_id");
            jsonObjectWriter.g(iLogger, this.k);
        }
        jsonObjectWriter.c("body");
        jsonObjectWriter.j(this.m);
        jsonObjectWriter.c("level");
        jsonObjectWriter.g(iLogger, this.n);
        if (this.o != null) {
            jsonObjectWriter.c("severity_number");
            jsonObjectWriter.g(iLogger, this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("attributes");
            jsonObjectWriter.g(iLogger, this.p);
        }
        HashMap hashMap = this.q;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.q, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
