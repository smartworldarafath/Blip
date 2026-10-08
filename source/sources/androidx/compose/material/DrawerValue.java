package androidx.compose.material;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DrawerValue {
    public static final DrawerValue j;
    public static final /* synthetic */ DrawerValue[] k;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.material.DrawerValue] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.material.DrawerValue] */
    static {
        ?? r0 = new Enum("Closed", 0);
        j = r0;
        DrawerValue[] drawerValueArr = {r0, new Enum("Open", 1)};
        k = drawerValueArr;
        EnumEntriesKt.a(drawerValueArr);
    }

    public static DrawerValue valueOf(String str) {
        return (DrawerValue) Enum.valueOf(DrawerValue.class, str);
    }

    public static DrawerValue[] values() {
        return (DrawerValue[]) k.clone();
    }
}
