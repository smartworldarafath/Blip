package io.sentry.protocol;

import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import io.sentry.protocol.SentryId;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Feedback implements JsonSerializable {
    public String j;
    public String k;
    public String l;
    public SentryId m;
    public SentryId n;
    public String o;
    public AbstractMap p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<Feedback> {
        /* JADX WARN: Removed duplicated region for block: B:25:0x0071 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0076 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0080 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0085 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x008a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0066 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static Feedback b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            String str = null;
            String str2 = null;
            String str3 = null;
            SentryId sentryId = null;
            SentryId sentryId2 = null;
            String str4 = null;
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -964729863:
                        if (e0.equals("associated_event_id")) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                sentryId = SentryId.Deserializer.b(objectReader);
                                break;
                            case 1:
                                sentryId2 = SentryId.Deserializer.b(objectReader);
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                str4 = objectReader.L();
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                str3 = objectReader.L();
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                str2 = objectReader.L();
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                str = objectReader.L();
                                break;
                            default:
                                if (hashMap == null) {
                                    hashMap = new HashMap();
                                }
                                objectReader.D(iLogger, hashMap, e0);
                                break;
                        }
                    case -454767501:
                        if (e0.equals("replay_id")) {
                            c = 1;
                        }
                        switch (c) {
                        }
                        break;
                    case 116079:
                        if (e0.equals("url")) {
                            c = 2;
                        }
                        switch (c) {
                        }
                        break;
                    case 3373707:
                        if (e0.equals("name")) {
                            c = 3;
                        }
                        switch (c) {
                        }
                        break;
                    case 947010237:
                        if (e0.equals("contact_email")) {
                            c = 4;
                        }
                        switch (c) {
                        }
                        break;
                    case 954925063:
                        if (e0.equals("message")) {
                            c = 5;
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
            if (str != null) {
                Feedback feedback = new Feedback(str);
                feedback.k = str2;
                feedback.l = str3;
                feedback.m = sentryId;
                feedback.n = sentryId2;
                feedback.o = str4;
                feedback.p = hashMap;
                return feedback;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"message\"");
            iLogger.b(SentryLevel.ERROR, "Missing required field \"message\"", illegalStateException);
            throw illegalStateException;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    public Feedback(String str) {
        if (str.length() > 4096) {
            this.j = str.substring(0, 4096);
        } else {
            this.j = str;
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Feedback) {
                Feedback feedback = (Feedback) obj;
                if (Objects.a(this.j, feedback.j) && Objects.a(this.k, feedback.k) && Objects.a(this.l, feedback.l) && Objects.a(this.m, feedback.m) && Objects.a(this.n, feedback.n) && Objects.a(this.o, feedback.o) && Objects.a(this.p, feedback.p)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k, this.l, this.m, this.n, this.o, this.p});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("message");
        jsonObjectWriter.j(this.j);
        if (this.k != null) {
            jsonObjectWriter.c("contact_email");
            jsonObjectWriter.j(this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("name");
            jsonObjectWriter.j(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("associated_event_id");
            this.m.serialize(jsonObjectWriter, iLogger);
        }
        if (this.n != null) {
            jsonObjectWriter.c("replay_id");
            this.n.serialize(jsonObjectWriter, iLogger);
        }
        if (this.o != null) {
            jsonObjectWriter.c("url");
            jsonObjectWriter.j(this.o);
        }
        AbstractMap abstractMap = this.p;
        if (abstractMap != null) {
            for (String str : abstractMap.keySet()) {
                Object obj = this.p.get(str);
                jsonObjectWriter.c(str);
                jsonObjectWriter.g(iLogger, obj);
            }
        }
        jsonObjectWriter.b();
    }

    public final String toString() {
        return "Feedback{message='" + this.j + "', contactEmail='" + this.k + "', name='" + this.l + "', associatedEventId=" + this.m + ", replayId=" + this.n + ", url='" + this.o + "', unknown=" + this.p + '}';
    }
}
