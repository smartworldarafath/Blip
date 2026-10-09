package net.blip.libblip;

import java.util.Map;
import net.blip.libblip.Peer;
import net.blip.libblip.frontend.Users;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Users_DerivedKt {
    public static final Peer a(Users users, PeerId peerId) {
        users.getClass();
        peerId.getClass();
        String str = peerId.n;
        Map map = users.m;
        String str2 = peerId.m;
        User user = (User) map.get(str2);
        if (user == null) {
            return null;
        }
        if (user.s && str2.length() > 0 && str.length() > 0) {
            Device device = (Device) user.x.get(str);
            if (device == null) {
                return null;
            }
            return new Peer.Device(device, user.m);
        }
        return new Peer.User(user);
    }
}
