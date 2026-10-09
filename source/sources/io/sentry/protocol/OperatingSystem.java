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
public final class OperatingSystem implements JsonSerializable {
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public Boolean o;
    public ConcurrentHashMap p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<OperatingSystem> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, io.sentry.protocol.OperatingSystem] */
        public static OperatingSystem b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ?? obj = new Object();
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -925311743:
                        if (e0.equals("rooted")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -339173787:
                        if (e0.equals("raw_description")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3373707:
                        if (e0.equals("name")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 94094958:
                        if (e0.equals("build")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 351608024:
                        if (e0.equals("version")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 2015527638:
                        if (e0.equals("kernel_version")) {
                            c = 5;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.o = objectReader.n0();
                        break;
                    case 1:
                        obj.l = objectReader.L();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.j = objectReader.L();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.m = objectReader.L();
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obj.k = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        obj.n = objectReader.L();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                        break;
                }
            }
            obj.p = concurrentHashMap;
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
        if (obj != null && OperatingSystem.class == obj.getClass()) {
            OperatingSystem operatingSystem = (OperatingSystem) obj;
            if (Objects.a(this.j, operatingSystem.j) && Objects.a(this.k, operatingSystem.k) && Objects.a(this.l, operatingSystem.l) && Objects.a(this.m, operatingSystem.m) && Objects.a(this.n, operatingSystem.n) && Objects.a(this.o, operatingSystem.o)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k, this.l, this.m, this.n, this.o});
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
            jsonObjectWriter.c("version");
            jsonObjectWriter.j(this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("raw_description");
            jsonObjectWriter.j(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("build");
            jsonObjectWriter.j(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("kernel_version");
            jsonObjectWriter.j(this.n);
        }
        if (this.o != null) {
            jsonObjectWriter.c("rooted");
            jsonObjectWriter.h(this.o);
        }
        ConcurrentHashMap concurrentHashMap = this.p;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.p, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
