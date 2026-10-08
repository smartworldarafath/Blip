package io.sentry;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.q;
import io.sentry.protocol.SentryId;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TraceContext implements JsonSerializable {
    public final SentryId j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final SentryId s;
    public ConcurrentHashMap t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<TraceContext> {
        public static IllegalStateException b(String str, ILogger iLogger) {
            String i = q.i("Missing required field \"", str, "\"");
            IllegalStateException illegalStateException = new IllegalStateException(i);
            iLogger.b(SentryLevel.ERROR, i, illegalStateException);
            return illegalStateException;
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x00b6 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00bf A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00c8 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00d1 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00da A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00e3 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00ec A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00f5 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00fe A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0107 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x00a8 A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            ConcurrentHashMap concurrentHashMap = null;
            SentryId sentryId = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            SentryId sentryId2 = null;
            String str8 = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -454767501:
                        if (e0.equals("replay_id")) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                sentryId2 = SentryId.Deserializer.b(objectReader);
                                break;
                            case 1:
                                str4 = objectReader.L();
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                str3 = objectReader.L();
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                str8 = objectReader.L();
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                str6 = objectReader.L();
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                str2 = objectReader.L();
                                break;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                sentryId = SentryId.Deserializer.b(objectReader);
                                break;
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                str7 = objectReader.L();
                                break;
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                str = objectReader.r();
                                break;
                            case KeyModifiers.a /* 9 */:
                                str5 = objectReader.L();
                                break;
                            default:
                                if (concurrentHashMap == null) {
                                    concurrentHashMap = new ConcurrentHashMap();
                                }
                                objectReader.D(iLogger, concurrentHashMap, e0);
                                break;
                        }
                    case -147132913:
                        if (e0.equals("user_id")) {
                            c = 1;
                        }
                        switch (c) {
                        }
                        break;
                    case -85904877:
                        if (e0.equals("environment")) {
                            c = 2;
                        }
                        switch (c) {
                        }
                        break;
                    case 153192858:
                        if (e0.equals("sample_rand")) {
                            c = 3;
                        }
                        switch (c) {
                        }
                        break;
                    case 153193045:
                        if (e0.equals("sample_rate")) {
                            c = 4;
                        }
                        switch (c) {
                        }
                        break;
                    case 1090594823:
                        if (e0.equals("release")) {
                            c = 5;
                        }
                        switch (c) {
                        }
                        break;
                    case 1270300245:
                        if (e0.equals("trace_id")) {
                            c = 6;
                        }
                        switch (c) {
                        }
                        break;
                    case 1864843258:
                        if (e0.equals("sampled")) {
                            c = 7;
                        }
                        switch (c) {
                        }
                        break;
                    case 1904812937:
                        if (e0.equals("public_key")) {
                            c = '\b';
                        }
                        switch (c) {
                        }
                        break;
                    case 2141246174:
                        if (e0.equals("transaction")) {
                            c = '\t';
                        }
                        switch (c) {
                        }
                        break;
                    default:
                        switch (c) {
                        }
                        break;
                }
            }
            if (sentryId != null) {
                if (str != null) {
                    TraceContext traceContext = new TraceContext(sentryId, str, str2, str3, str4, str5, str6, str7, sentryId2, str8);
                    traceContext.t = concurrentHashMap;
                    objectReader.i0();
                    return traceContext;
                }
                throw b("public_key", iLogger);
            }
            throw b("trace_id", iLogger);
        }
    }

    public TraceContext(SentryId sentryId, String str, String str2, String str3, String str4, String str5, String str6, String str7, SentryId sentryId2, String str8) {
        this.j = sentryId;
        this.k = str;
        this.l = str2;
        this.m = str3;
        this.n = str4;
        this.o = str5;
        this.p = str6;
        this.r = str7;
        this.s = sentryId2;
        this.q = str8;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("trace_id");
        jsonObjectWriter.g(iLogger, this.j);
        jsonObjectWriter.c("public_key");
        jsonObjectWriter.j(this.k);
        String str = this.l;
        if (str != null) {
            jsonObjectWriter.c("release");
            jsonObjectWriter.j(str);
        }
        String str2 = this.m;
        if (str2 != null) {
            jsonObjectWriter.c("environment");
            jsonObjectWriter.j(str2);
        }
        String str3 = this.n;
        if (str3 != null) {
            jsonObjectWriter.c("user_id");
            jsonObjectWriter.j(str3);
        }
        String str4 = this.o;
        if (str4 != null) {
            jsonObjectWriter.c("transaction");
            jsonObjectWriter.j(str4);
        }
        String str5 = this.p;
        if (str5 != null) {
            jsonObjectWriter.c("sample_rate");
            jsonObjectWriter.j(str5);
        }
        String str6 = this.q;
        if (str6 != null) {
            jsonObjectWriter.c("sample_rand");
            jsonObjectWriter.j(str6);
        }
        String str7 = this.r;
        if (str7 != null) {
            jsonObjectWriter.c("sampled");
            jsonObjectWriter.j(str7);
        }
        SentryId sentryId = this.s;
        if (sentryId != null) {
            jsonObjectWriter.c("replay_id");
            jsonObjectWriter.g(iLogger, sentryId);
        }
        ConcurrentHashMap concurrentHashMap = this.t;
        if (concurrentHashMap != null) {
            for (String str8 : concurrentHashMap.keySet()) {
                jb.o(this.t, str8, jsonObjectWriter, str8, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
