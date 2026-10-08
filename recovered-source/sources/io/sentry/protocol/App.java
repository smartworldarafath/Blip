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
import io.sentry.util.CollectionUtils;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class App implements JsonSerializable {
    public String j;
    public Date k;
    public String l;
    public String m;
    public String n;
    public String o;
    public String p;
    public AbstractMap q;
    public List r;
    public String s;
    public Boolean t;
    public Boolean u;
    public List v;
    public ConcurrentHashMap w;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<App> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.protocol.App, java.lang.Object] */
        public static App b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ?? obj = new Object();
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1950148125:
                        if (e0.equals("split_names")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1898053579:
                        if (e0.equals("device_app_hash")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1573129993:
                        if (e0.equals("start_type")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1524619986:
                        if (e0.equals("view_names")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -901870406:
                        if (e0.equals("app_version")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -650544995:
                        if (e0.equals("in_foreground")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -470395285:
                        if (e0.equals("build_type")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 746297735:
                        if (e0.equals("app_identifier")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 791585128:
                        if (e0.equals("app_start_time")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1133704324:
                        if (e0.equals("permissions")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1167648233:
                        if (e0.equals("app_name")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 1826866896:
                        if (e0.equals("app_build")) {
                            c = 11;
                            break;
                        }
                        break;
                    case 1965003281:
                        if (e0.equals("is_split_apks")) {
                            c = '\f';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        List list = (List) objectReader.G0();
                        if (list == null) {
                            break;
                        } else {
                            obj.v = list;
                            break;
                        }
                    case 1:
                        obj.l = objectReader.L();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.s = objectReader.L();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        List list2 = (List) objectReader.G0();
                        if (list2 == null) {
                            break;
                        } else {
                            obj.r = list2;
                            break;
                        }
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obj.o = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        obj.t = objectReader.n0();
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        obj.m = objectReader.L();
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        obj.j = objectReader.L();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        obj.k = objectReader.k0(iLogger);
                        break;
                    case KeyModifiers.a /* 9 */:
                        obj.q = CollectionUtils.a((Map) objectReader.G0());
                        break;
                    case KeyModifiers.b /* 10 */:
                        obj.n = objectReader.L();
                        break;
                    case 11:
                        obj.p = objectReader.L();
                        break;
                    case KeyModifiers.c /* 12 */:
                        obj.u = objectReader.n0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                        break;
                }
            }
            obj.w = concurrentHashMap;
            objectReader.i0();
            return obj;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && App.class == obj.getClass()) {
                App app = (App) obj;
                if (Objects.a(this.j, app.j) && Objects.a(this.k, app.k) && Objects.a(this.l, app.l) && Objects.a(this.m, app.m) && Objects.a(this.n, app.n) && Objects.a(this.o, app.o) && Objects.a(this.p, app.p) && Objects.a(this.q, app.q) && Objects.a(this.t, app.t) && Objects.a(this.r, app.r) && Objects.a(this.s, app.s) && Objects.a(this.u, app.u) && Objects.a(this.v, app.v)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.t, this.r, this.s, this.u, this.v});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("app_identifier");
            jsonObjectWriter.j(this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("app_start_time");
            jsonObjectWriter.g(iLogger, this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("device_app_hash");
            jsonObjectWriter.j(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("build_type");
            jsonObjectWriter.j(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("app_name");
            jsonObjectWriter.j(this.n);
        }
        if (this.o != null) {
            jsonObjectWriter.c("app_version");
            jsonObjectWriter.j(this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("app_build");
            jsonObjectWriter.j(this.p);
        }
        AbstractMap abstractMap = this.q;
        if (abstractMap != null && !abstractMap.isEmpty()) {
            jsonObjectWriter.c("permissions");
            jsonObjectWriter.g(iLogger, this.q);
        }
        if (this.t != null) {
            jsonObjectWriter.c("in_foreground");
            jsonObjectWriter.h(this.t);
        }
        if (this.r != null) {
            jsonObjectWriter.c("view_names");
            jsonObjectWriter.g(iLogger, this.r);
        }
        if (this.s != null) {
            jsonObjectWriter.c("start_type");
            jsonObjectWriter.j(this.s);
        }
        if (this.u != null) {
            jsonObjectWriter.c("is_split_apks");
            jsonObjectWriter.h(this.u);
        }
        List list = this.v;
        if (list != null && !list.isEmpty()) {
            jsonObjectWriter.c("split_names");
            jsonObjectWriter.g(iLogger, this.v);
        }
        ConcurrentHashMap concurrentHashMap = this.w;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.w, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
