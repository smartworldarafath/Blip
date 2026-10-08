package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.datasource.DataSpec;
import com.google.common.collect.ImmutableMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LoadEventInfo {
    public static final AtomicLong a = new AtomicLong();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final long a;
        public final DataSpec b;
        public final long c;
        public Uri d;
        public Map e = ImmutableMap.d();
        public long f;
        public long g;

        public Builder(long j, DataSpec dataSpec, long j2) {
            this.a = j;
            this.b = dataSpec;
            this.d = dataSpec.a;
            this.c = j2;
        }
    }

    public LoadEventInfo(Builder builder) {
    }
}
