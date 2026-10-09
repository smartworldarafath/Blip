package okhttp3.internal.connection;

import defpackage.fe;
import defpackage.k8;
import defpackage.u2;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.EventListener;
import okhttp3.EventListener$Companion$NONE$1;
import okhttp3.HttpUrl;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteSelector;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ExchangeFinder {
    public final RealConnectionPool a;
    public final Address b;
    public final RealCall c;
    public final EventListener d;
    public RouteSelector.Selection e;
    public RouteSelector f;
    public int g;
    public int h;
    public int i;
    public Route j;

    public ExchangeFinder(RealConnectionPool realConnectionPool, Address address, RealCall realCall, EventListener$Companion$NONE$1 eventListener$Companion$NONE$1) {
        realConnectionPool.getClass();
        eventListener$Companion$NONE$1.getClass();
        this.a = realConnectionPool;
        this.b = address;
        this.c = realCall;
        this.d = eventListener$Companion$NONE$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x029e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final RealConnection a(int i, int i2, int i3, boolean z, boolean z2) {
        ArrayList arrayList;
        String str;
        int i4;
        List list;
        boolean contains;
        RouteDatabase routeDatabase;
        boolean z3;
        boolean z4;
        Socket i5;
        boolean z5;
        while (!this.c.w) {
            RealConnection realConnection = this.c.r;
            boolean z6 = true;
            if (realConnection != null) {
                synchronized (realConnection) {
                    try {
                        if (!realConnection.j) {
                            HttpUrl httpUrl = realConnection.b.a.h;
                            httpUrl.getClass();
                            HttpUrl httpUrl2 = this.b.h;
                            if (httpUrl.e == httpUrl2.e && Intrinsics.a(httpUrl.d, httpUrl2.d)) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            if (z5) {
                                i5 = null;
                            }
                        }
                        i5 = this.c.i();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (this.c.r != null) {
                    if (i5 != null) {
                        u2.l("Check failed.");
                        return null;
                    }
                    z3 = z2;
                    if (realConnection.i(z3)) {
                        return realConnection;
                    }
                    realConnection.k();
                    if (this.j == null) {
                        RouteSelector.Selection selection = this.e;
                        if (selection != null) {
                            z4 = selection.a();
                        } else {
                            z4 = true;
                        }
                        if (z4) {
                            continue;
                        } else {
                            RouteSelector routeSelector = this.f;
                            if (routeSelector != null) {
                                z6 = routeSelector.a();
                            }
                            if (!z6) {
                                k8.j("exhausted all routes");
                                return null;
                            }
                        }
                    }
                } else {
                    if (i5 != null) {
                        Util.c(i5);
                    }
                    this.d.getClass();
                }
            }
            this.g = 0;
            this.h = 0;
            this.i = 0;
            if (this.a.a(this.b, this.c, null, false)) {
                realConnection = this.c.r;
                realConnection.getClass();
                this.d.getClass();
            } else {
                Route route = this.j;
                try {
                    if (route != null) {
                        this.j = null;
                    } else {
                        RouteSelector.Selection selection2 = this.e;
                        if (selection2 != null && selection2.a()) {
                            RouteSelector.Selection selection3 = this.e;
                            selection3.getClass();
                            if (selection3.a()) {
                                ArrayList arrayList2 = selection3.a;
                                int i6 = selection3.b;
                                selection3.b = i6 + 1;
                                route = (Route) arrayList2.get(i6);
                            } else {
                                k8.o();
                                return null;
                            }
                        } else {
                            RouteSelector routeSelector2 = this.f;
                            if (routeSelector2 == null) {
                                Address address = this.b;
                                RealCall realCall = this.c;
                                routeSelector2 = new RouteSelector(address, realCall.j.H, realCall, this.d);
                                this.f = routeSelector2;
                            }
                            if (routeSelector2.a()) {
                                arrayList = new ArrayList();
                                while (routeSelector2.e < routeSelector2.d.size()) {
                                    Address address2 = routeSelector2.a;
                                    if (routeSelector2.e < routeSelector2.d.size()) {
                                        List list2 = routeSelector2.d;
                                        int i7 = routeSelector2.e;
                                        routeSelector2.e = i7 + 1;
                                        Proxy proxy = (Proxy) list2.get(i7);
                                        EventListener eventListener = routeSelector2.c;
                                        ArrayList arrayList3 = new ArrayList();
                                        routeSelector2.f = arrayList3;
                                        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
                                            SocketAddress address3 = proxy.address();
                                            if (address3 instanceof InetSocketAddress) {
                                                InetSocketAddress inetSocketAddress = (InetSocketAddress) address3;
                                                InetAddress address4 = inetSocketAddress.getAddress();
                                                if (address4 == null) {
                                                    str = inetSocketAddress.getHostName();
                                                    str.getClass();
                                                } else {
                                                    str = address4.getHostAddress();
                                                    str.getClass();
                                                }
                                                i4 = inetSocketAddress.getPort();
                                            } else {
                                                fe.s(address3.getClass(), "Proxy.address() is not an InetSocketAddress: ");
                                                return null;
                                            }
                                        } else {
                                            HttpUrl httpUrl3 = address2.h;
                                            str = httpUrl3.d;
                                            i4 = httpUrl3.e;
                                        }
                                        if (1 <= i4 && i4 < 65536) {
                                            if (proxy.type() == Proxy.Type.SOCKS) {
                                                arrayList3.add(InetSocketAddress.createUnresolved(str, i4));
                                            } else {
                                                byte[] bArr = Util.a;
                                                str.getClass();
                                                if (Util.e.d(str)) {
                                                    list = CollectionsKt.B(InetAddress.getByName(str));
                                                } else {
                                                    eventListener.getClass();
                                                    List a = address2.a.a(str);
                                                    if (!a.isEmpty()) {
                                                        list = a;
                                                    } else {
                                                        throw new UnknownHostException(address2.a + " returned no addresses for " + str);
                                                    }
                                                }
                                                Iterator it = list.iterator();
                                                while (it.hasNext()) {
                                                    arrayList3.add(new InetSocketAddress((InetAddress) it.next(), i4));
                                                }
                                            }
                                            Iterator it2 = routeSelector2.f.iterator();
                                            while (it2.hasNext()) {
                                                Route route2 = new Route(routeSelector2.a, proxy, (InetSocketAddress) it2.next());
                                                RouteDatabase routeDatabase2 = routeSelector2.b;
                                                synchronized (routeDatabase2) {
                                                    contains = routeDatabase2.a.contains(route2);
                                                }
                                                if (contains) {
                                                    routeSelector2.g.add(route2);
                                                } else {
                                                    arrayList.add(route2);
                                                }
                                            }
                                            if (!arrayList.isEmpty()) {
                                                break;
                                            }
                                        } else {
                                            throw new SocketException("No route to " + str + ':' + i4 + "; port is out of range");
                                        }
                                    } else {
                                        throw new SocketException("No route to " + address2.h.d + "; exhausted proxy configurations: " + routeSelector2.d);
                                    }
                                }
                                if (arrayList.isEmpty()) {
                                    CollectionsKt.g(arrayList, routeSelector2.g);
                                    routeSelector2.g.clear();
                                }
                                RouteSelector.Selection selection4 = new RouteSelector.Selection(arrayList);
                                this.e = selection4;
                                if (!this.c.w) {
                                    if (this.a.a(this.b, this.c, arrayList, false)) {
                                        realConnection = this.c.r;
                                        realConnection.getClass();
                                        this.d.getClass();
                                    } else if (selection4.a()) {
                                        int i8 = selection4.b;
                                        selection4.b = i8 + 1;
                                        route = (Route) arrayList.get(i8);
                                        RealConnection realConnection2 = new RealConnection(this.a, route);
                                        this.c.y = realConnection2;
                                        realConnection2.c(i, i2, i3, z, this.c, this.d);
                                        this.c.y = null;
                                        routeDatabase = this.c.j.H;
                                        synchronized (routeDatabase) {
                                            routeDatabase.a.remove(route);
                                        }
                                        if (this.a.a(this.b, this.c, arrayList, true)) {
                                            RealConnection realConnection3 = this.c.r;
                                            realConnection3.getClass();
                                            this.j = route;
                                            Socket socket = realConnection2.d;
                                            socket.getClass();
                                            Util.c(socket);
                                            this.d.getClass();
                                            realConnection = realConnection3;
                                        } else {
                                            synchronized (realConnection2) {
                                                RealConnectionPool realConnectionPool = this.a;
                                                realConnectionPool.getClass();
                                                byte[] bArr2 = Util.a;
                                                realConnectionPool.d.add(realConnection2);
                                                realConnectionPool.b.c(realConnectionPool.c, 0L);
                                                this.c.b(realConnection2);
                                            }
                                            this.d.getClass();
                                            z3 = z2;
                                            realConnection = realConnection2;
                                            if (realConnection.i(z3)) {
                                            }
                                        }
                                    } else {
                                        k8.o();
                                        return null;
                                    }
                                } else {
                                    k8.j("Canceled");
                                    return null;
                                }
                            } else {
                                k8.o();
                                return null;
                            }
                        }
                    }
                    realConnection2.c(i, i2, i3, z, this.c, this.d);
                    this.c.y = null;
                    routeDatabase = this.c.j.H;
                    synchronized (routeDatabase) {
                    }
                } catch (Throwable th2) {
                    this.c.y = null;
                    throw th2;
                }
                arrayList = null;
                RealConnection realConnection22 = new RealConnection(this.a, route);
                this.c.y = realConnection22;
            }
            z3 = z2;
            if (realConnection.i(z3)) {
            }
        }
        k8.j("Canceled");
        return null;
    }

    public final void b(IOException iOException) {
        iOException.getClass();
        this.j = null;
        if ((iOException instanceof StreamResetException) && ((StreamResetException) iOException).j == ErrorCode.REFUSED_STREAM) {
            this.g++;
        } else if (iOException instanceof ConnectionShutdownException) {
            this.h++;
        } else {
            this.i++;
        }
    }
}
