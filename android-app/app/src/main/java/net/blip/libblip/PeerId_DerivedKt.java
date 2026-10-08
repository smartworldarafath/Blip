package net.blip.libblip;

import defpackage.jb;
import defpackage.u2;
import java.util.List;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PeerId_DerivedKt {
    public static final PeerId a(String str) {
        List H = StringsKt.H(str, new char[]{':'});
        if (H.size() == 2) {
            return new PeerId((String) H.get(0), 4, (String) H.get(1));
        }
        u2.g("malformed idString");
        return null;
    }

    public static final String b(PeerId peerId) {
        peerId.getClass();
        return jb.g(peerId.m, ":", peerId.n);
    }

    public static final boolean c(PeerId peerId) {
        peerId.getClass();
        if (peerId.m.length() > 0 && peerId.n.length() == 0) {
            return true;
        }
        return false;
    }
}
