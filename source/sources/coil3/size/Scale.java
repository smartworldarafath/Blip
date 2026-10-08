package coil3.size;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Scale {
    public static final Scale j;
    public static final Scale k;
    public static final /* synthetic */ Scale[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, coil3.size.Scale] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, coil3.size.Scale] */
    static {
        ?? r0 = new Enum("FILL", 0);
        j = r0;
        ?? r1 = new Enum("FIT", 1);
        k = r1;
        Scale[] scaleArr = {r0, r1};
        l = scaleArr;
        EnumEntriesKt.a(scaleArr);
    }

    public static Scale valueOf(String str) {
        return (Scale) Enum.valueOf(Scale.class, str);
    }

    public static Scale[] values() {
        return (Scale[]) l.clone();
    }
}
