package androidx.compose.ui.viewinterop;

import androidx.compose.ui.node.LayoutNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidViewHolder_androidKt {
    public static final AndroidViewHolder_androidKt$NoOpScrollConnection$1 a = new Object();

    public static final void a(ViewFactoryHolder viewFactoryHolder, LayoutNode layoutNode) {
        long S = layoutNode.O.c.S(0L);
        int round = Math.round(Float.intBitsToFloat((int) (S >> 32)));
        int round2 = Math.round(Float.intBitsToFloat((int) (S & 4294967295L)));
        viewFactoryHolder.layout(round, round2, viewFactoryHolder.getMeasuredWidth() + round, viewFactoryHolder.getMeasuredHeight() + round2);
    }
}
