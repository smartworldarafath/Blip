package com.google.android.datatransport.cct.internal;

import android.util.SparseArray;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class QosTier {
    public static final QosTier j;
    public static final /* synthetic */ QosTier[] k;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.QosTier] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.QosTier] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.QosTier] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.QosTier] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.QosTier] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, java.lang.Object, com.google.android.datatransport.cct.internal.QosTier] */
    static {
        ?? r0 = new Enum("DEFAULT", 0);
        j = r0;
        ?? r1 = new Enum("UNMETERED_ONLY", 1);
        ?? r2 = new Enum("UNMETERED_OR_DAILY", 2);
        ?? r3 = new Enum("FAST_IF_RADIO_AWAKE", 3);
        ?? r4 = new Enum("NEVER", 4);
        ?? r5 = new Enum("UNRECOGNIZED", 5);
        k = new QosTier[]{r0, r1, r2, r3, r4, r5};
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, r0);
        sparseArray.put(1, r1);
        sparseArray.put(2, r2);
        sparseArray.put(3, r3);
        sparseArray.put(4, r4);
        sparseArray.put(-1, r5);
    }

    public static QosTier valueOf(String str) {
        return (QosTier) Enum.valueOf(QosTier.class, str);
    }

    public static QosTier[] values() {
        return (QosTier[]) k.clone();
    }
}
