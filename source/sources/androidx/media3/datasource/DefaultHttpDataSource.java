package androidx.media3.datasource;

import android.net.TrafficStats;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.io.ByteStreams;
import defpackage.k7;
import io.sentry.d;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultHttpDataSource extends BaseDataSource implements DataSource {
    public final int e;
    public final int f;
    public final HttpDataSource$RequestProperties g;
    public final HttpDataSource$RequestProperties h;
    public DataSpec i;
    public HttpURLConnection j;
    public InputStream k;
    public boolean l;
    public int m;
    public long n;
    public long o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements DataSource.Factory {
        public final HttpDataSource$RequestProperties a = new HttpDataSource$RequestProperties();
        public final int b = 8000;
        public final int c = 8000;

        @Override // androidx.media3.datasource.DataSource.Factory
        public final DataSource a() {
            return new DefaultHttpDataSource(this.b, this.c, this.a);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class NullFilteringHeadersMap extends ForwardingMap<String, List<String>> {
        public final Map j;

        public NullFilteringHeadersMap(Map map) {
            this.j = map;
        }

        @Override // com.google.common.collect.ForwardingObject
        public final Map a() {
            return this.j;
        }

        @Override // com.google.common.collect.ForwardingMap
        public final Map b() {
            return this.j;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final boolean containsKey(Object obj) {
            if (obj != null && super.containsKey(obj)) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Set entrySet() {
            return Sets.b(super.entrySet(), new k7(0));
        }

        @Override // java.util.Map
        public final boolean equals(Object obj) {
            if (obj != null && Maps.a(obj, this)) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Object get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (List) super.get(obj);
        }

        @Override // java.util.Map
        public final int hashCode() {
            return Sets.c(entrySet());
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final boolean isEmpty() {
            if (super.isEmpty() || (super.size() == 1 && super.containsKey(null))) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Set keySet() {
            return Sets.b(super.keySet(), new k7(1));
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final int size() {
            return super.size() - (super.containsKey(null) ? 1 : 0);
        }
    }

    public DefaultHttpDataSource(int i, int i2, HttpDataSource$RequestProperties httpDataSource$RequestProperties) {
        super(true);
        this.e = i;
        this.f = i2;
        this.g = httpDataSource$RequestProperties;
        this.h = new HttpDataSource$RequestProperties();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        try {
            InputStream inputStream = this.k;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    String str = Util.a;
                    throw new HttpDataSource$HttpDataSourceException(e, 2000, 3);
                }
            }
        } finally {
            this.k = null;
            t();
            if (this.l) {
                this.l = false;
                q();
            }
            this.j = null;
            this.i = null;
            TrafficStats.clearThreadStatsTag();
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map i() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection == null) {
            return ImmutableMap.d();
        }
        return new NullFilteringHeadersMap(httpURLConnection.getHeaderFields());
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0152 A[Catch: IOException -> 0x015d, TRY_LEAVE, TryCatch #5 {IOException -> 0x015d, blocks: (B:25:0x014a, B:27:0x0152), top: B:24:0x014a }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0141  */
    @Override // androidx.media3.datasource.DataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long l(DataSpec dataSpec) {
        long threadId;
        boolean z;
        DataSourceException dataSourceException;
        boolean z2;
        long j;
        long j2;
        long parseLong;
        long j3;
        String str;
        this.i = dataSpec;
        this.o = 0L;
        this.n = 0L;
        r();
        try {
            Thread currentThread = Thread.currentThread();
            if (Build.VERSION.SDK_INT >= 36) {
                threadId = currentThread.threadId();
            } else {
                threadId = currentThread.getId();
            }
            TrafficStats.setThreadStatsTag((int) threadId);
            URL url = new URL(dataSpec.a.toString());
            int i = dataSpec.b;
            byte[] bArr = dataSpec.c;
            long j4 = dataSpec.e;
            long j5 = dataSpec.f;
            if ((dataSpec.g & 1) == 1) {
                z = true;
            } else {
                z = false;
            }
            HttpURLConnection u = u(url, i, bArr, j4, j5, z, true, dataSpec.d);
            long j6 = dataSpec.f;
            long j7 = dataSpec.e;
            this.j = u;
            this.m = u.getResponseCode();
            u.getResponseMessage();
            int i2 = this.m;
            if (i2 >= 200 && i2 <= 299) {
                u.getContentType();
                if (this.m != 200 || j7 == 0) {
                    j7 = 0;
                }
                boolean equalsIgnoreCase = "gzip".equalsIgnoreCase(u.getHeaderField("Content-Encoding"));
                if (!equalsIgnoreCase) {
                    if (j6 != -1) {
                        this.n = j6;
                    } else {
                        String headerField = u.getHeaderField("Content-Length");
                        String headerField2 = u.getHeaderField("Content-Range");
                        Pattern pattern = HttpUtil.a;
                        if (!TextUtils.isEmpty(headerField)) {
                            try {
                                j2 = 0;
                                parseLong = Long.parseLong(headerField);
                            } catch (NumberFormatException unused) {
                                Log.c("HttpUtil", "Unexpected Content-Length [" + headerField + "]");
                            }
                            if (!TextUtils.isEmpty(headerField2)) {
                                Matcher matcher = HttpUtil.a.matcher(headerField2);
                                if (matcher.matches()) {
                                    try {
                                        String group = matcher.group(2);
                                        group.getClass();
                                        long parseLong2 = Long.parseLong(group);
                                        String group2 = matcher.group(1);
                                        group2.getClass();
                                        str = "]";
                                        long parseLong3 = (parseLong2 - Long.parseLong(group2)) + 1;
                                        if (parseLong < j2) {
                                            parseLong = parseLong3;
                                        } else if (parseLong != parseLong3) {
                                            try {
                                                Log.f("HttpUtil", "Inconsistent headers [" + headerField + "] [" + headerField2 + str);
                                                parseLong = Math.max(parseLong, parseLong3);
                                            } catch (NumberFormatException unused2) {
                                                Log.c("HttpUtil", "Unexpected Content-Range [" + headerField2 + str);
                                                if (parseLong != -1) {
                                                }
                                                this.n = j3;
                                                this.k = u.getInputStream();
                                                if (equalsIgnoreCase) {
                                                }
                                                this.l = true;
                                                s(dataSpec);
                                                v(j7);
                                                return this.n;
                                            }
                                        }
                                    } catch (NumberFormatException unused3) {
                                        str = "]";
                                    }
                                }
                            }
                            if (parseLong != -1) {
                                j3 = parseLong - j7;
                            } else {
                                j3 = -1;
                            }
                            this.n = j3;
                        }
                        j2 = 0;
                        parseLong = -1;
                        if (!TextUtils.isEmpty(headerField2)) {
                        }
                        if (parseLong != -1) {
                        }
                        this.n = j3;
                    }
                } else {
                    this.n = j6;
                }
                try {
                    this.k = u.getInputStream();
                    if (equalsIgnoreCase) {
                        this.k = new GZIPInputStream(this.k);
                    }
                    this.l = true;
                    s(dataSpec);
                    try {
                        v(j7);
                        return this.n;
                    } catch (IOException e) {
                        t();
                        if (e instanceof HttpDataSource$HttpDataSourceException) {
                            throw ((HttpDataSource$HttpDataSourceException) e);
                        }
                        throw new HttpDataSource$HttpDataSourceException(e, 2000, 1);
                    }
                } catch (IOException e2) {
                    t();
                    throw new HttpDataSource$HttpDataSourceException(e2, 2000, 1);
                }
            }
            Map<String, List<String>> headerFields = u.getHeaderFields();
            if (this.m == 416) {
                String headerField3 = u.getHeaderField("Content-Range");
                Pattern pattern2 = HttpUtil.a;
                if (TextUtils.isEmpty(headerField3)) {
                    j = -1;
                    z2 = true;
                } else {
                    Matcher matcher2 = HttpUtil.b.matcher(headerField3);
                    z2 = true;
                    if (matcher2.matches()) {
                        String group3 = matcher2.group(1);
                        group3.getClass();
                        j = Long.parseLong(group3);
                    } else {
                        j = -1;
                    }
                }
                if (j7 == j) {
                    this.l = z2;
                    s(dataSpec);
                    if (j6 == -1) {
                        return 0L;
                    }
                    return j6;
                }
            }
            InputStream errorStream = u.getErrorStream();
            try {
                if (errorStream != null) {
                    ByteStreams.b(errorStream);
                } else {
                    String str2 = Util.a;
                }
            } catch (IOException unused4) {
                String str3 = Util.a;
            }
            t();
            if (this.m == 416) {
                dataSourceException = new DataSourceException(2008);
            } else {
                dataSourceException = null;
            }
            throw new HttpDataSource$InvalidResponseCodeException(this.m, dataSourceException, headerFields);
        } catch (IOException e3) {
            t();
            throw HttpDataSource$HttpDataSourceException.a(e3, 1);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri m() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        DataSpec dataSpec = this.i;
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
        try {
            long j = this.n;
            if (j != -1) {
                long j2 = j - this.o;
                if (j2 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j2);
            }
            InputStream inputStream = this.k;
            String str = Util.a;
            int read = inputStream.read(bArr, i, i2);
            if (read != -1) {
                this.o += read;
                p(read);
                return read;
            }
            return -1;
        } catch (IOException e) {
            String str2 = Util.a;
            throw HttpDataSource$HttpDataSourceException.a(e, 2);
        }
    }

    public final void t() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.d("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
        }
    }

    public final HttpURLConnection u(URL url, int i, byte[] bArr, long j, long j2, boolean z, boolean z2, Map map) {
        String sb;
        String str;
        boolean z3;
        String str2;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.e);
        httpURLConnection.setReadTimeout(this.f);
        HashMap hashMap = new HashMap();
        HttpDataSource$RequestProperties httpDataSource$RequestProperties = this.g;
        if (httpDataSource$RequestProperties != null) {
            hashMap.putAll(httpDataSource$RequestProperties.a());
        }
        hashMap.putAll(this.h.a());
        hashMap.putAll(map);
        for (Map.Entry entry : hashMap.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        Pattern pattern = HttpUtil.a;
        if (j == 0 && j2 == -1) {
            sb = null;
        } else {
            StringBuilder sb2 = new StringBuilder("bytes=");
            sb2.append(j);
            sb2.append("-");
            if (j2 != -1) {
                sb2.append((j + j2) - 1);
            }
            sb = sb2.toString();
        }
        if (sb != null) {
            httpURLConnection.setRequestProperty("Range", sb);
        }
        if (z) {
            str = "gzip";
        } else {
            str = "identity";
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", str);
        httpURLConnection.setInstanceFollowRedirects(z2);
        if (bArr != null) {
            z3 = true;
        } else {
            z3 = false;
        }
        httpURLConnection.setDoOutput(z3);
        int i2 = DataSpec.h;
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    str2 = "HEAD";
                } else {
                    d.d();
                    return null;
                }
            } else {
                str2 = "POST";
            }
        } else {
            str2 = "GET";
        }
        httpURLConnection.setRequestMethod(str2);
        if (bArr != null) {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            return httpURLConnection;
        }
        httpURLConnection.connect();
        return httpURLConnection;
    }

    public final void v(long j) {
        if (j != 0) {
            byte[] bArr = new byte[4096];
            while (j > 0) {
                int min = (int) Math.min(j, 4096L);
                InputStream inputStream = this.k;
                String str = Util.a;
                int read = inputStream.read(bArr, 0, min);
                if (!Thread.currentThread().isInterrupted()) {
                    if (read != -1) {
                        j -= read;
                        p(read);
                    } else {
                        throw new HttpDataSource$HttpDataSourceException();
                    }
                } else {
                    throw new HttpDataSource$HttpDataSourceException(new InterruptedIOException(), 2000, 1);
                }
            }
        }
    }
}
