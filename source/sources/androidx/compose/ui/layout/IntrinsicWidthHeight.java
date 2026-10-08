package androidx.compose.ui.layout;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntrinsicWidthHeight {
    public static final IntrinsicWidthHeight j;
    public static final IntrinsicWidthHeight k;
    public static final /* synthetic */ IntrinsicWidthHeight[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.layout.IntrinsicWidthHeight] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.layout.IntrinsicWidthHeight] */
    static {
        ?? r0 = new Enum("Width", 0);
        j = r0;
        ?? r1 = new Enum("Height", 1);
        k = r1;
        IntrinsicWidthHeight[] intrinsicWidthHeightArr = {r0, r1};
        l = intrinsicWidthHeightArr;
        EnumEntriesKt.a(intrinsicWidthHeightArr);
    }

    public static IntrinsicWidthHeight valueOf(String str) {
        return (IntrinsicWidthHeight) Enum.valueOf(IntrinsicWidthHeight.class, str);
    }

    public static IntrinsicWidthHeight[] values() {
        return (IntrinsicWidthHeight[]) l.clone();
    }
}
