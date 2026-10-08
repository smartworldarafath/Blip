package androidx.media3.datasource;

import android.net.Uri;
import android.util.Base64;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.jb;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DataSchemeDataSource extends BaseDataSource {
    public DataSpec e;
    public byte[] f;
    public int g;
    public int h;

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        if (this.f != null) {
            this.f = null;
            q();
        }
        this.e = null;
    }

    @Override // androidx.media3.datasource.DataSource
    public final long l(DataSpec dataSpec) {
        r();
        this.e = dataSpec;
        Uri uri = dataSpec.a;
        long j = dataSpec.f;
        Uri normalizeScheme = uri.normalizeScheme();
        String scheme = normalizeScheme.getScheme();
        Preconditions.g("data".equals(scheme), "Unsupported scheme: %s", scheme);
        String schemeSpecificPart = normalizeScheme.getSchemeSpecificPart();
        String str = Util.a;
        String[] split = schemeSpecificPart.split(",", -1);
        if (split.length == 2) {
            String str2 = split[1];
            if (split[0].contains(";base64")) {
                try {
                    this.f = Base64.decode(str2, 0);
                } catch (IllegalArgumentException e) {
                    throw new ParserException(jb.f("Error while parsing Base64 encoded string: ", str2), e, true, 0);
                }
            } else {
                this.f = URLDecoder.decode(str2, StandardCharsets.US_ASCII.name()).getBytes(StandardCharsets.UTF_8);
            }
            long j2 = dataSpec.e;
            byte[] bArr = this.f;
            if (j2 <= bArr.length) {
                int i = (int) j2;
                this.g = i;
                int length = bArr.length - i;
                this.h = length;
                if (j != -1) {
                    this.h = (int) Math.min(length, j);
                }
                s(dataSpec);
                if (j != -1) {
                    return j;
                }
                return this.h;
            }
            this.f = null;
            throw new DataSourceException(2008);
        }
        throw new ParserException("Unexpected URI format: " + normalizeScheme, null, true, 0);
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri m() {
        DataSpec dataSpec = this.e;
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
        int i3 = this.h;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        byte[] bArr2 = this.f;
        String str = Util.a;
        System.arraycopy(bArr2, this.g, bArr, i, min);
        this.g += min;
        this.h -= min;
        p(min);
        return min;
    }
}
