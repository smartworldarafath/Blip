package kotlinx.serialization.json;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ClassDiscriminatorMode {
    public static final ClassDiscriminatorMode j;
    public static final ClassDiscriminatorMode k;
    public static final ClassDiscriminatorMode l;
    public static final /* synthetic */ ClassDiscriminatorMode[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.serialization.json.ClassDiscriminatorMode] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlinx.serialization.json.ClassDiscriminatorMode] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, kotlinx.serialization.json.ClassDiscriminatorMode] */
    static {
        ?? r0 = new Enum("NONE", 0);
        j = r0;
        ?? r1 = new Enum("ALL_JSON_OBJECTS", 1);
        k = r1;
        ?? r2 = new Enum("POLYMORPHIC", 2);
        l = r2;
        ClassDiscriminatorMode[] classDiscriminatorModeArr = {r0, r1, r2};
        m = classDiscriminatorModeArr;
        EnumEntriesKt.a(classDiscriminatorModeArr);
    }

    public static ClassDiscriminatorMode valueOf(String str) {
        return (ClassDiscriminatorMode) Enum.valueOf(ClassDiscriminatorMode.class, str);
    }

    public static ClassDiscriminatorMode[] values() {
        return (ClassDiscriminatorMode[]) m.clone();
    }
}
