package io.sentry.protocol;

import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.protocol.Geo;
import io.sentry.util.CollectionUtils;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class User implements JsonSerializable {
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public Geo o;
    public ConcurrentHashMap p;
    public AbstractMap q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<User> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, io.sentry.protocol.User] */
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
                    case -265713450:
                        if (e0.equals("username")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 3355:
                        if (e0.equals("id")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 102225:
                        if (e0.equals("geo")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 3076010:
                        if (e0.equals("data")) {
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
                    case 96619420:
                        if (e0.equals("email")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1480014044:
                        if (e0.equals("ip_address")) {
                            c = 6;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.l = objectReader.L();
                        break;
                    case 1:
                        obj.k = objectReader.L();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.o = Geo.Deserializer.b(objectReader, iLogger);
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.p = CollectionUtils.a((Map) objectReader.G0());
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obj.n = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        obj.j = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        obj.m = objectReader.L();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                        break;
                }
            }
            obj.q = concurrentHashMap;
            objectReader.i0();
            return obj;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && User.class == obj.getClass()) {
            User user = (User) obj;
            if (Objects.a(this.j, user.j) && Objects.a(this.k, user.k) && Objects.a(this.l, user.l) && Objects.a(this.m, user.m)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k, this.l, this.m});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("email");
            jsonObjectWriter.j(this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("id");
            jsonObjectWriter.j(this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("username");
            jsonObjectWriter.j(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("ip_address");
            jsonObjectWriter.j(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("name");
            jsonObjectWriter.j(this.n);
        }
        if (this.o != null) {
            jsonObjectWriter.c("geo");
            this.o.serialize(jsonObjectWriter, iLogger);
        }
        if (this.p != null) {
            jsonObjectWriter.c("data");
            jsonObjectWriter.g(iLogger, this.p);
        }
        AbstractMap abstractMap = this.q;
        if (abstractMap != null) {
            for (String str : abstractMap.keySet()) {
                Object obj = this.q.get(str);
                jsonObjectWriter.c(str);
                jsonObjectWriter.g(iLogger, obj);
            }
        }
        jsonObjectWriter.b();
    }
}
