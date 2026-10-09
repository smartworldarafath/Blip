package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryEnvelopeItemHeader implements JsonSerializable {
    public final String j;
    public final Integer k;
    public final String l;
    public final String m;
    public final SentryItemType n;
    public final int o;
    public final Callable p;
    public final String q;
    public HashMap r;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryEnvelopeItemHeader> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:28:0x007e A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0084 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x008a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0098 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x009f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00a6 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ac A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0073 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r1v6, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            HashMap hashMap = null;
            SentryItemType sentryItemType = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            Integer num = null;
            int i = 0;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1966910237:
                        if (e0.equals("item_count")) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                num = objectReader.y();
                                break;
                            case 1:
                                i = objectReader.nextInt();
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                str2 = objectReader.L();
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                str3 = objectReader.L();
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                sentryItemType = (SentryItemType) objectReader.z0(iLogger, new Object());
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                str = objectReader.L();
                                break;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                str4 = objectReader.L();
                                break;
                            default:
                                if (hashMap == null) {
                                    hashMap = new HashMap();
                                }
                                objectReader.D(iLogger, hashMap, e0);
                                break;
                        }
                    case -1106363674:
                        if (e0.equals("length")) {
                            c = 1;
                        }
                        switch (c) {
                        }
                        break;
                    case -734768633:
                        if (e0.equals("filename")) {
                            c = 2;
                        }
                        switch (c) {
                        }
                        break;
                    case -672977706:
                        if (e0.equals("attachment_type")) {
                            c = 3;
                        }
                        switch (c) {
                        }
                        break;
                    case 3575610:
                        if (e0.equals("type")) {
                            c = 4;
                        }
                        switch (c) {
                        }
                        break;
                    case 831846208:
                        if (e0.equals("content_type")) {
                            c = 5;
                        }
                        switch (c) {
                        }
                        break;
                    case 1874684019:
                        if (e0.equals("platform")) {
                            c = 6;
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
            if (sentryItemType != null) {
                SentryEnvelopeItemHeader sentryEnvelopeItemHeader = new SentryEnvelopeItemHeader(sentryItemType, i, str, str2, str3, str4, num);
                sentryEnvelopeItemHeader.r = hashMap;
                objectReader.i0();
                return sentryEnvelopeItemHeader;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"type\"");
            iLogger.b(SentryLevel.ERROR, "Missing required field \"type\"", illegalStateException);
            throw illegalStateException;
        }
    }

    public SentryEnvelopeItemHeader(SentryItemType sentryItemType, Callable callable, String str, String str2, String str3, String str4, Integer num) {
        Objects.b(sentryItemType, "type is required");
        this.n = sentryItemType;
        this.j = str;
        this.o = -1;
        this.l = str2;
        this.p = callable;
        this.q = str3;
        this.m = str4;
        this.k = num;
    }

    public final int a() {
        Callable callable = this.p;
        if (callable != null) {
            try {
                return ((Integer) callable.call()).intValue();
            } catch (Throwable unused) {
                return -1;
            }
        }
        return this.o;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        String str = this.j;
        if (str != null) {
            jsonObjectWriter.c("content_type");
            jsonObjectWriter.j(str);
        }
        String str2 = this.l;
        if (str2 != null) {
            jsonObjectWriter.c("filename");
            jsonObjectWriter.j(str2);
        }
        jsonObjectWriter.c("type");
        jsonObjectWriter.g(iLogger, this.n);
        String str3 = this.q;
        if (str3 != null) {
            jsonObjectWriter.c("attachment_type");
            jsonObjectWriter.j(str3);
        }
        String str4 = this.m;
        if (str4 != null) {
            jsonObjectWriter.c("platform");
            jsonObjectWriter.j(str4);
        }
        Integer num = this.k;
        if (num != null) {
            jsonObjectWriter.c("item_count");
            jsonObjectWriter.i(num);
        }
        jsonObjectWriter.c("length");
        jsonObjectWriter.f(a());
        HashMap hashMap = this.r;
        if (hashMap != null) {
            for (String str5 : hashMap.keySet()) {
                jb.n(this.r, str5, jsonObjectWriter, str5, iLogger);
            }
        }
        jsonObjectWriter.b();
    }

    public SentryEnvelopeItemHeader(SentryItemType sentryItemType, Callable callable, String str, String str2, String str3) {
        this(sentryItemType, callable, str, str2, str3, (String) null, (Integer) null);
    }

    public SentryEnvelopeItemHeader(SentryItemType sentryItemType, int i, String str, String str2, String str3, String str4, Integer num) {
        this.n = sentryItemType;
        this.j = str;
        this.o = i;
        this.l = str2;
        this.p = null;
        this.q = str3;
        this.m = str4;
        this.k = num;
    }
}
