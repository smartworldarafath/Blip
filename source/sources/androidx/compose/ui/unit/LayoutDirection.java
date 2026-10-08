package androidx.compose.ui.unit;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayoutDirection {
    public static final LayoutDirection j;
    public static final LayoutDirection k;
    public static final /* synthetic */ LayoutDirection[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.unit.LayoutDirection] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.unit.LayoutDirection] */
    static {
        ?? r0 = new Enum("Ltr", 0);
        j = r0;
        ?? r1 = new Enum("Rtl", 1);
        k = r1;
        LayoutDirection[] layoutDirectionArr = {r0, r1};
        l = layoutDirectionArr;
        EnumEntriesKt.a(layoutDirectionArr);
    }

    public static LayoutDirection valueOf(String str) {
        return (LayoutDirection) Enum.valueOf(LayoutDirection.class, str);
    }

    public static LayoutDirection[] values() {
        return (LayoutDirection[]) l.clone();
    }
}
