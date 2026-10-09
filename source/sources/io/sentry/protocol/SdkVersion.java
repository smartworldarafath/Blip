package io.sentry.protocol;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SentryLevel;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SdkVersion implements JsonSerializable {
    public String j;
    public String k;
    public CopyOnWriteArraySet l;
    public CopyOnWriteArraySet m;
    public HashMap n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SdkVersion> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0061 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x006d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x007c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0081 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0056 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r4v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            objectReader.H0();
            String str = null;
            String str2 = null;
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case 3373707:
                        if (e0.equals("name")) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                str = objectReader.r();
                                break;
                            case 1:
                                str2 = objectReader.r();
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                ArrayList R0 = objectReader.R0(iLogger, new Object());
                                if (R0 == null) {
                                    break;
                                } else {
                                    arrayList.addAll(R0);
                                    break;
                                }
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                List list = (List) objectReader.G0();
                                if (list == null) {
                                    break;
                                } else {
                                    arrayList2.addAll(list);
                                    break;
                                }
                            default:
                                if (hashMap == null) {
                                    hashMap = new HashMap();
                                }
                                objectReader.D(iLogger, hashMap, e0);
                                break;
                        }
                    case 351608024:
                        if (e0.equals("version")) {
                            c = 1;
                        }
                        switch (c) {
                        }
                        break;
                    case 750867693:
                        if (e0.equals("packages")) {
                            c = 2;
                        }
                        switch (c) {
                        }
                        break;
                    case 1487029535:
                        if (e0.equals("integrations")) {
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
            if (str != null) {
                if (str2 != null) {
                    SdkVersion sdkVersion = new SdkVersion(str, str2);
                    sdkVersion.l = new CopyOnWriteArraySet(arrayList);
                    sdkVersion.m = new CopyOnWriteArraySet(arrayList2);
                    sdkVersion.n = hashMap;
                    return sdkVersion;
                }
                IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"version\"");
                iLogger.b(SentryLevel.ERROR, "Missing required field \"version\"", illegalStateException);
                throw illegalStateException;
            }
            IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"name\"");
            iLogger.b(SentryLevel.ERROR, "Missing required field \"name\"", illegalStateException2);
            throw illegalStateException2;
        }
    }

    public SdkVersion(String str, String str2) {
        this.j = str;
        this.k = str2;
    }

    public final String a() {
        return this.j;
    }

    public final String b() {
        return this.k;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SdkVersion.class == obj.getClass()) {
            SdkVersion sdkVersion = (SdkVersion) obj;
            if (this.j.equals(sdkVersion.j) && this.k.equals(sdkVersion.k)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("name");
        jsonObjectWriter.j(this.j);
        jsonObjectWriter.c("version");
        jsonObjectWriter.j(this.k);
        CopyOnWriteArraySet copyOnWriteArraySet = this.l;
        if (copyOnWriteArraySet == null) {
            copyOnWriteArraySet = SentryIntegrationPackageStorage.d().b;
        }
        CopyOnWriteArraySet copyOnWriteArraySet2 = this.m;
        if (copyOnWriteArraySet2 == null) {
            copyOnWriteArraySet2 = SentryIntegrationPackageStorage.d().a;
        }
        if (!copyOnWriteArraySet.isEmpty()) {
            jsonObjectWriter.c("packages");
            jsonObjectWriter.g(iLogger, copyOnWriteArraySet);
        }
        if (!copyOnWriteArraySet2.isEmpty()) {
            jsonObjectWriter.c("integrations");
            jsonObjectWriter.g(iLogger, copyOnWriteArraySet2);
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
