package androidx.media3.datasource;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultHttpDataSource;
import com.google.common.base.Preconditions;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultDataSource implements DataSource {
    public final Context a;
    public final ArrayList b;
    public final DataSource c;
    public FileDataSource d;
    public AssetDataSource e;
    public ContentDataSource f;
    public DataSource g;
    public UdpDataSource h;
    public DataSchemeDataSource i;
    public RawResourceDataSource j;
    public DataSource k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements DataSource.Factory {
        public final Context a;
        public final DefaultHttpDataSource.Factory b;

        public Factory(Context context) {
            DefaultHttpDataSource.Factory factory = new DefaultHttpDataSource.Factory();
            this.a = context.getApplicationContext();
            this.b = factory;
        }

        @Override // androidx.media3.datasource.DataSource.Factory
        public final DataSource a() {
            return new DefaultDataSource(this.a, this.b.a());
        }
    }

    public DefaultDataSource(Context context, DataSource dataSource) {
        this.a = context.getApplicationContext();
        dataSource.getClass();
        this.c = dataSource;
        this.b = new ArrayList();
    }

    public static void q(DataSource dataSource, TransferListener transferListener) {
        if (dataSource != null) {
            dataSource.b(transferListener);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final void b(TransferListener transferListener) {
        transferListener.getClass();
        this.c.b(transferListener);
        this.b.add(transferListener);
        q(this.d, transferListener);
        q(this.e, transferListener);
        q(this.f, transferListener);
        q(this.g, transferListener);
        q(this.h, transferListener);
        q(this.i, transferListener);
        q(this.j, transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        DataSource dataSource = this.k;
        if (dataSource != null) {
            try {
                dataSource.close();
            } finally {
                this.k = null;
            }
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map i() {
        DataSource dataSource = this.k;
        if (dataSource == null) {
            return Collections.EMPTY_MAP;
        }
        return dataSource.i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [androidx.media3.datasource.DataSchemeDataSource, androidx.media3.datasource.BaseDataSource, androidx.media3.datasource.DataSource] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.media3.datasource.FileDataSource, androidx.media3.datasource.BaseDataSource, androidx.media3.datasource.DataSource] */
    @Override // androidx.media3.datasource.DataSource
    public final long l(DataSpec dataSpec) {
        boolean z;
        if (this.k == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        Uri uri = dataSpec.a;
        String scheme = uri.getScheme();
        String str = Util.a;
        String scheme2 = uri.getScheme();
        boolean isEmpty = TextUtils.isEmpty(scheme2);
        Context context = this.a;
        if (!isEmpty && !Objects.equals(scheme2, "file")) {
            if ("asset".equals(scheme)) {
                if (this.e == null) {
                    AssetDataSource assetDataSource = new AssetDataSource(context);
                    this.e = assetDataSource;
                    p(assetDataSource);
                }
                this.k = this.e;
            } else if ("content".equals(scheme)) {
                if (this.f == null) {
                    ContentDataSource contentDataSource = new ContentDataSource(context);
                    this.f = contentDataSource;
                    p(contentDataSource);
                }
                this.k = this.f;
            } else {
                boolean equals = "rtmp".equals(scheme);
                DataSource dataSource = this.c;
                if (equals) {
                    if (this.g == null) {
                        try {
                            DataSource dataSource2 = (DataSource) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                            this.g = dataSource2;
                            p(dataSource2);
                        } catch (ClassNotFoundException unused) {
                            Log.f("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                        } catch (Exception e) {
                            u2.k("Error instantiating RTMP extension", e);
                            return 0L;
                        }
                        if (this.g == null) {
                            this.g = dataSource;
                        }
                    }
                    this.k = this.g;
                } else if ("udp".equals(scheme)) {
                    if (this.h == null) {
                        UdpDataSource udpDataSource = new UdpDataSource();
                        this.h = udpDataSource;
                        p(udpDataSource);
                    }
                    this.k = this.h;
                } else if ("data".equals(scheme)) {
                    if (this.i == null) {
                        ?? baseDataSource = new BaseDataSource(false);
                        this.i = baseDataSource;
                        p(baseDataSource);
                    }
                    this.k = this.i;
                } else if (!"rawresource".equals(scheme) && !"android.resource".equals(scheme)) {
                    this.k = dataSource;
                } else {
                    if (this.j == null) {
                        RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(context);
                        this.j = rawResourceDataSource;
                        p(rawResourceDataSource);
                    }
                    this.k = this.j;
                }
            }
        } else {
            String path = uri.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                if (this.e == null) {
                    AssetDataSource assetDataSource2 = new AssetDataSource(context);
                    this.e = assetDataSource2;
                    p(assetDataSource2);
                }
                this.k = this.e;
            } else {
                if (this.d == null) {
                    ?? baseDataSource2 = new BaseDataSource(false);
                    this.d = baseDataSource2;
                    p(baseDataSource2);
                }
                this.k = this.d;
            }
        }
        return this.k.l(dataSpec);
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri m() {
        DataSource dataSource = this.k;
        if (dataSource == null) {
            return null;
        }
        return dataSource.m();
    }

    public final void p(DataSource dataSource) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i < arrayList.size()) {
                dataSource.b((TransferListener) arrayList.get(i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i, int i2) {
        DataSource dataSource = this.k;
        dataSource.getClass();
        return dataSource.read(bArr, i, i2);
    }
}
