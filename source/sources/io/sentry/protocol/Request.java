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
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Request implements JsonSerializable {
    public String j;
    public String k;
    public String l;
    public Object m;
    public String n;
    public ConcurrentHashMap o;
    public ConcurrentHashMap p;
    public Long q;
    public ConcurrentHashMap r;
    public String s;
    public String t;
    public ConcurrentHashMap u;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<Request> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, io.sentry.protocol.Request] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ?? obj = new Object();
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1650269616:
                        if (e0.equals("fragment")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1077554975:
                        if (e0.equals("method")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 100589:
                        if (e0.equals("env")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 116079:
                        if (e0.equals("url")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 3076010:
                        if (e0.equals("data")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 106069776:
                        if (e0.equals("other")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 795307910:
                        if (e0.equals("headers")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 952189583:
                        if (e0.equals("cookies")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1252988030:
                        if (e0.equals("body_size")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1595298664:
                        if (e0.equals("query_string")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1980646230:
                        if (e0.equals("api_target")) {
                            c = '\n';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.s = objectReader.L();
                        break;
                    case 1:
                        obj.k = objectReader.L();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        Map map = (Map) objectReader.G0();
                        if (map == null) {
                            break;
                        } else {
                            obj.p = CollectionUtils.a(map);
                            break;
                        }
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.j = objectReader.L();
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obj.m = objectReader.G0();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        Map map2 = (Map) objectReader.G0();
                        if (map2 == null) {
                            break;
                        } else {
                            obj.r = CollectionUtils.a(map2);
                            break;
                        }
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        Map map3 = (Map) objectReader.G0();
                        if (map3 == null) {
                            break;
                        } else {
                            obj.o = CollectionUtils.a(map3);
                            break;
                        }
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        obj.n = objectReader.L();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        obj.q = objectReader.F();
                        break;
                    case KeyModifiers.a /* 9 */:
                        obj.l = objectReader.L();
                        break;
                    case KeyModifiers.b /* 10 */:
                        obj.t = objectReader.L();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                        break;
                }
            }
            obj.u = concurrentHashMap;
            objectReader.i0();
            return obj;
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && Request.class == obj.getClass()) {
                Request request = (Request) obj;
                if (Objects.a(this.j, request.j) && Objects.a(this.k, request.k) && Objects.a(this.l, request.l) && Objects.a(this.n, request.n) && Objects.a(this.o, request.o) && Objects.a(this.p, request.p) && Objects.a(this.q, request.q) && Objects.a(this.s, request.s) && Objects.a(this.t, request.t)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k, this.l, this.n, this.o, this.p, this.q, this.s, this.t});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("url");
            jsonObjectWriter.j(this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("method");
            jsonObjectWriter.j(this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("query_string");
            jsonObjectWriter.j(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("data");
            jsonObjectWriter.g(iLogger, this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("cookies");
            jsonObjectWriter.j(this.n);
        }
        if (this.o != null) {
            jsonObjectWriter.c("headers");
            jsonObjectWriter.g(iLogger, this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("env");
            jsonObjectWriter.g(iLogger, this.p);
        }
        if (this.r != null) {
            jsonObjectWriter.c("other");
            jsonObjectWriter.g(iLogger, this.r);
        }
        if (this.s != null) {
            jsonObjectWriter.c("fragment");
            jsonObjectWriter.g(iLogger, this.s);
        }
        if (this.q != null) {
            jsonObjectWriter.c("body_size");
            jsonObjectWriter.g(iLogger, this.q);
        }
        if (this.t != null) {
            jsonObjectWriter.c("api_target");
            jsonObjectWriter.g(iLogger, this.t);
        }
        ConcurrentHashMap concurrentHashMap = this.u;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.u, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
