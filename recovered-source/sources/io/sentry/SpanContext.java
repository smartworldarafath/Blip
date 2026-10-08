package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.featureflags.SpanFeatureFlagBuffer;
import io.sentry.protocol.SentryId;
import io.sentry.util.CollectionUtils;
import io.sentry.util.Objects;
import io.sentry.util.StringUtils;
import io.sentry.util.thread.IThreadChecker;
import io.sentry.vendor.gson.stream.JsonToken;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SpanContext implements JsonSerializable {
    public final SentryId j;
    public final SpanId k;
    public final SpanId l;
    public transient TracesSamplingDecision m;
    public final String n;
    public String o;
    public SpanStatus p;
    public ConcurrentHashMap q;
    public String r;
    public Map s;
    public ConcurrentHashMap t;
    public Instrumenter u;
    public Baggage v;
    public final SpanFeatureFlagBuffer w;
    public final SentryId x;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SpanContext> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:34:0x009a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ac A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00b4 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ba A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00c7 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00cd A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00d3 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00e0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x008e A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r4v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static SpanContext b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            SentryId sentryId = null;
            SpanId spanId = null;
            String str = null;
            ConcurrentHashMap concurrentHashMap = null;
            SpanId spanId2 = null;
            String str2 = null;
            SpanStatus spanStatus = null;
            String str3 = null;
            ConcurrentHashMap concurrentHashMap2 = null;
            Map map = null;
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
                                spanId = new SpanId(objectReader.r());
                                break;
                            case 1:
                                spanId2 = (SpanId) objectReader.z0(iLogger, new Object());
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                str2 = objectReader.r();
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                str3 = objectReader.r();
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                spanStatus = (SpanStatus) objectReader.z0(iLogger, new Object());
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                str = objectReader.r();
                                break;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                map = (Map) objectReader.G0();
                                break;
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                concurrentHashMap2 = CollectionUtils.a((Map) objectReader.G0());
                                break;
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                sentryId = SentryId.Deserializer.b(objectReader);
                                break;
                            default:
                                if (concurrentHashMap == null) {
                                    concurrentHashMap = new ConcurrentHashMap();
                                }
                                objectReader.D(iLogger, concurrentHashMap, e0);
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
                    case -1008619738:
                        if (e0.equals("origin")) {
                            c = 3;
                        }
                        switch (c) {
                        }
                        break;
                    case -892481550:
                        if (e0.equals("status")) {
                            c = 4;
                        }
                        switch (c) {
                        }
                        break;
                    case 3553:
                        if (e0.equals("op")) {
                            c = 5;
                        }
                        switch (c) {
                        }
                        break;
                    case 3076010:
                        if (e0.equals("data")) {
                            c = 6;
                        }
                        switch (c) {
                        }
                        break;
                    case 3552281:
                        if (e0.equals("tags")) {
                            c = 7;
                        }
                        switch (c) {
                        }
                        break;
                    case 1270300245:
                        if (e0.equals("trace_id")) {
                            c = '\b';
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
            if (sentryId != null) {
                if (spanId != null) {
                    if (str == null) {
                        str = "";
                    }
                    SpanContext spanContext = new SpanContext(sentryId, spanId, str, spanId2);
                    spanContext.o = str2;
                    spanContext.p = spanStatus;
                    spanContext.r = str3;
                    if (concurrentHashMap2 != null) {
                        spanContext.q = concurrentHashMap2;
                    }
                    if (map != null) {
                        spanContext.s = map;
                    }
                    spanContext.t = concurrentHashMap;
                    objectReader.i0();
                    return spanContext;
                }
                IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"span_id\"");
                iLogger.b(SentryLevel.ERROR, "Missing required field \"span_id\"", illegalStateException);
                throw illegalStateException;
            }
            IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"trace_id\"");
            iLogger.b(SentryLevel.ERROR, "Missing required field \"trace_id\"", illegalStateException2);
            throw illegalStateException2;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    public SpanContext(SentryId sentryId, SpanId spanId, SpanId spanId2, String str, String str2, TracesSamplingDecision tracesSamplingDecision, SpanStatus spanStatus, String str3) {
        this.q = new ConcurrentHashMap();
        this.r = "manual";
        this.s = new ConcurrentHashMap();
        this.u = Instrumenter.SENTRY;
        this.w = new SpanFeatureFlagBuffer();
        this.x = SentryId.k;
        Objects.b(sentryId, "traceId is required");
        this.j = sentryId;
        Objects.b(spanId, "spanId is required");
        this.k = spanId;
        Objects.b(str, "operation is required");
        this.n = str;
        this.l = spanId2;
        this.o = str2;
        this.p = spanStatus;
        this.r = str3;
        a(tracesSamplingDecision);
        IThreadChecker threadChecker = ScopesAdapter.a.j().getThreadChecker();
        this.s.put("thread.id", String.valueOf(threadChecker.b()));
        this.s.put("thread.name", threadChecker.a());
    }

    public final void a(TracesSamplingDecision tracesSamplingDecision) {
        String obj;
        this.m = tracesSamplingDecision;
        Baggage baggage = this.v;
        if (baggage != null && tracesSamplingDecision != null) {
            Boolean bool = tracesSamplingDecision.a;
            Charset charset = StringUtils.a;
            if (bool == null) {
                obj = null;
            } else {
                obj = bool.toString();
            }
            baggage.b("sentry-sampled", obj);
            Double d = tracesSamplingDecision.c;
            if (d != null && baggage.e) {
                baggage.d = d;
            }
            Double d2 = tracesSamplingDecision.b;
            if (d2 != null) {
                baggage.c = d2;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpanContext)) {
            return false;
        }
        SpanContext spanContext = (SpanContext) obj;
        if (this.j.equals(spanContext.j) && this.k.equals(spanContext.k) && Objects.a(this.l, spanContext.l) && this.n.equals(spanContext.n) && Objects.a(this.o, spanContext.o) && this.p == spanContext.p) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k, this.l, this.n, this.o, this.p});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("trace_id");
        this.j.serialize(jsonObjectWriter, iLogger);
        jsonObjectWriter.c("span_id");
        this.k.serialize(jsonObjectWriter, iLogger);
        SpanId spanId = this.l;
        if (spanId != null) {
            jsonObjectWriter.c("parent_span_id");
            spanId.serialize(jsonObjectWriter, iLogger);
        }
        jsonObjectWriter.c("op");
        jsonObjectWriter.j(this.n);
        if (this.o != null) {
            jsonObjectWriter.c("description");
            jsonObjectWriter.j(this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("status");
            jsonObjectWriter.g(iLogger, this.p);
        }
        if (this.r != null) {
            jsonObjectWriter.c("origin");
            jsonObjectWriter.g(iLogger, this.r);
        }
        if (!this.q.isEmpty()) {
            jsonObjectWriter.c("tags");
            jsonObjectWriter.g(iLogger, this.q);
        }
        if (!this.s.isEmpty()) {
            jsonObjectWriter.c("data");
            jsonObjectWriter.g(iLogger, this.s);
        }
        ConcurrentHashMap concurrentHashMap = this.t;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.t, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }

    public SpanContext(SentryId sentryId, SpanId spanId, String str, SpanId spanId2) {
        this(sentryId, spanId, spanId2, str, null, null, null, "manual");
    }

    public SpanContext(SpanContext spanContext) {
        this.q = new ConcurrentHashMap();
        this.r = "manual";
        this.s = new ConcurrentHashMap();
        this.u = Instrumenter.SENTRY;
        this.w = new SpanFeatureFlagBuffer();
        this.x = SentryId.k;
        this.j = spanContext.j;
        this.k = spanContext.k;
        this.l = spanContext.l;
        a(spanContext.m);
        this.n = spanContext.n;
        this.o = spanContext.o;
        this.p = spanContext.p;
        ConcurrentHashMap a = CollectionUtils.a(spanContext.q);
        if (a != null) {
            this.q = a;
        }
        ConcurrentHashMap a2 = CollectionUtils.a(spanContext.t);
        if (a2 != null) {
            this.t = a2;
        }
        this.v = spanContext.v;
        ConcurrentHashMap a3 = CollectionUtils.a(spanContext.s);
        if (a3 != null) {
            this.s = a3;
        }
    }
}
