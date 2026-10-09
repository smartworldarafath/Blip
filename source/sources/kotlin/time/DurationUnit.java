package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DurationUnit {
    public static final DurationUnit k;
    public static final DurationUnit l;
    public static final DurationUnit m;
    public static final DurationUnit n;
    public static final DurationUnit o;
    public static final DurationUnit p;
    public static final /* synthetic */ DurationUnit[] q;
    public final TimeUnit j;

    static {
        DurationUnit durationUnit = new DurationUnit("NANOSECONDS", 0, TimeUnit.NANOSECONDS);
        k = durationUnit;
        DurationUnit durationUnit2 = new DurationUnit("MICROSECONDS", 1, TimeUnit.MICROSECONDS);
        DurationUnit durationUnit3 = new DurationUnit("MILLISECONDS", 2, TimeUnit.MILLISECONDS);
        l = durationUnit3;
        DurationUnit durationUnit4 = new DurationUnit("SECONDS", 3, TimeUnit.SECONDS);
        m = durationUnit4;
        DurationUnit durationUnit5 = new DurationUnit("MINUTES", 4, TimeUnit.MINUTES);
        n = durationUnit5;
        DurationUnit durationUnit6 = new DurationUnit("HOURS", 5, TimeUnit.HOURS);
        o = durationUnit6;
        DurationUnit durationUnit7 = new DurationUnit("DAYS", 6, TimeUnit.DAYS);
        p = durationUnit7;
        DurationUnit[] durationUnitArr = {durationUnit, durationUnit2, durationUnit3, durationUnit4, durationUnit5, durationUnit6, durationUnit7};
        q = durationUnitArr;
        EnumEntriesKt.a(durationUnitArr);
    }

    public DurationUnit(String str, int i, TimeUnit timeUnit) {
        this.j = timeUnit;
    }

    public static DurationUnit valueOf(String str) {
        return (DurationUnit) Enum.valueOf(DurationUnit.class, str);
    }

    public static DurationUnit[] values() {
        return (DurationUnit[]) q.clone();
    }
}
