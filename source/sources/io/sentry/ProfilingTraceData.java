package io.sentry;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.protocol.SentryId;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProfilingTraceData implements JsonSerializable {
    public String A;
    public String B;
    public String C;
    public String D;
    public String E;
    public String F;
    public String G;
    public String H;
    public Date I;
    public final Map J;
    public ConcurrentHashMap L;
    public final File j;
    public final Callable k;
    public int l;
    public String n;
    public String o;
    public String p;
    public String q;
    public String r;
    public boolean s;
    public String t;
    public String v;
    public String w;
    public String x;
    public final ArrayList y;
    public String z;
    public List u = new ArrayList();
    public String K = null;
    public String m = Locale.getDefault().toString();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<ProfilingTraceData> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0078. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v15, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v33, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ProfilingTraceData profilingTraceData = new ProfilingTraceData(new File("dummy"), DateUtils.b(), new ArrayList(), "", SentryId.k.toString(), NoOpTransaction.a.r().j.toString(), "0", 0, "", new b(2), null, null, null, null, null, null, null, null, "normal", new HashMap());
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -2133529830:
                        if (e0.equals("device_manufacturer")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1981468849:
                        if (e0.equals("android_api_level")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1430655860:
                        if (e0.equals("build_id")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1172160413:
                        if (e0.equals("device_locale")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1102636175:
                        if (e0.equals("profile_id")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -716656436:
                        if (e0.equals("device_os_build_number")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -591076352:
                        if (e0.equals("device_model")) {
                            c = 6;
                            break;
                        }
                        break;
                    case -512511455:
                        if (e0.equals("device_is_emulator")) {
                            c = 7;
                            break;
                        }
                        break;
                    case -478065584:
                        if (e0.equals("duration_ns")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case -362243017:
                        if (e0.equals("measurements")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case -332426004:
                        if (e0.equals("device_physical_memory_bytes")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case -212264198:
                        if (e0.equals("device_cpu_frequencies")) {
                            c = 11;
                            break;
                        }
                        break;
                    case -102985484:
                        if (e0.equals("version_code")) {
                            c = '\f';
                            break;
                        }
                        break;
                    case -102670958:
                        if (e0.equals("version_name")) {
                            c = '\r';
                            break;
                        }
                        break;
                    case -85904877:
                        if (e0.equals("environment")) {
                            c = 14;
                            break;
                        }
                        break;
                    case 55126294:
                        if (e0.equals("timestamp")) {
                            c = 15;
                            break;
                        }
                        break;
                    case 508853068:
                        if (e0.equals("transaction_name")) {
                            c = 16;
                            break;
                        }
                        break;
                    case 796476189:
                        if (e0.equals("device_os_name")) {
                            c = 17;
                            break;
                        }
                        break;
                    case 839674195:
                        if (e0.equals("architecture")) {
                            c = 18;
                            break;
                        }
                        break;
                    case 1010584092:
                        if (e0.equals("transaction_id")) {
                            c = 19;
                            break;
                        }
                        break;
                    case 1052553990:
                        if (e0.equals("device_os_version")) {
                            c = 20;
                            break;
                        }
                        break;
                    case 1163928186:
                        if (e0.equals("truncation_reason")) {
                            c = 21;
                            break;
                        }
                        break;
                    case 1270300245:
                        if (e0.equals("trace_id")) {
                            c = 22;
                            break;
                        }
                        break;
                    case 1874684019:
                        if (e0.equals("platform")) {
                            c = 23;
                            break;
                        }
                        break;
                    case 1953158756:
                        if (e0.equals("sampled_profile")) {
                            c = 24;
                            break;
                        }
                        break;
                    case 1954122069:
                        if (e0.equals("transactions")) {
                            c = 25;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        String L = objectReader.L();
                        if (L == null) {
                            break;
                        } else {
                            profilingTraceData.n = L;
                            break;
                        }
                    case 1:
                        Integer y = objectReader.y();
                        if (y == null) {
                            break;
                        } else {
                            profilingTraceData.l = y.intValue();
                            break;
                        }
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        String L2 = objectReader.L();
                        if (L2 == null) {
                            break;
                        } else {
                            profilingTraceData.x = L2;
                            break;
                        }
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        String L3 = objectReader.L();
                        if (L3 == null) {
                            break;
                        } else {
                            profilingTraceData.m = L3;
                            break;
                        }
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        String L4 = objectReader.L();
                        if (L4 == null) {
                            break;
                        } else {
                            profilingTraceData.F = L4;
                            break;
                        }
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        String L5 = objectReader.L();
                        if (L5 == null) {
                            break;
                        } else {
                            profilingTraceData.p = L5;
                            break;
                        }
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        String L6 = objectReader.L();
                        if (L6 == null) {
                            break;
                        } else {
                            profilingTraceData.o = L6;
                            break;
                        }
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        Boolean n0 = objectReader.n0();
                        if (n0 == null) {
                            break;
                        } else {
                            profilingTraceData.s = n0.booleanValue();
                            break;
                        }
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        String L7 = objectReader.L();
                        if (L7 == null) {
                            break;
                        } else {
                            profilingTraceData.A = L7;
                            break;
                        }
                    case KeyModifiers.a /* 9 */:
                        HashMap Q = objectReader.Q(iLogger, new Object());
                        if (Q == null) {
                            break;
                        } else {
                            profilingTraceData.J.putAll(Q);
                            break;
                        }
                    case KeyModifiers.b /* 10 */:
                        String L8 = objectReader.L();
                        if (L8 == null) {
                            break;
                        } else {
                            profilingTraceData.v = L8;
                            break;
                        }
                    case 11:
                        List list = (List) objectReader.G0();
                        if (list == null) {
                            break;
                        } else {
                            profilingTraceData.u = list;
                            break;
                        }
                    case KeyModifiers.c /* 12 */:
                        String L9 = objectReader.L();
                        if (L9 == null) {
                            break;
                        } else {
                            profilingTraceData.B = L9;
                            break;
                        }
                    case '\r':
                        String L10 = objectReader.L();
                        if (L10 == null) {
                            break;
                        } else {
                            profilingTraceData.C = L10;
                            break;
                        }
                    case 14:
                        String L11 = objectReader.L();
                        if (L11 == null) {
                            break;
                        } else {
                            profilingTraceData.G = L11;
                            break;
                        }
                    case 15:
                        Date k0 = objectReader.k0(iLogger);
                        if (k0 == null) {
                            break;
                        } else {
                            profilingTraceData.I = k0;
                            break;
                        }
                    case 16:
                        String L12 = objectReader.L();
                        if (L12 == null) {
                            break;
                        } else {
                            profilingTraceData.z = L12;
                            break;
                        }
                    case 17:
                        String L13 = objectReader.L();
                        if (L13 == null) {
                            break;
                        } else {
                            profilingTraceData.q = L13;
                            break;
                        }
                    case 18:
                        String L14 = objectReader.L();
                        if (L14 == null) {
                            break;
                        } else {
                            profilingTraceData.t = L14;
                            break;
                        }
                    case 19:
                        String L15 = objectReader.L();
                        if (L15 == null) {
                            break;
                        } else {
                            profilingTraceData.D = L15;
                            break;
                        }
                    case 20:
                        String L16 = objectReader.L();
                        if (L16 == null) {
                            break;
                        } else {
                            profilingTraceData.r = L16;
                            break;
                        }
                    case 21:
                        String L17 = objectReader.L();
                        if (L17 == null) {
                            break;
                        } else {
                            profilingTraceData.H = L17;
                            break;
                        }
                    case 22:
                        String L18 = objectReader.L();
                        if (L18 == null) {
                            break;
                        } else {
                            profilingTraceData.E = L18;
                            break;
                        }
                    case 23:
                        String L19 = objectReader.L();
                        if (L19 == null) {
                            break;
                        } else {
                            profilingTraceData.w = L19;
                            break;
                        }
                    case 24:
                        String L20 = objectReader.L();
                        if (L20 == null) {
                            break;
                        } else {
                            profilingTraceData.K = L20;
                            break;
                        }
                    case 25:
                        ArrayList R0 = objectReader.R0(iLogger, new Object());
                        if (R0 == null) {
                            break;
                        } else {
                            profilingTraceData.y.addAll(R0);
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
            profilingTraceData.L = concurrentHashMap;
            objectReader.i0();
            return profilingTraceData;
        }
    }

    public ProfilingTraceData(File file, Date date, ArrayList arrayList, String str, String str2, String str3, String str4, int i, String str5, Callable callable, String str6, String str7, String str8, Boolean bool, String str9, String str10, String str11, String str12, String str13, Map map) {
        String str14;
        boolean z;
        String str15;
        String str16;
        String str17;
        this.j = file;
        this.I = date;
        this.t = str5;
        this.k = callable;
        this.l = i;
        this.n = str6 == null ? "" : str6;
        this.o = str7 == null ? "" : str7;
        if (str8 == null) {
            str14 = "";
        } else {
            str14 = str8;
        }
        this.r = str14;
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = false;
        }
        this.s = z;
        if (str9 != null) {
            str15 = str9;
        } else {
            str15 = "0";
        }
        this.v = str15;
        this.p = "";
        this.q = "android";
        this.w = "android";
        if (str10 == null) {
            str16 = "";
        } else {
            str16 = str10;
        }
        this.x = str16;
        this.y = arrayList;
        this.z = str.isEmpty() ? "unknown" : str;
        this.A = str4;
        this.B = "";
        this.C = str11 != null ? str11 : "";
        this.D = str2;
        this.E = str3;
        this.F = SentryUUID.a();
        if (str12 != null) {
            str17 = str12;
        } else {
            str17 = "production";
        }
        this.G = str17;
        this.H = str13;
        if (!str13.equals("normal") && !this.H.equals("timeout") && !this.H.equals("backgrounded")) {
            this.H = "normal";
        }
        this.J = map;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("android_api_level");
        jsonObjectWriter.g(iLogger, Integer.valueOf(this.l));
        jsonObjectWriter.c("device_locale");
        jsonObjectWriter.g(iLogger, this.m);
        jsonObjectWriter.c("device_manufacturer");
        jsonObjectWriter.j(this.n);
        jsonObjectWriter.c("device_model");
        jsonObjectWriter.j(this.o);
        jsonObjectWriter.c("device_os_build_number");
        jsonObjectWriter.j(this.p);
        jsonObjectWriter.c("device_os_name");
        jsonObjectWriter.j(this.q);
        jsonObjectWriter.c("device_os_version");
        jsonObjectWriter.j(this.r);
        jsonObjectWriter.c("device_is_emulator");
        jsonObjectWriter.k(this.s);
        jsonObjectWriter.c("architecture");
        jsonObjectWriter.g(iLogger, this.t);
        jsonObjectWriter.c("device_cpu_frequencies");
        jsonObjectWriter.g(iLogger, this.u);
        jsonObjectWriter.c("device_physical_memory_bytes");
        jsonObjectWriter.j(this.v);
        jsonObjectWriter.c("platform");
        jsonObjectWriter.j(this.w);
        jsonObjectWriter.c("build_id");
        jsonObjectWriter.j(this.x);
        jsonObjectWriter.c("transaction_name");
        jsonObjectWriter.j(this.z);
        jsonObjectWriter.c("duration_ns");
        jsonObjectWriter.j(this.A);
        jsonObjectWriter.c("version_name");
        jsonObjectWriter.j(this.C);
        jsonObjectWriter.c("version_code");
        jsonObjectWriter.j(this.B);
        ArrayList arrayList = this.y;
        if (!arrayList.isEmpty()) {
            jsonObjectWriter.c("transactions");
            jsonObjectWriter.g(iLogger, arrayList);
        }
        jsonObjectWriter.c("transaction_id");
        jsonObjectWriter.j(this.D);
        jsonObjectWriter.c("trace_id");
        jsonObjectWriter.j(this.E);
        jsonObjectWriter.c("profile_id");
        jsonObjectWriter.j(this.F);
        jsonObjectWriter.c("environment");
        jsonObjectWriter.j(this.G);
        jsonObjectWriter.c("truncation_reason");
        jsonObjectWriter.j(this.H);
        if (this.K != null) {
            jsonObjectWriter.c("sampled_profile");
            jsonObjectWriter.j(this.K);
        }
        String str = jsonObjectWriter.a.m;
        jsonObjectWriter.d("");
        jsonObjectWriter.c("measurements");
        jsonObjectWriter.g(iLogger, this.J);
        jsonObjectWriter.d(str);
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.g(iLogger, this.I);
        ConcurrentHashMap concurrentHashMap = this.L;
        if (concurrentHashMap != null) {
            for (String str2 : concurrentHashMap.keySet()) {
                jb.o(this.L, str2, jsonObjectWriter, str2, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
