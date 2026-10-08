package net.blip.libblip;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.WireEnum;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlanKind$Companion$ADAPTER$1 extends EnumAdapter<PlanKind> {
    @Override // com.squareup.wire.EnumAdapter
    public final WireEnum j(int i) {
        PlanKind.k.getClass();
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return null;
                }
                return PlanKind.o;
            }
            return PlanKind.n;
        }
        return PlanKind.m;
    }
}
