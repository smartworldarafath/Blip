package io.sentry;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.protocol.DebugMeta;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.profiling.SentryProfile;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.File;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProfileChunk implements JsonSerializable {
    public SentryId k;
    public SentryId l;
    public SdkVersion m;
    public final Map n;
    public String o;
    public String p;
    public String q;
    public String r;
    public double s;
    public final File t;
    public SentryProfile v;
    public ConcurrentHashMap w;
    public String u = null;
    public DebugMeta j = null;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final SentryId a;
        public final SentryId b;
        public final ConcurrentHashMap c;
        public final File d;
        public final double e;
        public final String f = "android";

        public Builder(SentryId sentryId, SentryId sentryId2, Map map, File file, SentryDate sentryDate) {
            this.a = sentryId;
            this.b = sentryId2;
            this.c = new ConcurrentHashMap(map);
            this.d = file;
            this.e = sentryDate.d() / 1.0E9d;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<ProfileChunk> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0032. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v14, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v19, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v24, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v3, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v6, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v8, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            SentryId sentryId = SentryId.k;
            ProfileChunk profileChunk = new ProfileChunk(sentryId, sentryId, null, new HashMap(), Double.valueOf(0.0d), "android", SentryOptions.empty());
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1840434063:
                        if (e0.equals("debug_meta")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -362243017:
                        if (e0.equals("measurements")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -309425751:
                        if (e0.equals("profile")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -85904877:
                        if (e0.equals("environment")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 55126294:
                        if (e0.equals("timestamp")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 178573617:
                        if (e0.equals("profiler_id")) {
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
                    case 1090594823:
                        if (e0.equals("release")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1102774726:
                        if (e0.equals("client_sdk")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1874684019:
                        if (e0.equals("platform")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1953158756:
                        if (e0.equals("sampled_profile")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 2005113901:
                        if (e0.equals("chunk_id")) {
                            c = 11;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        DebugMeta debugMeta = (DebugMeta) objectReader.z0(iLogger, new Object());
                        if (debugMeta == null) {
                            break;
                        } else {
                            profileChunk.j = debugMeta;
                            break;
                        }
                    case 1:
                        HashMap Q = objectReader.Q(iLogger, new Object());
                        if (Q == null) {
                            break;
                        } else {
                            profileChunk.n.putAll(Q);
                            break;
                        }
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        SentryProfile sentryProfile = (SentryProfile) objectReader.z0(iLogger, new Object());
                        if (sentryProfile == null) {
                            break;
                        } else {
                            profileChunk.v = sentryProfile;
                            break;
                        }
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        String L = objectReader.L();
                        if (L == null) {
                            break;
                        } else {
                            profileChunk.q = L;
                            break;
                        }
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        Double c0 = objectReader.c0();
                        if (c0 == null) {
                            break;
                        } else {
                            profileChunk.s = c0.doubleValue();
                            break;
                        }
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        SentryId sentryId2 = (SentryId) objectReader.z0(iLogger, new Object());
                        if (sentryId2 == null) {
                            break;
                        } else {
                            profileChunk.k = sentryId2;
                            break;
                        }
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        String L2 = objectReader.L();
                        if (L2 == null) {
                            break;
                        } else {
                            profileChunk.r = L2;
                            break;
                        }
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        String L3 = objectReader.L();
                        if (L3 == null) {
                            break;
                        } else {
                            profileChunk.p = L3;
                            break;
                        }
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        SdkVersion sdkVersion = (SdkVersion) objectReader.z0(iLogger, new Object());
                        if (sdkVersion == null) {
                            break;
                        } else {
                            profileChunk.m = sdkVersion;
                            break;
                        }
                    case KeyModifiers.a /* 9 */:
                        String L4 = objectReader.L();
                        if (L4 == null) {
                            break;
                        } else {
                            profileChunk.o = L4;
                            break;
                        }
                    case KeyModifiers.b /* 10 */:
                        String L5 = objectReader.L();
                        if (L5 == null) {
                            break;
                        } else {
                            profileChunk.u = L5;
                            break;
                        }
                    case 11:
                        SentryId sentryId3 = (SentryId) objectReader.z0(iLogger, new Object());
                        if (sentryId3 == null) {
                            break;
                        } else {
                            profileChunk.l = sentryId3;
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
            profileChunk.w = concurrentHashMap;
            objectReader.i0();
            return profileChunk;
        }
    }

    public ProfileChunk(SentryId sentryId, SentryId sentryId2, File file, Map map, Double d, String str, SentryOptions sentryOptions) {
        String str2;
        this.k = sentryId;
        this.l = sentryId2;
        this.t = file;
        this.n = map;
        this.m = sentryOptions.getSdkVersion();
        if (sentryOptions.getRelease() != null) {
            str2 = sentryOptions.getRelease();
        } else {
            str2 = "";
        }
        this.p = str2;
        this.q = sentryOptions.getEnvironment();
        this.o = str;
        this.r = "2";
        this.s = d.doubleValue();
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ProfileChunk) {
                ProfileChunk profileChunk = (ProfileChunk) obj;
                if (Objects.equals(this.j, profileChunk.j) && Objects.equals(this.k, profileChunk.k) && Objects.equals(this.l, profileChunk.l) && Objects.equals(this.m, profileChunk.m) && Objects.equals(this.n, profileChunk.n) && Objects.equals(this.o, profileChunk.o) && Objects.equals(this.p, profileChunk.p) && Objects.equals(this.q, profileChunk.q) && Objects.equals(this.r, profileChunk.r) && Objects.equals(this.u, profileChunk.u) && Objects.equals(this.w, profileChunk.w) && Objects.equals(this.v, profileChunk.v)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.u, this.v, this.w);
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("debug_meta");
            jsonObjectWriter.g(iLogger, this.j);
        }
        jsonObjectWriter.c("profiler_id");
        jsonObjectWriter.g(iLogger, this.k);
        jsonObjectWriter.c("chunk_id");
        jsonObjectWriter.g(iLogger, this.l);
        if (this.m != null) {
            jsonObjectWriter.c("client_sdk");
            jsonObjectWriter.g(iLogger, this.m);
        }
        Map map = this.n;
        if (!map.isEmpty()) {
            String str = jsonObjectWriter.a.m;
            jsonObjectWriter.d("");
            jsonObjectWriter.c("measurements");
            jsonObjectWriter.g(iLogger, map);
            jsonObjectWriter.d(str);
        }
        jsonObjectWriter.c("platform");
        jsonObjectWriter.g(iLogger, this.o);
        jsonObjectWriter.c("release");
        jsonObjectWriter.g(iLogger, this.p);
        if (this.q != null) {
            jsonObjectWriter.c("environment");
            jsonObjectWriter.g(iLogger, this.q);
        }
        jsonObjectWriter.c("version");
        jsonObjectWriter.g(iLogger, this.r);
        if (this.u != null) {
            jsonObjectWriter.c("sampled_profile");
            jsonObjectWriter.g(iLogger, this.u);
        }
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.g(iLogger, BigDecimal.valueOf(this.s).setScale(6, RoundingMode.DOWN));
        if (this.v != null) {
            jsonObjectWriter.c("profile");
            jsonObjectWriter.g(iLogger, this.v);
        }
        ConcurrentHashMap concurrentHashMap = this.w;
        if (concurrentHashMap != null) {
            for (String str2 : concurrentHashMap.keySet()) {
                jb.o(this.w, str2, jsonObjectWriter, str2, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
