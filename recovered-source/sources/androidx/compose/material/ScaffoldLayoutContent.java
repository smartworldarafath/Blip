package androidx.compose.material;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ScaffoldLayoutContent {
    public static final ScaffoldLayoutContent j;
    public static final ScaffoldLayoutContent k;
    public static final ScaffoldLayoutContent l;
    public static final ScaffoldLayoutContent m;
    public static final ScaffoldLayoutContent n;
    public static final /* synthetic */ ScaffoldLayoutContent[] o;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.material.ScaffoldLayoutContent] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.material.ScaffoldLayoutContent] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.material.ScaffoldLayoutContent] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.compose.material.ScaffoldLayoutContent] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.compose.material.ScaffoldLayoutContent] */
    static {
        ?? r0 = new Enum("TopBar", 0);
        j = r0;
        ?? r1 = new Enum("MainContent", 1);
        k = r1;
        ?? r2 = new Enum("Snackbar", 2);
        l = r2;
        ?? r3 = new Enum("Fab", 3);
        m = r3;
        ?? r4 = new Enum("BottomBar", 4);
        n = r4;
        ScaffoldLayoutContent[] scaffoldLayoutContentArr = {r0, r1, r2, r3, r4};
        o = scaffoldLayoutContentArr;
        EnumEntriesKt.a(scaffoldLayoutContentArr);
    }

    public static ScaffoldLayoutContent valueOf(String str) {
        return (ScaffoldLayoutContent) Enum.valueOf(ScaffoldLayoutContent.class, str);
    }

    public static ScaffoldLayoutContent[] values() {
        return (ScaffoldLayoutContent[]) o.clone();
    }
}
