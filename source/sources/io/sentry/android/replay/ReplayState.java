package io.sentry.android.replay;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReplayState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReplayState[] $VALUES;
    public static final ReplayState INITIAL = new ReplayState("INITIAL", 0);
    public static final ReplayState STARTED = new ReplayState("STARTED", 1);
    public static final ReplayState RESUMED = new ReplayState("RESUMED", 2);
    public static final ReplayState PAUSED = new ReplayState("PAUSED", 3);
    public static final ReplayState STOPPED = new ReplayState("STOPPED", 4);
    public static final ReplayState CLOSED = new ReplayState("CLOSED", 5);

    private static final /* synthetic */ ReplayState[] $values() {
        return new ReplayState[]{INITIAL, STARTED, RESUMED, PAUSED, STOPPED, CLOSED};
    }

    static {
        ReplayState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.a($values);
    }

    private ReplayState(String str, int i) {
    }

    public static EnumEntries<ReplayState> getEntries() {
        return $ENTRIES;
    }

    public static ReplayState valueOf(String str) {
        return (ReplayState) Enum.valueOf(ReplayState.class, str);
    }

    public static ReplayState[] values() {
        return (ReplayState[]) $VALUES.clone();
    }
}
