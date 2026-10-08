package net.blip.libblip.frontend;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.WireEnum;
import net.blip.libblip.frontend.TransferErr;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferErr$Code$Companion$ADAPTER$1 extends EnumAdapter<TransferErr.Code> {
    @Override // com.squareup.wire.EnumAdapter
    public final WireEnum j(int i) {
        TransferErr.Code.k.getClass();
        if (i != 0) {
            if (i != 300) {
                if (i != 301) {
                    switch (i) {
                        case 100:
                            return TransferErr.Code.n;
                        case 101:
                            return TransferErr.Code.o;
                        case 102:
                            return TransferErr.Code.p;
                        case 103:
                            return TransferErr.Code.r;
                        case 104:
                            return TransferErr.Code.s;
                        case 105:
                            return TransferErr.Code.q;
                        default:
                            switch (i) {
                                case 201:
                                    return TransferErr.Code.t;
                                case 202:
                                    return TransferErr.Code.u;
                                case 203:
                                    return TransferErr.Code.v;
                                case 204:
                                    return TransferErr.Code.w;
                                default:
                                    switch (i) {
                                        case 400:
                                            return TransferErr.Code.z;
                                        case 401:
                                            return TransferErr.Code.A;
                                        case 402:
                                            return TransferErr.Code.B;
                                        case 403:
                                            return TransferErr.Code.C;
                                        default:
                                            return null;
                                    }
                            }
                    }
                }
                return TransferErr.Code.y;
            }
            return TransferErr.Code.x;
        }
        return TransferErr.Code.m;
    }
}
