package androidx.compose.ui.node;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class NodeMeasuringIntrinsics$IntrinsicWidthHeight {
    public static final NodeMeasuringIntrinsics$IntrinsicWidthHeight j;
    public static final NodeMeasuringIntrinsics$IntrinsicWidthHeight k;
    public static final /* synthetic */ NodeMeasuringIntrinsics$IntrinsicWidthHeight[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicWidthHeight] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.node.NodeMeasuringIntrinsics$IntrinsicWidthHeight] */
    static {
        ?? r0 = new Enum("Width", 0);
        j = r0;
        ?? r1 = new Enum("Height", 1);
        k = r1;
        NodeMeasuringIntrinsics$IntrinsicWidthHeight[] nodeMeasuringIntrinsics$IntrinsicWidthHeightArr = {r0, r1};
        l = nodeMeasuringIntrinsics$IntrinsicWidthHeightArr;
        EnumEntriesKt.a(nodeMeasuringIntrinsics$IntrinsicWidthHeightArr);
    }

    public static NodeMeasuringIntrinsics$IntrinsicWidthHeight valueOf(String str) {
        return (NodeMeasuringIntrinsics$IntrinsicWidthHeight) Enum.valueOf(NodeMeasuringIntrinsics$IntrinsicWidthHeight.class, str);
    }

    public static NodeMeasuringIntrinsics$IntrinsicWidthHeight[] values() {
        return (NodeMeasuringIntrinsics$IntrinsicWidthHeight[]) l.clone();
    }
}
