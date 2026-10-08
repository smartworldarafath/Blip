package com.google.firebase.installations.remote;

import com.google.auto.value.AutoValue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class InstallationResponse {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ResponseCode {
        public static final ResponseCode j;
        public static final ResponseCode k;
        public static final /* synthetic */ ResponseCode[] l;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.firebase.installations.remote.InstallationResponse$ResponseCode] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.firebase.installations.remote.InstallationResponse$ResponseCode] */
        static {
            ?? r0 = new Enum("OK", 0);
            j = r0;
            ?? r1 = new Enum("BAD_CONFIG", 1);
            k = r1;
            l = new ResponseCode[]{r0, r1};
        }

        public static ResponseCode valueOf(String str) {
            return (ResponseCode) Enum.valueOf(ResponseCode.class, str);
        }

        public static ResponseCode[] values() {
            return (ResponseCode[]) l.clone();
        }
    }

    public abstract TokenResult a();

    public abstract String b();

    public abstract String c();

    public abstract ResponseCode d();
}
