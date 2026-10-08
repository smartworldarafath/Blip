package net.blip.libblip;

import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class User_DerivedKt {
    public static final String a(User user) {
        user.getClass();
        String str = user.o;
        if (StringsKt.t(str)) {
            return StringsKt.E(user.n, '*', (char) 8226);
        }
        return StringsKt.U(str).toString();
    }

    public static final boolean b(User user) {
        user.getClass();
        ByteString byteString = user.p;
        if (byteString.e() > 0) {
            for (byte b : byteString.r()) {
                if (b != 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final String c(User user) {
        user.getClass();
        if (a(user).length() <= 10) {
            return a(user);
        }
        return (String) CollectionsKt.s(StringsKt.G(a(user), new String[]{" "}, 6));
    }
}
