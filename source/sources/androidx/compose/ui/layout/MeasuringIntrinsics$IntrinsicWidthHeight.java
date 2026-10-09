package androidx.compose.ui.layout;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MeasuringIntrinsics$IntrinsicWidthHeight {
    public static final MeasuringIntrinsics$IntrinsicWidthHeight j;
    public static final MeasuringIntrinsics$IntrinsicWidthHeight k;
    public static final /* synthetic */ MeasuringIntrinsics$IntrinsicWidthHeight[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.layout.MeasuringIntrinsics$IntrinsicWidthHeight, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.layout.MeasuringIntrinsics$IntrinsicWidthHeight, java.lang.Enum] */
    static {
        ?? r0 = new Enum("Width", 0);
        j = r0;
        ?? r1 = new Enum("Height", 1);
        k = r1;
        MeasuringIntrinsics$IntrinsicWidthHeight[] measuringIntrinsics$IntrinsicWidthHeightArr = {r0, r1};
        l = measuringIntrinsics$IntrinsicWidthHeightArr;
        EnumEntriesKt.a(measuringIntrinsics$IntrinsicWidthHeightArr);
    }

    public static MeasuringIntrinsics$IntrinsicWidthHeight valueOf(String str) {
        return (MeasuringIntrinsics$IntrinsicWidthHeight) Enum.valueOf(MeasuringIntrinsics$IntrinsicWidthHeight.class, str);
    }

    public static MeasuringIntrinsics$IntrinsicWidthHeight[] values() {
        return (MeasuringIntrinsics$IntrinsicWidthHeight[]) l.clone();
    }
}
