package net.blip.libblip;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import net.blip.libblip.Peer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Device_DerivedKt {
    public static final String a(Device device) {
        device.getClass();
        String str = device.o;
        if (!StringsKt.t(str)) {
            return str;
        }
        return device.n.name();
    }

    public static final String b(DeviceKind deviceKind) {
        deviceKind.getClass();
        int ordinal = deviceKind.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3 && ordinal != 4) {
                    return "device";
                }
                return "computer";
            }
            return "tablet";
        }
        return "phone";
    }

    public static final ArrayList c(String str, List list) {
        str.getClass();
        ArrayList arrayList = new ArrayList(CollectionsKt.m(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Peer.Device((Device) it.next(), str));
        }
        return arrayList;
    }

    public static final ArrayList d(Collection collection) {
        collection.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (!((Device) obj).r) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
