package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryId;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.Date;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryEnvelopeHeader implements JsonSerializable {
    public final SentryId j;
    public final SdkVersion k;
    public final TraceContext l;
    public Date m;
    public HashMap n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryEnvelopeHeader> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001c. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r7v3, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            SentryId sentryId = null;
            SdkVersion sdkVersion = null;
            TraceContext traceContext = null;
            Date date = null;
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case 113722:
                        if (e0.equals("sdk")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 110620997:
                        if (e0.equals("trace")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 278118624:
                        if (e0.equals("event_id")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1980389946:
                        if (e0.equals("sent_at")) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        sdkVersion = (SdkVersion) objectReader.z0(iLogger, new Object());
                        break;
                    case 1:
                        traceContext = (TraceContext) objectReader.z0(iLogger, new Object());
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        sentryId = (SentryId) objectReader.z0(iLogger, new Object());
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        date = objectReader.k0(iLogger);
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                        break;
                }
            }
            SentryEnvelopeHeader sentryEnvelopeHeader = new SentryEnvelopeHeader(sentryId, sdkVersion, traceContext);
            sentryEnvelopeHeader.m = date;
            sentryEnvelopeHeader.n = hashMap;
            objectReader.i0();
            return sentryEnvelopeHeader;
        }
    }

    public SentryEnvelopeHeader(SentryId sentryId, SdkVersion sdkVersion, TraceContext traceContext) {
        this.j = sentryId;
        this.k = sdkVersion;
        this.l = traceContext;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        SentryId sentryId = this.j;
        if (sentryId != null) {
            jsonObjectWriter.c("event_id");
            jsonObjectWriter.g(iLogger, sentryId);
        }
        SdkVersion sdkVersion = this.k;
        if (sdkVersion != null) {
            jsonObjectWriter.c("sdk");
            jsonObjectWriter.g(iLogger, sdkVersion);
        }
        TraceContext traceContext = this.l;
        if (traceContext != null) {
            jsonObjectWriter.c("trace");
            jsonObjectWriter.g(iLogger, traceContext);
        }
        if (this.m != null) {
            jsonObjectWriter.c("sent_at");
            jsonObjectWriter.g(iLogger, DateUtils.f(this.m));
        }
        HashMap hashMap = this.n;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.n, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
