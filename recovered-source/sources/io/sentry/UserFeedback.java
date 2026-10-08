package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.q;
import io.sentry.protocol.SentryId;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public final class UserFeedback implements JsonSerializable {
    public final SentryId j;
    public final String k;
    public final String l;
    public final String m;
    public HashMap n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<UserFeedback> {
        /* JADX WARN: Removed duplicated region for block: B:19:0x0059 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x005e A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0063 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0068 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x004e A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            SentryId sentryId = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -602415628:
                        if (e0.equals("comments")) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                str3 = objectReader.L();
                                break;
                            case 1:
                                str = objectReader.L();
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                str2 = objectReader.L();
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                sentryId = SentryId.Deserializer.b(objectReader);
                                break;
                            default:
                                if (hashMap == null) {
                                    hashMap = new HashMap();
                                }
                                objectReader.D(iLogger, hashMap, e0);
                                break;
                        }
                    case 3373707:
                        if (e0.equals("name")) {
                            c = 1;
                        }
                        switch (c) {
                        }
                        break;
                    case 96619420:
                        if (e0.equals("email")) {
                            c = 2;
                        }
                        switch (c) {
                        }
                        break;
                    case 278118624:
                        if (e0.equals("event_id")) {
                            c = 3;
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
            objectReader.i0();
            if (sentryId != null) {
                UserFeedback userFeedback = new UserFeedback(sentryId, str, str2, str3);
                userFeedback.n = hashMap;
                return userFeedback;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"event_id\"");
            iLogger.b(SentryLevel.ERROR, "Missing required field \"event_id\"", illegalStateException);
            throw illegalStateException;
        }
    }

    public UserFeedback(SentryId sentryId, String str, String str2, String str3) {
        this.j = sentryId;
        this.k = str;
        this.l = str2;
        this.m = str3;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("event_id");
        this.j.serialize(jsonObjectWriter, iLogger);
        String str = this.k;
        if (str != null) {
            jsonObjectWriter.c("name");
            jsonObjectWriter.j(str);
        }
        String str2 = this.l;
        if (str2 != null) {
            jsonObjectWriter.c("email");
            jsonObjectWriter.j(str2);
        }
        String str3 = this.m;
        if (str3 != null) {
            jsonObjectWriter.c("comments");
            jsonObjectWriter.j(str3);
        }
        HashMap hashMap = this.n;
        if (hashMap != null) {
            for (String str4 : hashMap.keySet()) {
                jb.n(this.n, str4, jsonObjectWriter, str4, iLogger);
            }
        }
        jsonObjectWriter.b();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("UserFeedback{eventId=");
        sb.append(this.j);
        sb.append(", name='");
        sb.append(this.k);
        sb.append("', email='");
        sb.append(this.l);
        sb.append("', comments='");
        return q.l(sb, this.m, "'}");
    }
}
