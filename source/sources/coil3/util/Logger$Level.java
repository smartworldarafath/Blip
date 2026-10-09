package coil3.util;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Logger$Level {
    public static final /* synthetic */ Logger$Level[] j;

    /* JADX WARN: Type inference failed for: r0v0, types: [coil3.util.Logger$Level, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [coil3.util.Logger$Level, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [coil3.util.Logger$Level, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v2, types: [coil3.util.Logger$Level, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r4v2, types: [coil3.util.Logger$Level, java.lang.Enum] */
    static {
        Logger$Level[] logger$LevelArr = {new Enum("Verbose", 0), new Enum("Debug", 1), new Enum("Info", 2), new Enum("Warn", 3), new Enum("Error", 4)};
        j = logger$LevelArr;
        EnumEntriesKt.a(logger$LevelArr);
    }

    public static Logger$Level valueOf(String str) {
        return (Logger$Level) Enum.valueOf(Logger$Level.class, str);
    }

    public static Logger$Level[] values() {
        return (Logger$Level[]) j.clone();
    }
}
