package io.sentry.protocol;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SdkInfo implements JsonSerializable {
    public String j;
    public Integer k;
    public Integer l;
    public Integer m;
    public HashMap n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SdkInfo> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, io.sentry.protocol.SdkInfo] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            ?? obj = new Object();
            objectReader.H0();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case 270207856:
                        if (e0.equals("sdk_name")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 696101379:
                        if (e0.equals("version_patchlevel")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1111241618:
                        if (e0.equals("version_major")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1111483790:
                        if (e0.equals("version_minor")) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.j = objectReader.L();
                        break;
                    case 1:
                        obj.m = objectReader.y();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.k = objectReader.y();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.l = objectReader.y();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                        break;
                }
            }
            objectReader.i0();
            obj.n = hashMap;
            return obj;
        }
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("sdk_name");
            jsonObjectWriter.j(this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("version_major");
            jsonObjectWriter.i(this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("version_minor");
            jsonObjectWriter.i(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("version_patchlevel");
            jsonObjectWriter.i(this.m);
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
