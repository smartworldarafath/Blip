package net.blip.libblip.frontend;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.WireEnum;
import net.blip.libblip.frontend.Search;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Search$Status$Companion$ADAPTER$1 extends EnumAdapter<Search.Status> {
    @Override // com.squareup.wire.EnumAdapter
    public final WireEnum j(int i) {
        Search.Status.k.getClass();
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return Search.Status.p;
                }
                return Search.Status.o;
            }
            return Search.Status.n;
        }
        return Search.Status.m;
    }
}
