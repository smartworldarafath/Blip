package net.blip.libblip.frontend;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.WireEnum;
import net.blip.libblip.frontend.Registration;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Registration$registration_status$Companion$ADAPTER$1 extends EnumAdapter<Registration.registration_status> {
    @Override // com.squareup.wire.EnumAdapter
    public final WireEnum j(int i) {
        Registration.registration_status.k.getClass();
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return Registration.registration_status.p;
                }
                return Registration.registration_status.o;
            }
            return Registration.registration_status.n;
        }
        return Registration.registration_status.m;
    }
}
