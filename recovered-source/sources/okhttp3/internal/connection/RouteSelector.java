package okhttp3.internal.connection;

import java.net.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RouteSelector {
    public final Address a;
    public final RouteDatabase b;
    public final EventListener c;
    public final List d;
    public int e;
    public List f;
    public final ArrayList g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Selection {
        public final ArrayList a;
        public int b;

        public Selection(ArrayList arrayList) {
            this.a = arrayList;
        }

        public final boolean a() {
            if (this.b < this.a.size()) {
                return true;
            }
            return false;
        }
    }

    public RouteSelector(Address address, RouteDatabase routeDatabase, Call call, EventListener eventListener) {
        List i;
        routeDatabase.getClass();
        eventListener.getClass();
        this.a = address;
        this.b = routeDatabase;
        this.c = eventListener;
        EmptyList emptyList = EmptyList.j;
        this.d = emptyList;
        this.f = emptyList;
        this.g = new ArrayList();
        HttpUrl httpUrl = address.h;
        httpUrl.getClass();
        URI g = httpUrl.g();
        if (g.getHost() == null) {
            i = Util.i(Proxy.NO_PROXY);
        } else {
            List<Proxy> select = address.g.select(g);
            if (select != null && !select.isEmpty()) {
                i = Util.t(select);
            } else {
                i = Util.i(Proxy.NO_PROXY);
            }
        }
        this.d = i;
        this.e = 0;
    }

    public final boolean a() {
        if (this.e < this.d.size() || !this.g.isEmpty()) {
            return true;
        }
        return false;
    }
}
