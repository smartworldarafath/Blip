package androidx.compose.ui.layout;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MeasuringIntrinsics$IntrinsicMinMax {
    public static final MeasuringIntrinsics$IntrinsicMinMax j;
    public static final MeasuringIntrinsics$IntrinsicMinMax k;
    public static final /* synthetic */ MeasuringIntrinsics$IntrinsicMinMax[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.layout.MeasuringIntrinsics$IntrinsicMinMax] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.layout.MeasuringIntrinsics$IntrinsicMinMax] */
    static {
        ?? r0 = new Enum("Min", 0);
        j = r0;
        ?? r1 = new Enum("Max", 1);
        k = r1;
        MeasuringIntrinsics$IntrinsicMinMax[] measuringIntrinsics$IntrinsicMinMaxArr = {r0, r1};
        l = measuringIntrinsics$IntrinsicMinMaxArr;
        EnumEntriesKt.a(measuringIntrinsics$IntrinsicMinMaxArr);
    }

    public static MeasuringIntrinsics$IntrinsicMinMax valueOf(String str) {
        return (MeasuringIntrinsics$IntrinsicMinMax) Enum.valueOf(MeasuringIntrinsics$IntrinsicMinMax.class, str);
    }

    public static MeasuringIntrinsics$IntrinsicMinMax[] values() {
        return (MeasuringIntrinsics$IntrinsicMinMax[]) l.clone();
    }
}
