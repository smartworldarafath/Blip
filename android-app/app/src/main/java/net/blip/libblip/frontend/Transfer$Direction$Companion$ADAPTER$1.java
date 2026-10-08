package net.blip.libblip.frontend;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.WireEnum;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Transfer$Direction$Companion$ADAPTER$1 extends EnumAdapter<Transfer.Direction> {
    @Override // com.squareup.wire.EnumAdapter
    public final WireEnum j(int i) {
        Transfer.Direction.k.getClass();
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return null;
                }
                return Transfer.Direction.o;
            }
            return Transfer.Direction.n;
        }
        return Transfer.Direction.m;
    }
}
