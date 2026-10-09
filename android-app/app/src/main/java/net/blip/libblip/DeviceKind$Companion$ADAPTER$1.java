package net.blip.libblip;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.WireEnum;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeviceKind$Companion$ADAPTER$1 extends EnumAdapter<DeviceKind> {
    @Override // com.squareup.wire.EnumAdapter
    public final WireEnum j(int i) {
        DeviceKind.k.getClass();
        if (i != 0) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return null;
                        }
                        return DeviceKind.q;
                    }
                    return DeviceKind.p;
                }
                return DeviceKind.o;
            }
            return DeviceKind.n;
        }
        return DeviceKind.m;
    }
}
