package androidx.compose.foundation.text.selection;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CrossStatus {
    public static final CrossStatus j;
    public static final CrossStatus k;
    public static final CrossStatus l;
    public static final /* synthetic */ CrossStatus[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.foundation.text.selection.CrossStatus] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.foundation.text.selection.CrossStatus] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.foundation.text.selection.CrossStatus] */
    static {
        ?? r0 = new Enum("CROSSED", 0);
        j = r0;
        ?? r1 = new Enum("NOT_CROSSED", 1);
        k = r1;
        ?? r2 = new Enum("COLLAPSED", 2);
        l = r2;
        CrossStatus[] crossStatusArr = {r0, r1, r2};
        m = crossStatusArr;
        EnumEntriesKt.a(crossStatusArr);
    }

    public static CrossStatus valueOf(String str) {
        return (CrossStatus) Enum.valueOf(CrossStatus.class, str);
    }

    public static CrossStatus[] values() {
        return (CrossStatus[]) m.clone();
    }
}
