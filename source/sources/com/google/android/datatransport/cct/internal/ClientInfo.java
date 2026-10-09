package com.google.android.datatransport.cct.internal;

import com.google.auto.value.AutoValue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class ClientInfo {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public abstract ClientInfo a();

        public abstract Builder b(AndroidClientInfo androidClientInfo);

        public abstract Builder c();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ClientType {
        public static final ClientType j;
        public static final /* synthetic */ ClientType[] k;

        /* JADX INFO: Fake field, exist only in values array */
        ClientType EF0;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.ClientInfo$ClientType] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.ClientInfo$ClientType] */
        static {
            ?? r0 = new Enum("UNKNOWN", 0);
            ?? r1 = new Enum("ANDROID_FIREBASE", 1);
            j = r1;
            k = new ClientType[]{r0, r1};
        }

        public static ClientType valueOf(String str) {
            return (ClientType) Enum.valueOf(ClientType.class, str);
        }

        public static ClientType[] values() {
            return (ClientType[]) k.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.cct.internal.ClientInfo$Builder] */
    public static Builder a() {
        return new Object();
    }
}
