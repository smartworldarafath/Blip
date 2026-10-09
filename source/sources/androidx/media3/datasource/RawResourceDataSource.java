package androidx.media3.datasource;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.util.Util;
import defpackage.jb;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RawResourceDataSource extends BaseDataSource {
    public final Context e;
    public DataSpec f;
    public AssetFileDescriptor g;
    public FileInputStream h;
    public long i;
    public boolean j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class RawResourceDataSourceException extends DataSourceException {
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.e = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i) {
        return Uri.parse("rawresource:///" + i);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        this.f = null;
        try {
            try {
                FileInputStream fileInputStream = this.h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e) {
                        throw new DataSourceException(null, e, 2000);
                    }
                } finally {
                    this.g = null;
                    if (this.j) {
                        this.j = false;
                        q();
                    }
                }
            } catch (IOException e2) {
                throw new DataSourceException(null, e2, 2000);
            }
        } catch (Throwable th) {
            this.h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.g = null;
                    if (this.j) {
                        this.j = false;
                        q();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new DataSourceException(null, e3, 2000);
                }
            } finally {
                this.g = null;
                if (this.j) {
                    this.j = false;
                    q();
                }
            }
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final long l(DataSpec dataSpec) {
        String host;
        Resources resourcesForApplication;
        int parseInt;
        int i;
        Resources resources;
        long min;
        this.f = dataSpec;
        r();
        Uri uri = dataSpec.a;
        long j = dataSpec.f;
        long j2 = dataSpec.e;
        Uri normalizeScheme = uri.normalizeScheme();
        boolean equals = TextUtils.equals("rawresource", normalizeScheme.getScheme());
        Context context = this.e;
        if (equals) {
            resources = context.getResources();
            List<String> pathSegments = normalizeScheme.getPathSegments();
            if (pathSegments.size() == 1) {
                try {
                    i = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new DataSourceException("Resource identifier must be an integer.", null, 1004);
                }
            } else {
                throw new DataSourceException("rawresource:// URI must have exactly one path element, found " + pathSegments.size(), null, 2000);
            }
        } else if (TextUtils.equals("android.resource", normalizeScheme.getScheme())) {
            String path = normalizeScheme.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            if (TextUtils.isEmpty(normalizeScheme.getHost())) {
                host = context.getPackageName();
            } else {
                host = normalizeScheme.getHost();
            }
            if (host.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(host);
                } catch (PackageManager.NameNotFoundException e) {
                    throw new DataSourceException("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e, 2005);
                }
            }
            if (path.matches("\\d+")) {
                try {
                    parseInt = Integer.parseInt(path);
                } catch (NumberFormatException unused2) {
                    throw new DataSourceException("Resource identifier must be an integer.", null, 1004);
                }
            } else {
                parseInt = resourcesForApplication.getIdentifier(jb.g(host, ":", path), "raw", null);
                if (parseInt == 0) {
                    throw new DataSourceException("Resource not found.", null, 2005);
                }
            }
            i = parseInt;
            resources = resourcesForApplication;
        } else {
            throw new DataSourceException("Unsupported URI scheme (" + normalizeScheme.getScheme() + "). Only android.resource is supported.", null, 1004);
        }
        try {
            AssetFileDescriptor openRawResourceFd = resources.openRawResourceFd(i);
            if (openRawResourceFd != null) {
                this.g = openRawResourceFd;
                long length = openRawResourceFd.getLength();
                FileInputStream fileInputStream = new FileInputStream(this.g.getFileDescriptor());
                this.h = fileInputStream;
                try {
                    if (length != -1 && j2 > length) {
                        throw new DataSourceException(null, null, 2008);
                    }
                    long startOffset = this.g.getStartOffset();
                    long skip = fileInputStream.skip(startOffset + j2) - startOffset;
                    if (skip == j2) {
                        if (length == -1) {
                            FileChannel channel = fileInputStream.getChannel();
                            if (channel.size() == 0) {
                                this.i = -1L;
                            } else {
                                long size = channel.size() - channel.position();
                                this.i = size;
                                if (size < 0) {
                                    throw new DataSourceException(null, null, 2008);
                                }
                            }
                        } else {
                            long j3 = length - skip;
                            this.i = j3;
                            if (j3 < 0) {
                                throw new DataSourceException(2008);
                            }
                        }
                        if (j != -1) {
                            long j4 = this.i;
                            if (j4 == -1) {
                                min = j;
                            } else {
                                min = Math.min(j4, j);
                            }
                            this.i = min;
                        }
                        this.j = true;
                        s(dataSpec);
                        if (j != -1) {
                            return j;
                        }
                        return this.i;
                    }
                    throw new DataSourceException(null, null, 2008);
                } catch (RawResourceDataSourceException e2) {
                    throw e2;
                } catch (IOException e3) {
                    throw new DataSourceException(null, e3, 2000);
                }
            }
            throw new DataSourceException("Resource is compressed: " + normalizeScheme, null, 2000);
        } catch (Resources.NotFoundException e4) {
            throw new DataSourceException(null, e4, 2005);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri m() {
        DataSpec dataSpec = this.f;
        if (dataSpec != null) {
            return dataSpec.a;
        }
        return null;
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.i;
        if (j != 0) {
            if (j != -1) {
                try {
                    i2 = (int) Math.min(j, i2);
                } catch (IOException e) {
                    throw new DataSourceException(null, e, 2000);
                }
            }
            FileInputStream fileInputStream = this.h;
            String str = Util.a;
            int read = fileInputStream.read(bArr, i, i2);
            long j2 = this.i;
            if (read == -1) {
                if (j2 != -1) {
                    throw new DataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
                }
            } else {
                if (j2 != -1) {
                    this.i = j2 - read;
                }
                p(read);
                return read;
            }
        }
        return -1;
    }
}
