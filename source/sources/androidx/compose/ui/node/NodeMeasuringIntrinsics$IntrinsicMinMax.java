package androidx.compose.ui.node;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class NodeMeasuringIntrinsics$IntrinsicMinMax {
    public static final NodeMeasuringIntrinsics$IntrinsicMinMax j;
    public static final NodeMeasuringIntrinsics$IntrinsicMinMax k;
    public static final /* synthetic */ NodeMeasuringIntrinsics$IntrinsicMinMax[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicMinMax] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicMinMax] */
    static {
        ?? r0 = new Enum("Min", 0);
        j = r0;
        ?? r1 = new Enum("Max", 1);
        k = r1;
        NodeMeasuringIntrinsics$IntrinsicMinMax[] nodeMeasuringIntrinsics$IntrinsicMinMaxArr = {r0, r1};
        l = nodeMeasuringIntrinsics$IntrinsicMinMaxArr;
        EnumEntriesKt.a(nodeMeasuringIntrinsics$IntrinsicMinMaxArr);
    }

    public static NodeMeasuringIntrinsics$IntrinsicMinMax valueOf(String str) {
        return (NodeMeasuringIntrinsics$IntrinsicMinMax) Enum.valueOf(NodeMeasuringIntrinsics$IntrinsicMinMax.class, str);
    }

    public static NodeMeasuringIntrinsics$IntrinsicMinMax[] values() {
        return (NodeMeasuringIntrinsics$IntrinsicMinMax[]) l.clone();
    }
}
