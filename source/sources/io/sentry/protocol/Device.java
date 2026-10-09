package io.sentry.protocol;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Device implements JsonSerializable {
    public Long A;
    public Long B;
    public Long C;
    public Integer D;
    public Integer E;
    public Float F;
    public Integer G;
    public Date H;
    public TimeZone I;
    public String J;
    public String K;
    public String L;
    public Float M;
    public Integer N;
    public Double O;
    public String P;
    public String Q;
    public ConcurrentHashMap R;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public String o;
    public String[] p;
    public Float q;
    public Boolean r;
    public Boolean s;
    public DeviceOrientation t;
    public Boolean u;
    public Long v;
    public Long w;
    public Long x;
    public Boolean y;
    public Long z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<Device> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.protocol.Device, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v8, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        public static Device b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ?? obj = new Object();
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -2076227591:
                        if (e0.equals("timezone")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -2012489734:
                        if (e0.equals("boot_time")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1981332476:
                        if (e0.equals("simulator")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1969347631:
                        if (e0.equals("manufacturer")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1608004830:
                        if (e0.equals("processor_count")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -1439500848:
                        if (e0.equals("orientation")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -1410521534:
                        if (e0.equals("battery_temperature")) {
                            c = 6;
                            break;
                        }
                        break;
                    case -1281860764:
                        if (e0.equals("family")) {
                            c = 7;
                            break;
                        }
                        break;
                    case -1097462182:
                        if (e0.equals("locale")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case -1012222381:
                        if (e0.equals("online")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case -877252910:
                        if (e0.equals("battery_level")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case -619038223:
                        if (e0.equals("model_id")) {
                            c = 11;
                            break;
                        }
                        break;
                    case -568274923:
                        if (e0.equals("screen_density")) {
                            c = '\f';
                            break;
                        }
                        break;
                    case -417046774:
                        if (e0.equals("screen_dpi")) {
                            c = '\r';
                            break;
                        }
                        break;
                    case -136523212:
                        if (e0.equals("free_memory")) {
                            c = 14;
                            break;
                        }
                        break;
                    case 3355:
                        if (e0.equals("id")) {
                            c = 15;
                            break;
                        }
                        break;
                    case 3373707:
                        if (e0.equals("name")) {
                            c = 16;
                            break;
                        }
                        break;
                    case 59142220:
                        if (e0.equals("low_memory")) {
                            c = 17;
                            break;
                        }
                        break;
                    case 93076189:
                        if (e0.equals("archs")) {
                            c = 18;
                            break;
                        }
                        break;
                    case 93997959:
                        if (e0.equals("brand")) {
                            c = 19;
                            break;
                        }
                        break;
                    case 104069929:
                        if (e0.equals("model")) {
                            c = 20;
                            break;
                        }
                        break;
                    case 115746789:
                        if (e0.equals("cpu_description")) {
                            c = 21;
                            break;
                        }
                        break;
                    case 244497903:
                        if (e0.equals("processor_frequency")) {
                            c = 22;
                            break;
                        }
                        break;
                    case 731866107:
                        if (e0.equals("connection_type")) {
                            c = 23;
                            break;
                        }
                        break;
                    case 746402966:
                        if (e0.equals("chipset")) {
                            c = 24;
                            break;
                        }
                        break;
                    case 817830969:
                        if (e0.equals("screen_width_pixels")) {
                            c = 25;
                            break;
                        }
                        break;
                    case 823882553:
                        if (e0.equals("external_storage_size")) {
                            c = 26;
                            break;
                        }
                        break;
                    case 897428293:
                        if (e0.equals("storage_size")) {
                            c = 27;
                            break;
                        }
                        break;
                    case 1331465768:
                        if (e0.equals("usable_memory")) {
                            c = 28;
                            break;
                        }
                        break;
                    case 1418777727:
                        if (e0.equals("memory_size")) {
                            c = 29;
                            break;
                        }
                        break;
                    case 1436115569:
                        if (e0.equals("charging")) {
                            c = 30;
                            break;
                        }
                        break;
                    case 1450613660:
                        if (e0.equals("external_free_storage")) {
                            c = 31;
                            break;
                        }
                        break;
                    case 1524159400:
                        if (e0.equals("free_storage")) {
                            c = ' ';
                            break;
                        }
                        break;
                    case 1556284978:
                        if (e0.equals("screen_height_pixels")) {
                            c = '!';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.I = objectReader.K(iLogger);
                        break;
                    case 1:
                        if (objectReader.peek() != JsonToken.STRING) {
                            break;
                        } else {
                            obj.H = objectReader.k0(iLogger);
                            break;
                        }
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.u = objectReader.n0();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.k = objectReader.L();
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obj.N = objectReader.y();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        obj.t = (DeviceOrientation) objectReader.z0(iLogger, new Object());
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        obj.M = objectReader.y0();
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        obj.m = objectReader.L();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        obj.K = objectReader.L();
                        break;
                    case KeyModifiers.a /* 9 */:
                        obj.s = objectReader.n0();
                        break;
                    case KeyModifiers.b /* 10 */:
                        obj.q = objectReader.y0();
                        break;
                    case 11:
                        obj.o = objectReader.L();
                        break;
                    case KeyModifiers.c /* 12 */:
                        obj.F = objectReader.y0();
                        break;
                    case '\r':
                        obj.G = objectReader.y();
                        break;
                    case 14:
                        obj.w = objectReader.F();
                        break;
                    case 15:
                        obj.J = objectReader.L();
                        break;
                    case 16:
                        obj.j = objectReader.L();
                        break;
                    case 17:
                        obj.y = objectReader.n0();
                        break;
                    case 18:
                        List list = (List) objectReader.G0();
                        if (list == null) {
                            break;
                        } else {
                            String[] strArr = new String[list.size()];
                            list.toArray(strArr);
                            obj.p = strArr;
                            break;
                        }
                    case 19:
                        obj.l = objectReader.L();
                        break;
                    case 20:
                        obj.n = objectReader.L();
                        break;
                    case 21:
                        obj.P = objectReader.L();
                        break;
                    case 22:
                        obj.O = objectReader.c0();
                        break;
                    case 23:
                        obj.L = objectReader.L();
                        break;
                    case 24:
                        obj.Q = objectReader.L();
                        break;
                    case 25:
                        obj.D = objectReader.y();
                        break;
                    case 26:
                        obj.B = objectReader.F();
                        break;
                    case 27:
                        obj.z = objectReader.F();
                        break;
                    case 28:
                        obj.x = objectReader.F();
                        break;
                    case 29:
                        obj.v = objectReader.F();
                        break;
                    case 30:
                        obj.r = objectReader.n0();
                        break;
                    case 31:
                        obj.C = objectReader.F();
                        break;
                    case ' ':
                        obj.A = objectReader.F();
                        break;
                    case '!':
                        obj.E = objectReader.y();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                        break;
                }
            }
            obj.R = concurrentHashMap;
            objectReader.i0();
            return obj;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum DeviceOrientation implements JsonSerializable {
        PORTRAIT,
        LANDSCAPE;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Deserializer implements JsonDeserializer<DeviceOrientation> {
            @Override // io.sentry.JsonDeserializer
            public final Object a(ObjectReader objectReader, ILogger iLogger) {
                return DeviceOrientation.valueOf(objectReader.r().toUpperCase(Locale.ROOT));
            }
        }

        @Override // io.sentry.JsonSerializable
        public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
            ((JsonObjectWriter) objectWriter).j(toString().toLowerCase(Locale.ROOT));
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Device.class == obj.getClass()) {
            Device device = (Device) obj;
            if (Objects.a(this.j, device.j) && Objects.a(this.k, device.k) && Objects.a(this.l, device.l) && Objects.a(this.m, device.m) && Objects.a(this.n, device.n) && Objects.a(this.o, device.o) && Arrays.equals(this.p, device.p) && Objects.a(this.q, device.q) && Objects.a(this.r, device.r) && Objects.a(this.s, device.s) && this.t == device.t && Objects.a(this.u, device.u) && Objects.a(this.v, device.v) && Objects.a(this.w, device.w) && Objects.a(this.x, device.x) && Objects.a(this.y, device.y) && Objects.a(this.z, device.z) && Objects.a(this.A, device.A) && Objects.a(this.B, device.B) && Objects.a(this.C, device.C) && Objects.a(this.D, device.D) && Objects.a(this.E, device.E) && Objects.a(this.F, device.F) && Objects.a(this.G, device.G) && Objects.a(this.H, device.H) && Objects.a(this.J, device.J) && Objects.a(this.K, device.K) && Objects.a(this.L, device.L) && Objects.a(this.M, device.M) && Objects.a(this.N, device.N) && Objects.a(this.O, device.O) && Objects.a(this.P, device.P) && Objects.a(this.Q, device.Q)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Arrays.hashCode(new Object[]{this.j, this.k, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F, this.G, this.H, this.I, this.J, this.K, this.L, this.M, this.N, this.O, this.P, this.Q}) * 31) + Arrays.hashCode(this.p);
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("name");
            jsonObjectWriter.j(this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("manufacturer");
            jsonObjectWriter.j(this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("brand");
            jsonObjectWriter.j(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("family");
            jsonObjectWriter.j(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("model");
            jsonObjectWriter.j(this.n);
        }
        if (this.o != null) {
            jsonObjectWriter.c("model_id");
            jsonObjectWriter.j(this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("archs");
            jsonObjectWriter.g(iLogger, this.p);
        }
        if (this.q != null) {
            jsonObjectWriter.c("battery_level");
            jsonObjectWriter.i(this.q);
        }
        if (this.r != null) {
            jsonObjectWriter.c("charging");
            jsonObjectWriter.h(this.r);
        }
        if (this.s != null) {
            jsonObjectWriter.c("online");
            jsonObjectWriter.h(this.s);
        }
        if (this.t != null) {
            jsonObjectWriter.c("orientation");
            jsonObjectWriter.g(iLogger, this.t);
        }
        if (this.u != null) {
            jsonObjectWriter.c("simulator");
            jsonObjectWriter.h(this.u);
        }
        if (this.v != null) {
            jsonObjectWriter.c("memory_size");
            jsonObjectWriter.i(this.v);
        }
        if (this.w != null) {
            jsonObjectWriter.c("free_memory");
            jsonObjectWriter.i(this.w);
        }
        if (this.x != null) {
            jsonObjectWriter.c("usable_memory");
            jsonObjectWriter.i(this.x);
        }
        if (this.y != null) {
            jsonObjectWriter.c("low_memory");
            jsonObjectWriter.h(this.y);
        }
        if (this.z != null) {
            jsonObjectWriter.c("storage_size");
            jsonObjectWriter.i(this.z);
        }
        if (this.A != null) {
            jsonObjectWriter.c("free_storage");
            jsonObjectWriter.i(this.A);
        }
        if (this.B != null) {
            jsonObjectWriter.c("external_storage_size");
            jsonObjectWriter.i(this.B);
        }
        if (this.C != null) {
            jsonObjectWriter.c("external_free_storage");
            jsonObjectWriter.i(this.C);
        }
        if (this.D != null) {
            jsonObjectWriter.c("screen_width_pixels");
            jsonObjectWriter.i(this.D);
        }
        if (this.E != null) {
            jsonObjectWriter.c("screen_height_pixels");
            jsonObjectWriter.i(this.E);
        }
        if (this.F != null) {
            jsonObjectWriter.c("screen_density");
            jsonObjectWriter.i(this.F);
        }
        if (this.G != null) {
            jsonObjectWriter.c("screen_dpi");
            jsonObjectWriter.i(this.G);
        }
        if (this.H != null) {
            jsonObjectWriter.c("boot_time");
            jsonObjectWriter.g(iLogger, this.H);
        }
        if (this.I != null) {
            jsonObjectWriter.c("timezone");
            jsonObjectWriter.g(iLogger, this.I);
        }
        if (this.J != null) {
            jsonObjectWriter.c("id");
            jsonObjectWriter.j(this.J);
        }
        if (this.L != null) {
            jsonObjectWriter.c("connection_type");
            jsonObjectWriter.j(this.L);
        }
        if (this.M != null) {
            jsonObjectWriter.c("battery_temperature");
            jsonObjectWriter.i(this.M);
        }
        if (this.K != null) {
            jsonObjectWriter.c("locale");
            jsonObjectWriter.j(this.K);
        }
        if (this.N != null) {
            jsonObjectWriter.c("processor_count");
            jsonObjectWriter.i(this.N);
        }
        if (this.O != null) {
            jsonObjectWriter.c("processor_frequency");
            jsonObjectWriter.i(this.O);
        }
        if (this.P != null) {
            jsonObjectWriter.c("cpu_description");
            jsonObjectWriter.j(this.P);
        }
        if (this.Q != null) {
            jsonObjectWriter.c("chipset");
            jsonObjectWriter.j(this.Q);
        }
        ConcurrentHashMap concurrentHashMap = this.R;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.R, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
