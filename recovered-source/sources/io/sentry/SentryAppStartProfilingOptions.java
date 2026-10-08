package io.sentry;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.util.SentryRandom;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryAppStartProfilingOptions implements JsonSerializable {
    public boolean j;
    public Double k;
    public boolean l;
    public Double m;
    public String n;
    public boolean o;
    public boolean p;
    public int q;
    public boolean r;
    public boolean s;
    public boolean t;
    public ProfileLifecycle u;
    public ConcurrentHashMap v;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryAppStartProfilingOptions> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0039. Please report as an issue. */
        /* JADX WARN: Type inference failed for: r6v1, types: [io.sentry.SentryAppStartProfilingOptions, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ?? obj = new Object();
            obj.l = false;
            ConcurrentHashMap concurrentHashMap = null;
            obj.m = null;
            obj.j = false;
            obj.k = null;
            obj.r = false;
            obj.n = null;
            obj.o = false;
            obj.p = false;
            obj.u = ProfileLifecycle.MANUAL;
            obj.q = 0;
            obj.s = true;
            obj.t = false;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -801141276:
                        if (e0.equals("is_enable_app_start_profiling")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -566246656:
                        if (e0.equals("trace_sampled")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -450071601:
                        if (e0.equals("profiling_traces_dir_path")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -436975123:
                        if (e0.equals("is_continuous_profiling_enabled")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -116896685:
                        if (e0.equals("is_profiling_enabled")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -104146616:
                        if (e0.equals("is_start_profiler_on_app_start")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -69617820:
                        if (e0.equals("profile_sampled")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 401419348:
                        if (e0.equals("profile_lifecycle")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1401020980:
                        if (e0.equals("continuous_profile_sampled")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1583866442:
                        if (e0.equals("profiling_traces_hz")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1653938779:
                        if (e0.equals("trace_sample_rate")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 2140552383:
                        if (e0.equals("profile_sample_rate")) {
                            c = 11;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        Boolean n0 = objectReader.n0();
                        if (n0 == null) {
                            break;
                        } else {
                            obj.s = n0.booleanValue();
                            break;
                        }
                    case 1:
                        Boolean n02 = objectReader.n0();
                        if (n02 == null) {
                            break;
                        } else {
                            obj.l = n02.booleanValue();
                            break;
                        }
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        String L = objectReader.L();
                        if (L == null) {
                            break;
                        } else {
                            obj.n = L;
                            break;
                        }
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        Boolean n03 = objectReader.n0();
                        if (n03 == null) {
                            break;
                        } else {
                            obj.p = n03.booleanValue();
                            break;
                        }
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        Boolean n04 = objectReader.n0();
                        if (n04 == null) {
                            break;
                        } else {
                            obj.o = n04.booleanValue();
                            break;
                        }
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        Boolean n05 = objectReader.n0();
                        if (n05 == null) {
                            break;
                        } else {
                            obj.t = n05.booleanValue();
                            break;
                        }
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        Boolean n06 = objectReader.n0();
                        if (n06 == null) {
                            break;
                        } else {
                            obj.j = n06.booleanValue();
                            break;
                        }
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        String L2 = objectReader.L();
                        if (L2 == null) {
                            break;
                        } else {
                            try {
                                obj.u = ProfileLifecycle.valueOf(L2);
                                break;
                            } catch (IllegalArgumentException unused) {
                                iLogger.c(SentryLevel.ERROR, "Error when deserializing ProfileLifecycle: ".concat(L2), new Object[0]);
                                break;
                            }
                        }
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        Boolean n07 = objectReader.n0();
                        if (n07 == null) {
                            break;
                        } else {
                            obj.r = n07.booleanValue();
                            break;
                        }
                    case KeyModifiers.a /* 9 */:
                        Integer y = objectReader.y();
                        if (y == null) {
                            break;
                        } else {
                            obj.q = y.intValue();
                            break;
                        }
                    case KeyModifiers.b /* 10 */:
                        Double c0 = objectReader.c0();
                        if (c0 == null) {
                            break;
                        } else {
                            obj.m = c0;
                            break;
                        }
                    case 11:
                        Double c02 = objectReader.c0();
                        if (c02 == null) {
                            break;
                        } else {
                            obj.k = c02;
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
            obj.v = concurrentHashMap;
            objectReader.i0();
            return obj;
        }
    }

    public SentryAppStartProfilingOptions(SentryOptions sentryOptions, TracesSamplingDecision tracesSamplingDecision) {
        boolean z;
        this.l = tracesSamplingDecision.a.booleanValue();
        this.m = tracesSamplingDecision.b;
        this.j = tracesSamplingDecision.d.booleanValue();
        this.k = tracesSamplingDecision.e;
        TracesSampler internalTracesSampler = sentryOptions.getInternalTracesSampler();
        double c = SentryRandom.a().c();
        Double profileSessionSampleRate = internalTracesSampler.a.getProfileSessionSampleRate();
        if (profileSessionSampleRate != null && profileSessionSampleRate.doubleValue() >= c) {
            z = true;
        } else {
            z = false;
        }
        this.r = z;
        this.n = sentryOptions.getProfilingTracesDirPath();
        this.o = sentryOptions.isProfilingEnabled();
        this.p = sentryOptions.isContinuousProfilingEnabled();
        this.u = sentryOptions.getProfileLifecycle();
        this.q = sentryOptions.getProfilingTracesHz();
        this.s = sentryOptions.isEnableAppStartProfiling();
        this.t = sentryOptions.isStartProfilerOnAppStart();
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("profile_sampled");
        jsonObjectWriter.g(iLogger, Boolean.valueOf(this.j));
        jsonObjectWriter.c("profile_sample_rate");
        jsonObjectWriter.g(iLogger, this.k);
        jsonObjectWriter.c("continuous_profile_sampled");
        jsonObjectWriter.g(iLogger, Boolean.valueOf(this.r));
        jsonObjectWriter.c("trace_sampled");
        jsonObjectWriter.g(iLogger, Boolean.valueOf(this.l));
        jsonObjectWriter.c("trace_sample_rate");
        jsonObjectWriter.g(iLogger, this.m);
        jsonObjectWriter.c("profiling_traces_dir_path");
        jsonObjectWriter.g(iLogger, this.n);
        jsonObjectWriter.c("is_profiling_enabled");
        jsonObjectWriter.g(iLogger, Boolean.valueOf(this.o));
        jsonObjectWriter.c("is_continuous_profiling_enabled");
        jsonObjectWriter.g(iLogger, Boolean.valueOf(this.p));
        jsonObjectWriter.c("profile_lifecycle");
        jsonObjectWriter.g(iLogger, this.u.name());
        jsonObjectWriter.c("profiling_traces_hz");
        jsonObjectWriter.g(iLogger, Integer.valueOf(this.q));
        jsonObjectWriter.c("is_enable_app_start_profiling");
        jsonObjectWriter.g(iLogger, Boolean.valueOf(this.s));
        jsonObjectWriter.c("is_start_profiler_on_app_start");
        jsonObjectWriter.g(iLogger, Boolean.valueOf(this.t));
        ConcurrentHashMap concurrentHashMap = this.v;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.v, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
