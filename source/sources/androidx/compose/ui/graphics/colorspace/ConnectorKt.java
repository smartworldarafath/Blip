package androidx.compose.ui.graphics.colorspace;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ConnectorKt {
    public static final MutableIntObjectMap a;

    static {
        Rgb rgb = ColorSpaces.e;
        int i = rgb.c;
        Connector connector = new Connector(rgb, rgb, 1);
        int i2 = rgb.c;
        Oklab oklab = ColorSpaces.x;
        int i3 = (oklab.c << 6) | i2;
        Connector connector2 = new Connector(rgb, oklab, 0);
        int i4 = (i2 << 6) | oklab.c;
        Connector connector3 = new Connector(oklab, rgb, 0);
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
        MutableIntObjectMap mutableIntObjectMap2 = new MutableIntObjectMap();
        mutableIntObjectMap2.i(i | (i << 6), connector);
        mutableIntObjectMap2.i(i3, connector2);
        mutableIntObjectMap2.i(i4, connector3);
        a = mutableIntObjectMap2;
    }
}
