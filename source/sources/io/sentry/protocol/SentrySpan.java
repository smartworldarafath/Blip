package io.sentry.protocol;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.q;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import io.sentry.Span;
import io.sentry.SpanContext;
import io.sentry.SpanId;
import io.sentry.SpanStatus;
import io.sentry.protocol.SentryId;
import io.sentry.util.CollectionUtils;
import io.sentry.vendor.gson.stream.JsonToken;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentrySpan implements JsonSerializable {
    public final Double j;
    public final Double k;
    public final SentryId l;
    public final SpanId m;
    public final SpanId n;
    public final String o;
    public final String p;
    public final SpanStatus q;
    public final String r;
    public final Map s;
    public Map t;
    public final Map u;
    public ConcurrentHashMap v;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentrySpan> {
        public static IllegalStateException b(String str, ILogger iLogger) {
            String i = q.i("Missing required field \"", str, "\"");
            IllegalStateException illegalStateException = new IllegalStateException(i);
            iLogger.b(SentryLevel.ERROR, i, illegalStateException);
            return illegalStateException;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:43:0x00d4. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x00f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0176 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x00d7 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:74:0x00ee A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0114 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0120 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0128 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:82:0x012d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0137 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0144 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0164 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0169 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r23v0, types: [io.sentry.ObjectReader] */
        /* JADX WARN: Type inference failed for: r2v4, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v6, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v8, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v8, types: [java.util.Map] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            HashMap hashMap;
            HashMap hashMap2;
            objectReader.H0();
            ConcurrentHashMap concurrentHashMap = null;
            Double d = null;
            HashMap hashMap3 = null;
            SentryId sentryId = null;
            SpanId spanId = null;
            HashMap hashMap4 = null;
            String str = null;
            Double d2 = null;
            SpanId spanId2 = null;
            String str2 = null;
            SpanStatus spanStatus = null;
            String str3 = null;
            Map map = null;
            while (true) {
                ConcurrentHashMap concurrentHashMap2 = concurrentHashMap;
                Double d3 = d;
                HashMap hashMap5 = hashMap3;
                SentryId sentryId2 = sentryId;
                SpanId spanId3 = spanId;
                if (objectReader.peek() == JsonToken.NAME) {
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
                                    spanId = new SpanId(objectReader.r());
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap3 = hashMap5;
                                    sentryId = sentryId2;
                                    break;
                                case 1:
                                    spanId2 = (SpanId) objectReader.z0(iLogger, new Object());
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap2 = hashMap5;
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                    str2 = objectReader.L();
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap2 = hashMap5;
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                    try {
                                        d = objectReader.c0();
                                    } catch (NumberFormatException unused) {
                                        if (objectReader.k0(iLogger) != null) {
                                            d = Double.valueOf(r2.getTime() / 1000.0d);
                                        } else {
                                            d = null;
                                        }
                                    }
                                    concurrentHashMap = concurrentHashMap2;
                                    hashMap2 = hashMap5;
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                    str3 = objectReader.L();
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap2 = hashMap5;
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                    spanStatus = (SpanStatus) objectReader.z0(iLogger, new Object());
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap2 = hashMap5;
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                    hashMap4 = objectReader.Q(iLogger, new Object());
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap2 = hashMap5;
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                    str = objectReader.L();
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap2 = hashMap5;
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                    map = (Map) objectReader.G0();
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap2 = hashMap5;
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                                case KeyModifiers.a /* 9 */:
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap2 = (Map) objectReader.G0();
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                                case KeyModifiers.b /* 10 */:
                                    try {
                                        d2 = objectReader.c0();
                                    } catch (NumberFormatException unused2) {
                                        if (objectReader.k0(iLogger) != null) {
                                            d2 = Double.valueOf(r2.getTime() / 1000.0d);
                                        } else {
                                            d2 = null;
                                        }
                                    }
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap2 = hashMap5;
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                                case 11:
                                    sentryId = SentryId.Deserializer.b(objectReader);
                                    concurrentHashMap = concurrentHashMap2;
                                    d = d3;
                                    hashMap3 = hashMap5;
                                    spanId = spanId3;
                                    break;
                                default:
                                    if (concurrentHashMap2 == null) {
                                        concurrentHashMap = new ConcurrentHashMap();
                                    } else {
                                        concurrentHashMap = concurrentHashMap2;
                                    }
                                    objectReader.D(iLogger, concurrentHashMap, e0);
                                    d = d3;
                                    hashMap2 = hashMap5;
                                    sentryId = sentryId2;
                                    hashMap3 = hashMap2;
                                    spanId = spanId3;
                                    break;
                            }
                        case -1757797477:
                            if (e0.equals("parent_span_id")) {
                                c = 1;
                            }
                            switch (c) {
                            }
                            break;
                        case -1724546052:
                            if (e0.equals("description")) {
                                c = 2;
                            }
                            switch (c) {
                            }
                            break;
                        case -1526966919:
                            if (e0.equals("start_timestamp")) {
                                c = 3;
                            }
                            switch (c) {
                            }
                            break;
                        case -1008619738:
                            if (e0.equals("origin")) {
                                c = 4;
                            }
                            switch (c) {
                            }
                            break;
                        case -892481550:
                            if (e0.equals("status")) {
                                c = 5;
                            }
                            switch (c) {
                            }
                            break;
                        case -362243017:
                            if (e0.equals("measurements")) {
                                c = 6;
                            }
                            switch (c) {
                            }
                            break;
                        case 3553:
                            if (e0.equals("op")) {
                                c = 7;
                            }
                            switch (c) {
                            }
                            break;
                        case 3076010:
                            if (e0.equals("data")) {
                                c = '\b';
                            }
                            switch (c) {
                            }
                            break;
                        case 3552281:
                            if (e0.equals("tags")) {
                                c = '\t';
                            }
                            switch (c) {
                            }
                            break;
                        case 55126294:
                            if (e0.equals("timestamp")) {
                                c = '\n';
                            }
                            switch (c) {
                            }
                            break;
                        case 1270300245:
                            if (e0.equals("trace_id")) {
                                c = 11;
                            }
                            switch (c) {
                            }
                            break;
                        default:
                            switch (c) {
                            }
                            break;
                    }
                } else {
                    if (d3 != null) {
                        if (sentryId2 != null) {
                            if (spanId3 != null) {
                                if (str != null) {
                                    if (hashMap5 == null) {
                                        hashMap = new HashMap();
                                    } else {
                                        hashMap = hashMap5;
                                    }
                                    if (hashMap4 == null) {
                                        hashMap4 = new HashMap();
                                    }
                                    SentrySpan sentrySpan = new SentrySpan(d3, d2, sentryId2, spanId3, spanId2, str, str2, spanStatus, str3, hashMap, hashMap4, map);
                                    sentrySpan.v = concurrentHashMap2;
                                    objectReader.i0();
                                    return sentrySpan;
                                }
                                throw b("op", iLogger);
                            }
                            throw b("span_id", iLogger);
                        }
                        throw b("trace_id", iLogger);
                    }
                    throw b("start_timestamp", iLogger);
                }
            }
        }
    }

    public SentrySpan(Span span) {
        Double valueOf;
        ConcurrentHashMap concurrentHashMap = span.j;
        SpanContext spanContext = span.c;
        this.p = spanContext.o;
        this.o = spanContext.n;
        this.m = spanContext.k;
        this.n = spanContext.l;
        this.l = spanContext.j;
        this.q = spanContext.p;
        this.r = spanContext.r;
        ConcurrentHashMap a = CollectionUtils.a(spanContext.q);
        this.s = a == null ? new ConcurrentHashMap() : a;
        ConcurrentHashMap a2 = CollectionUtils.a(span.k);
        this.u = a2 == null ? new ConcurrentHashMap() : a2;
        if (span.b == null) {
            valueOf = null;
        } else {
            valueOf = Double.valueOf(span.a.c(r2) / 1.0E9d);
        }
        this.k = valueOf;
        this.j = Double.valueOf(span.a.d() / 1.0E9d);
        this.t = concurrentHashMap;
        spanContext.w.c();
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("start_timestamp");
        BigDecimal valueOf = BigDecimal.valueOf(this.j.doubleValue());
        RoundingMode roundingMode = RoundingMode.DOWN;
        jsonObjectWriter.g(iLogger, valueOf.setScale(6, roundingMode));
        Double d = this.k;
        if (d != null) {
            jsonObjectWriter.c("timestamp");
            jsonObjectWriter.g(iLogger, BigDecimal.valueOf(d.doubleValue()).setScale(6, roundingMode));
        }
        jsonObjectWriter.c("trace_id");
        jsonObjectWriter.g(iLogger, this.l);
        jsonObjectWriter.c("span_id");
        jsonObjectWriter.g(iLogger, this.m);
        SpanId spanId = this.n;
        if (spanId != null) {
            jsonObjectWriter.c("parent_span_id");
            jsonObjectWriter.g(iLogger, spanId);
        }
        jsonObjectWriter.c("op");
        jsonObjectWriter.j(this.o);
        String str = this.p;
        if (str != null) {
            jsonObjectWriter.c("description");
            jsonObjectWriter.j(str);
        }
        SpanStatus spanStatus = this.q;
        if (spanStatus != null) {
            jsonObjectWriter.c("status");
            jsonObjectWriter.g(iLogger, spanStatus);
        }
        String str2 = this.r;
        if (str2 != null) {
            jsonObjectWriter.c("origin");
            jsonObjectWriter.g(iLogger, str2);
        }
        Map map = this.s;
        if (!map.isEmpty()) {
            jsonObjectWriter.c("tags");
            jsonObjectWriter.g(iLogger, map);
        }
        if (this.t != null) {
            jsonObjectWriter.c("data");
            jsonObjectWriter.g(iLogger, this.t);
        }
        Map map2 = this.u;
        if (!map2.isEmpty()) {
            jsonObjectWriter.c("measurements");
            jsonObjectWriter.g(iLogger, map2);
        }
        ConcurrentHashMap concurrentHashMap = this.v;
        if (concurrentHashMap != null) {
            for (String str3 : concurrentHashMap.keySet()) {
                jb.o(this.v, str3, jsonObjectWriter, str3, iLogger);
            }
        }
        jsonObjectWriter.b();
    }

    public SentrySpan(Double d, Double d2, SentryId sentryId, SpanId spanId, SpanId spanId2, String str, String str2, SpanStatus spanStatus, String str3, Map map, Map map2, Map map3) {
        this.j = d;
        this.k = d2;
        this.l = sentryId;
        this.m = spanId;
        this.n = spanId2;
        this.o = str;
        this.p = str2;
        this.q = spanStatus;
        this.r = str3;
        this.s = map;
        this.u = map2;
        this.t = map3;
    }
}
