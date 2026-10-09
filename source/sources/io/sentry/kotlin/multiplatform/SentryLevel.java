package io.sentry.kotlin.multiplatform;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryLevel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SentryLevel[] $VALUES;
    public static final Companion Companion;
    private final int value;
    public static final SentryLevel DEBUG = new SentryLevel("DEBUG", 0, 1);
    public static final SentryLevel INFO = new SentryLevel("INFO", 1, 2);
    public static final SentryLevel WARNING = new SentryLevel("WARNING", 2, 3);
    public static final SentryLevel ERROR = new SentryLevel("ERROR", 3, 4);
    public static final SentryLevel FATAL = new SentryLevel("FATAL", 4, 5);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    private static final /* synthetic */ SentryLevel[] $values() {
        return new SentryLevel[]{DEBUG, INFO, WARNING, ERROR, FATAL};
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [io.sentry.kotlin.multiplatform.SentryLevel$Companion, java.lang.Object] */
    static {
        SentryLevel[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.a($values);
        Companion = new Object();
    }

    private SentryLevel(String str, int i, int i2) {
        this.value = i2;
    }

    public static EnumEntries<SentryLevel> getEntries() {
        return $ENTRIES;
    }

    public static SentryLevel valueOf(String str) {
        return (SentryLevel) Enum.valueOf(SentryLevel.class, str);
    }

    public static SentryLevel[] values() {
        return (SentryLevel[]) $VALUES.clone();
    }

    public final int toInt$sentry_kotlin_multiplatform_release() {
        return this.value;
    }
}
