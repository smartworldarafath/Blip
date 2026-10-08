package net.blip.libblip;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LogLevel {
    public static final LogLevel k;
    public static final LogLevel l;
    public static final LogLevel m;
    public static final LogLevel n;
    public static final /* synthetic */ LogLevel[] o;
    public final int j;

    static {
        LogLevel logLevel = new LogLevel("DEBUG", 0, -4);
        k = logLevel;
        LogLevel logLevel2 = new LogLevel("INFO", 1, 0);
        l = logLevel2;
        LogLevel logLevel3 = new LogLevel("WARN", 2, 4);
        m = logLevel3;
        LogLevel logLevel4 = new LogLevel("ERROR", 3, 8);
        n = logLevel4;
        LogLevel[] logLevelArr = {logLevel, logLevel2, logLevel3, logLevel4};
        o = logLevelArr;
        EnumEntriesKt.a(logLevelArr);
    }

    public LogLevel(String str, int i, int i2) {
        this.j = i2;
    }

    public static LogLevel valueOf(String str) {
        return (LogLevel) Enum.valueOf(LogLevel.class, str);
    }

    public static LogLevel[] values() {
        return (LogLevel[]) o.clone();
    }
}
