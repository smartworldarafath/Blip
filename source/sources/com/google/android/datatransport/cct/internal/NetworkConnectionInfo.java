package com.google.android.datatransport.cct.internal;

import android.util.SparseArray;
import com.google.auto.value.AutoValue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class NetworkConnectionInfo {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public abstract NetworkConnectionInfo a();

        public abstract Builder b(MobileSubtype mobileSubtype);

        public abstract Builder c(NetworkType networkType);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MobileSubtype {
        public static final SparseArray j;
        public static final /* synthetic */ MobileSubtype[] k;

        /* JADX INFO: Fake field, exist only in values array */
        MobileSubtype EF1;

        /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r15v3, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype, java.lang.Object] */
        static {
            ?? r1 = new Enum("UNKNOWN_MOBILE_SUBTYPE", 0);
            ?? r2 = new Enum("GPRS", 1);
            ?? r3 = new Enum("EDGE", 2);
            ?? r4 = new Enum("UMTS", 3);
            ?? r5 = new Enum("CDMA", 4);
            ?? r6 = new Enum("EVDO_0", 5);
            ?? r7 = new Enum("EVDO_A", 6);
            ?? r8 = new Enum("RTT", 7);
            ?? r9 = new Enum("HSDPA", 8);
            ?? r10 = new Enum("HSUPA", 9);
            ?? r11 = new Enum("HSPA", 10);
            ?? r12 = new Enum("IDEN", 11);
            ?? r13 = new Enum("EVDO_B", 12);
            ?? r14 = new Enum("LTE", 13);
            ?? r15 = new Enum("EHRPD", 14);
            ?? r0 = new Enum("HSPAP", 15);
            ?? r16 = new Enum("GSM", 16);
            ?? r22 = new Enum("TD_SCDMA", 17);
            ?? r02 = new Enum("IWLAN", 18);
            ?? r17 = new Enum("LTE_CA", 19);
            k = new MobileSubtype[]{r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r0, r16, r22, r02, r17, new Enum("COMBINED", 20)};
            SparseArray sparseArray = new SparseArray();
            j = sparseArray;
            sparseArray.put(0, r1);
            sparseArray.put(1, r2);
            sparseArray.put(2, r3);
            sparseArray.put(3, r4);
            sparseArray.put(4, r5);
            sparseArray.put(5, r6);
            sparseArray.put(6, r7);
            sparseArray.put(7, r8);
            sparseArray.put(8, r9);
            sparseArray.put(9, r10);
            sparseArray.put(10, r11);
            sparseArray.put(11, r12);
            sparseArray.put(12, r13);
            sparseArray.put(13, r14);
            sparseArray.put(14, r15);
            sparseArray.put(15, r0);
            sparseArray.put(16, r16);
            sparseArray.put(17, r22);
            sparseArray.put(18, r02);
            sparseArray.put(19, r17);
        }

        public static MobileSubtype valueOf(String str) {
            return (MobileSubtype) Enum.valueOf(MobileSubtype.class, str);
        }

        public static MobileSubtype[] values() {
            return (MobileSubtype[]) k.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NetworkType {
        public static final SparseArray j;
        public static final /* synthetic */ NetworkType[] k;

        /* JADX INFO: Fake field, exist only in values array */
        NetworkType EF1;

        /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r15v3, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.NetworkConnectionInfo$NetworkType] */
        static {
            ?? r1 = new Enum("MOBILE", 0);
            ?? r2 = new Enum("WIFI", 1);
            ?? r3 = new Enum("MOBILE_MMS", 2);
            ?? r4 = new Enum("MOBILE_SUPL", 3);
            ?? r5 = new Enum("MOBILE_DUN", 4);
            ?? r6 = new Enum("MOBILE_HIPRI", 5);
            ?? r7 = new Enum("WIMAX", 6);
            ?? r8 = new Enum("BLUETOOTH", 7);
            ?? r9 = new Enum("DUMMY", 8);
            ?? r10 = new Enum("ETHERNET", 9);
            ?? r11 = new Enum("MOBILE_FOTA", 10);
            ?? r12 = new Enum("MOBILE_IMS", 11);
            ?? r13 = new Enum("MOBILE_CBS", 12);
            ?? r14 = new Enum("WIFI_P2P", 13);
            ?? r15 = new Enum("MOBILE_IA", 14);
            ?? r0 = new Enum("MOBILE_EMERGENCY", 15);
            ?? r16 = new Enum("PROXY", 16);
            ?? r22 = new Enum("VPN", 17);
            ?? r02 = new Enum("NONE", 18);
            k = new NetworkType[]{r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r0, r16, r22, r02};
            SparseArray sparseArray = new SparseArray();
            j = sparseArray;
            sparseArray.put(0, r1);
            sparseArray.put(1, r2);
            sparseArray.put(2, r3);
            sparseArray.put(3, r4);
            sparseArray.put(4, r5);
            sparseArray.put(5, r6);
            sparseArray.put(6, r7);
            sparseArray.put(7, r8);
            sparseArray.put(8, r9);
            sparseArray.put(9, r10);
            sparseArray.put(10, r11);
            sparseArray.put(11, r12);
            sparseArray.put(12, r13);
            sparseArray.put(13, r14);
            sparseArray.put(14, r15);
            sparseArray.put(15, r0);
            sparseArray.put(16, r16);
            sparseArray.put(17, r22);
            sparseArray.put(-1, r02);
        }

        public static NetworkType valueOf(String str) {
            return (NetworkType) Enum.valueOf(NetworkType.class, str);
        }

        public static NetworkType[] values() {
            return (NetworkType[]) k.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.cct.internal.NetworkConnectionInfo$Builder, java.lang.Object] */
    public static Builder a() {
        return new Object();
    }
}
