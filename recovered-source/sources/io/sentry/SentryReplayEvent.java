package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.SentryBaseEvent;
import io.sentry.protocol.SentryId;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryReplayEvent extends SentryBaseEvent implements JsonSerializable {
    public int C;
    public Date E;
    public HashMap I;
    public File y;
    public SentryId B = new SentryId();
    public String z = "replay_event";
    public ReplayType A = ReplayType.SESSION;
    public List G = new ArrayList();
    public List H = new ArrayList();
    public List F = new ArrayList();
    public Date D = DateUtils.b();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryReplayEvent> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00a5 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00ab A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00b8 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00c0 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00c8 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00ce A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00d6 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00dc A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00e2 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0093 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r1v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            SentryReplayEvent sentryReplayEvent = new SentryReplayEvent();
            objectReader.H0();
            String str = null;
            ReplayType replayType = null;
            Integer num = null;
            Date date = null;
            HashMap hashMap = null;
            SentryId sentryId = null;
            Date date2 = null;
            List list = null;
            List list2 = null;
            List list3 = null;
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
                                sentryId = (SentryId) objectReader.z0(iLogger, new Object());
                                break;
                            case 1:
                                date2 = objectReader.k0(iLogger);
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                str = objectReader.L();
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                list = (List) objectReader.G0();
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                date = objectReader.k0(iLogger);
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                list2 = (List) objectReader.G0();
                                break;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                list3 = (List) objectReader.G0();
                                break;
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                replayType = (ReplayType) objectReader.z0(iLogger, new Object());
                                break;
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                num = objectReader.y();
                                break;
                            default:
                                if (!SentryBaseEvent.Deserializer.a(sentryReplayEvent, e0, objectReader, iLogger)) {
                                    if (hashMap == null) {
                                        hashMap = new HashMap();
                                    }
                                    objectReader.D(iLogger, hashMap, e0);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    case -264026847:
                        if (e0.equals("replay_start_timestamp")) {
                            c = 1;
                        }
                        switch (c) {
                        }
                        break;
                    case 3575610:
                        if (e0.equals("type")) {
                            c = 2;
                        }
                        switch (c) {
                        }
                        break;
                    case 3598564:
                        if (e0.equals("urls")) {
                            c = 3;
                        }
                        switch (c) {
                        }
                        break;
                    case 55126294:
                        if (e0.equals("timestamp")) {
                            c = 4;
                        }
                        switch (c) {
                        }
                        break;
                    case 329864193:
                        if (e0.equals("error_ids")) {
                            c = 5;
                        }
                        switch (c) {
                        }
                        break;
                    case 724602046:
                        if (e0.equals("trace_ids")) {
                            c = 6;
                        }
                        switch (c) {
                        }
                        break;
                    case 1055447186:
                        if (e0.equals("replay_type")) {
                            c = 7;
                        }
                        switch (c) {
                        }
                        break;
                    case 1077649831:
                        if (e0.equals("segment_id")) {
                            c = '\b';
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
                sentryReplayEvent.z = str;
            }
            if (replayType != null) {
                sentryReplayEvent.A = replayType;
            }
            if (num != null) {
                sentryReplayEvent.C = num.intValue();
            }
            if (date != null) {
                sentryReplayEvent.D = date;
            }
            sentryReplayEvent.B = sentryId;
            sentryReplayEvent.E = date2;
            sentryReplayEvent.F = list;
            sentryReplayEvent.G = list2;
            sentryReplayEvent.H = list3;
            sentryReplayEvent.I = hashMap;
            return sentryReplayEvent;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum ReplayType implements JsonSerializable {
        SESSION,
        BUFFER;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Deserializer implements JsonDeserializer<ReplayType> {
            @Override // io.sentry.JsonDeserializer
            public final Object a(ObjectReader objectReader, ILogger iLogger) {
                return ReplayType.valueOf(objectReader.r().toUpperCase(Locale.ROOT));
            }
        }

        @Override // io.sentry.JsonSerializable
        public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
            ((JsonObjectWriter) objectWriter).j(name().toLowerCase(Locale.ROOT));
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SentryReplayEvent.class == obj.getClass()) {
            SentryReplayEvent sentryReplayEvent = (SentryReplayEvent) obj;
            if (this.C == sentryReplayEvent.C && Objects.a(this.z, sentryReplayEvent.z) && this.A == sentryReplayEvent.A && Objects.a(this.B, sentryReplayEvent.B) && Objects.a(this.F, sentryReplayEvent.F) && Objects.a(this.G, sentryReplayEvent.G) && Objects.a(this.H, sentryReplayEvent.H)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.z, this.A, this.B, Integer.valueOf(this.C), this.F, this.G, this.H});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("type");
        jsonObjectWriter.j(this.z);
        jsonObjectWriter.c("replay_type");
        jsonObjectWriter.g(iLogger, this.A);
        jsonObjectWriter.c("segment_id");
        jsonObjectWriter.f(this.C);
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.g(iLogger, this.D);
        if (this.B != null) {
            jsonObjectWriter.c("replay_id");
            jsonObjectWriter.g(iLogger, this.B);
        }
        if (this.E != null) {
            jsonObjectWriter.c("replay_start_timestamp");
            jsonObjectWriter.g(iLogger, this.E);
        }
        if (this.F != null) {
            jsonObjectWriter.c("urls");
            jsonObjectWriter.g(iLogger, this.F);
        }
        if (this.G != null) {
            jsonObjectWriter.c("error_ids");
            jsonObjectWriter.g(iLogger, this.G);
        }
        if (this.H != null) {
            jsonObjectWriter.c("trace_ids");
            jsonObjectWriter.g(iLogger, this.H);
        }
        SentryBaseEvent.Serializer.a(this, jsonObjectWriter, iLogger);
        HashMap hashMap = this.I;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.I, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
