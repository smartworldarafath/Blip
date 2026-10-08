package androidx.compose.foundation.text.selection;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DownResolution {
    public static final DownResolution j;
    public static final DownResolution k;
    public static final DownResolution l;
    public static final DownResolution m;
    public static final /* synthetic */ DownResolution[] n;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.foundation.text.selection.DownResolution] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.foundation.text.selection.DownResolution] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.foundation.text.selection.DownResolution] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.compose.foundation.text.selection.DownResolution] */
    static {
        ?? r0 = new Enum("Up", 0);
        j = r0;
        ?? r1 = new Enum("Drag", 1);
        k = r1;
        ?? r2 = new Enum("Timeout", 2);
        l = r2;
        ?? r3 = new Enum("Cancel", 3);
        m = r3;
        DownResolution[] downResolutionArr = {r0, r1, r2, r3};
        n = downResolutionArr;
        EnumEntriesKt.a(downResolutionArr);
    }

    public static DownResolution valueOf(String str) {
        return (DownResolution) Enum.valueOf(DownResolution.class, str);
    }

    public static DownResolution[] values() {
        return (DownResolution[]) n.clone();
    }
}
