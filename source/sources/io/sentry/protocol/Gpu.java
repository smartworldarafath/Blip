package io.sentry.protocol;

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
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Gpu implements JsonSerializable {
    public String j;
    public Integer k;
    public String l;
    public String m;
    public Integer n;
    public String o;
    public Boolean p;
    public String q;
    public String r;
    public ConcurrentHashMap s;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<Gpu> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.protocol.Gpu, java.lang.Object] */
        public static Gpu b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ?? obj = new Object();
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1421884745:
                        if (e0.equals("npot_support")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1085970574:
                        if (e0.equals("vendor_id")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1009234244:
                        if (e0.equals("multi_threaded_rendering")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 3355:
                        if (e0.equals("id")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 3373707:
                        if (e0.equals("name")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 59480866:
                        if (e0.equals("vendor_name")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 351608024:
                        if (e0.equals("version")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 967446079:
                        if (e0.equals("api_type")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1418777727:
                        if (e0.equals("memory_size")) {
                            c = '\b';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.r = objectReader.L();
                        break;
                    case 1:
                        obj.l = objectReader.L();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.p = objectReader.n0();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.k = objectReader.y();
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obj.j = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        obj.m = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        obj.q = objectReader.L();
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        obj.o = objectReader.L();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        obj.n = objectReader.y();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                        break;
                }
            }
            obj.s = concurrentHashMap;
            objectReader.i0();
            return obj;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Gpu.class == obj.getClass()) {
            Gpu gpu = (Gpu) obj;
            if (Objects.a(this.j, gpu.j) && Objects.a(this.k, gpu.k) && Objects.a(this.l, gpu.l) && Objects.a(this.m, gpu.m) && Objects.a(this.n, gpu.n) && Objects.a(this.o, gpu.o) && Objects.a(this.p, gpu.p) && Objects.a(this.q, gpu.q) && Objects.a(this.r, gpu.r)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r});
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
            jsonObjectWriter.c("id");
            jsonObjectWriter.i(this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("vendor_id");
            jsonObjectWriter.j(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("vendor_name");
            jsonObjectWriter.j(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("memory_size");
            jsonObjectWriter.i(this.n);
        }
        if (this.o != null) {
            jsonObjectWriter.c("api_type");
            jsonObjectWriter.j(this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("multi_threaded_rendering");
            jsonObjectWriter.h(this.p);
        }
        if (this.q != null) {
            jsonObjectWriter.c("version");
            jsonObjectWriter.j(this.q);
        }
        if (this.r != null) {
            jsonObjectWriter.c("npot_support");
            jsonObjectWriter.j(this.r);
        }
        ConcurrentHashMap concurrentHashMap = this.s;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.s, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
