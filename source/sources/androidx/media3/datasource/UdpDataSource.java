package androidx.media3.datasource;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UdpDataSource extends BaseDataSource {
    public final int e;
    public final byte[] f;
    public final DatagramPacket g;
    public Uri h;
    public DatagramSocket i;
    public MulticastSocket j;
    public InetAddress k;
    public boolean l;
    public int m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UdpDataSourceException extends DataSourceException {
    }

    public UdpDataSource() {
        super(true);
        this.e = 8000;
        byte[] bArr = new byte[2000];
        this.f = bArr;
        this.g = new DatagramPacket(bArr, 0, 2000);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        this.h = null;
        MulticastSocket multicastSocket = this.j;
        if (multicastSocket != null) {
            try {
                InetAddress inetAddress = this.k;
                inetAddress.getClass();
                multicastSocket.leaveGroup(inetAddress);
            } catch (IOException unused) {
            }
            this.j = null;
        }
        DatagramSocket datagramSocket = this.i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.i = null;
        }
        this.k = null;
        this.m = 0;
        if (this.l) {
            this.l = false;
            q();
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final long l(DataSpec dataSpec) {
        Uri uri = dataSpec.a;
        this.h = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.h.getPort();
        r();
        try {
            this.k = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.k, port);
            if (this.k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.j = multicastSocket;
                multicastSocket.joinGroup(this.k);
                this.i = this.j;
            } else {
                this.i = new DatagramSocket(inetSocketAddress);
            }
            this.i.setSoTimeout(this.e);
            this.l = true;
            s(dataSpec);
            return -1L;
        } catch (IOException e) {
            throw new DataSourceException(e, 2001);
        } catch (SecurityException e2) {
            throw new DataSourceException(e2, 2006);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri m() {
        return this.h;
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.m;
        DatagramPacket datagramPacket = this.g;
        if (i3 == 0) {
            try {
                DatagramSocket datagramSocket = this.i;
                datagramSocket.getClass();
                datagramSocket.receive(datagramPacket);
                int length = datagramPacket.getLength();
                this.m = length;
                p(length);
            } catch (SocketTimeoutException e) {
                throw new DataSourceException(e, 2002);
            } catch (IOException e2) {
                throw new DataSourceException(e2, 2001);
            }
        }
        int length2 = datagramPacket.getLength();
        int i4 = this.m;
        int min = Math.min(i4, i2);
        System.arraycopy(this.f, length2 - i4, bArr, i, min);
        this.m -= min;
        return min;
    }
}
