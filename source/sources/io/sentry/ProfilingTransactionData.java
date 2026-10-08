package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProfilingTransactionData implements JsonSerializable {
    public String j;
    public String k;
    public String l;
    public Long m;
    public Long n;
    public Long o;
    public Long p;
    public ConcurrentHashMap q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<ProfilingTransactionData> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0025. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ProfilingTransactionData profilingTransactionData = new ProfilingTransactionData(NoOpTransaction.a, 0L, 0L);
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -112372011:
                        if (e0.equals("relative_start_ns")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -84607876:
                        if (e0.equals("relative_end_ns")) {
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
                    case 3373707:
                        if (e0.equals("name")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1270300245:
                        if (e0.equals("trace_id")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 1566648660:
                        if (e0.equals("relative_cpu_end_ms")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1902256621:
                        if (e0.equals("relative_cpu_start_ms")) {
                            c = 6;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        Long F = objectReader.F();
                        if (F == null) {
                            break;
                        } else {
                            profilingTransactionData.m = F;
                            break;
                        }
                    case 1:
                        Long F2 = objectReader.F();
                        if (F2 == null) {
                            break;
                        } else {
                            profilingTransactionData.n = F2;
                            break;
                        }
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        String L = objectReader.L();
                        if (L == null) {
                            break;
                        } else {
                            profilingTransactionData.j = L;
                            break;
                        }
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        String L2 = objectReader.L();
                        if (L2 == null) {
                            break;
                        } else {
                            profilingTransactionData.l = L2;
                            break;
                        }
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        String L3 = objectReader.L();
                        if (L3 == null) {
                            break;
                        } else {
                            profilingTransactionData.k = L3;
                            break;
                        }
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        Long F3 = objectReader.F();
                        if (F3 == null) {
                            break;
                        } else {
                            profilingTransactionData.p = F3;
                            break;
                        }
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        Long F4 = objectReader.F();
                        if (F4 == null) {
                            break;
                        } else {
                            profilingTransactionData.o = F4;
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
            profilingTransactionData.q = concurrentHashMap;
            objectReader.i0();
            return profilingTransactionData;
        }
    }

    public ProfilingTransactionData(ITransaction iTransaction, Long l, Long l2) {
        String name;
        this.j = iTransaction.n().toString();
        this.k = iTransaction.r().j.toString();
        if (iTransaction.getName().isEmpty()) {
            name = "unknown";
        } else {
            name = iTransaction.getName();
        }
        this.l = name;
        this.m = l;
        this.o = l2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && ProfilingTransactionData.class == obj.getClass()) {
                ProfilingTransactionData profilingTransactionData = (ProfilingTransactionData) obj;
                if (this.j.equals(profilingTransactionData.j) && this.k.equals(profilingTransactionData.k) && this.l.equals(profilingTransactionData.l) && this.m.equals(profilingTransactionData.m) && this.o.equals(profilingTransactionData.o) && Objects.a(this.p, profilingTransactionData.p) && Objects.a(this.n, profilingTransactionData.n) && Objects.a(this.q, profilingTransactionData.q)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("id");
        jsonObjectWriter.g(iLogger, this.j);
        jsonObjectWriter.c("trace_id");
        jsonObjectWriter.g(iLogger, this.k);
        jsonObjectWriter.c("name");
        jsonObjectWriter.g(iLogger, this.l);
        jsonObjectWriter.c("relative_start_ns");
        jsonObjectWriter.g(iLogger, this.m);
        jsonObjectWriter.c("relative_end_ns");
        jsonObjectWriter.g(iLogger, this.n);
        jsonObjectWriter.c("relative_cpu_start_ms");
        jsonObjectWriter.g(iLogger, this.o);
        jsonObjectWriter.c("relative_cpu_end_ms");
        jsonObjectWriter.g(iLogger, this.p);
        ConcurrentHashMap concurrentHashMap = this.q;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.q, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
