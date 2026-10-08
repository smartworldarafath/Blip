package androidx.media3.common;

import android.net.Uri;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import defpackage.q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MediaItem {
    public final String a;
    public final LocalConfiguration b;
    public final LiveConfiguration c;
    public final MediaMetadata d;
    public final ClippingProperties e;
    public final RequestMetadata f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public String a;
        public Uri b;
        public final ClippingConfiguration.Builder c = new Object();
        public final MediaItem$DrmConfiguration$Builder d;
        public final List e;
        public final ImmutableList f;
        public final long g;
        public final LiveConfiguration.Builder h;
        public final RequestMetadata i;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.common.MediaItem$ClippingConfiguration$Builder, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.media3.common.MediaItem$DrmConfiguration$Builder] */
        /* JADX WARN: Type inference failed for: r0v4, types: [androidx.media3.common.MediaItem$LiveConfiguration$Builder, java.lang.Object] */
        public Builder() {
            ?? obj = new Object();
            ImmutableList.r();
            this.d = obj;
            this.e = Collections.EMPTY_LIST;
            this.f = ImmutableList.r();
            this.h = new Object();
            this.i = RequestMetadata.a;
            this.g = -9223372036854775807L;
        }

        /* JADX WARN: Type inference failed for: r4v0, types: [androidx.media3.common.MediaItem$ClippingProperties, androidx.media3.common.MediaItem$ClippingConfiguration] */
        /* JADX WARN: Type inference failed for: r6v0, types: [androidx.media3.common.MediaItem$LiveConfiguration, java.lang.Object] */
        public final MediaItem a() {
            LocalConfiguration localConfiguration;
            this.d.getClass();
            Uri uri = this.b;
            if (uri != null) {
                localConfiguration = new LocalConfiguration(uri, this.e, this.f, this.g);
            } else {
                localConfiguration = null;
            }
            LocalConfiguration localConfiguration2 = localConfiguration;
            String str = this.a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            ?? clippingConfiguration = new ClippingConfiguration(this.c);
            this.h.getClass();
            return new MediaItem(str2, clippingConfiguration, localConfiguration2, new Object(), MediaMetadata.C, this.i);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ClippingConfiguration {
        public final long a;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Builder {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.common.MediaItem$ClippingConfiguration$Builder, java.lang.Object] */
        static {
            new ClippingConfiguration(new Object());
            Util.z(0);
            Util.z(1);
            Util.z(2);
            Util.z(3);
            Util.z(4);
            Util.z(5);
            Util.z(6);
            Util.z(7);
        }

        public ClippingConfiguration(Builder builder) {
            String str = Util.a;
            this.a = Long.MIN_VALUE;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ClippingConfiguration) && this.a == ((ClippingConfiguration) obj).a) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            long j = this.a;
            return ((int) (j ^ (j >>> 32))) * 923521;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @Deprecated
    /* loaded from: classes.dex */
    public static final class ClippingProperties extends ClippingConfiguration {
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.common.MediaItem$ClippingConfiguration$Builder, java.lang.Object] */
        static {
            new ClippingConfiguration(new Object());
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LiveConfiguration {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Builder {
        }

        static {
            q.q(0, 1, 2, 3, 4);
        }

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof LiveConfiguration)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.floatToIntBits(-3.4028235E38f) + ((Float.floatToIntBits(-3.4028235E38f) - 2147452865) * 31);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LocalConfiguration {
        public final Uri a;
        public final String b;
        public final List c;
        public final ImmutableList d;
        public final long e;

        static {
            q.q(0, 1, 2, 3, 4);
            Util.z(5);
            Util.z(6);
            Util.z(7);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public LocalConfiguration(Uri uri, List list, ImmutableList immutableList, long j) {
            this.a = uri;
            ArrayList arrayList = MimeTypes.a;
            this.b = null;
            this.c = list;
            this.d = immutableList;
            ImmutableList.Builder k = ImmutableList.k();
            for (int i = 0; i < immutableList.size(); i++) {
                k.d(new Object());
            }
            k.i();
            this.e = j;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof LocalConfiguration) {
                    LocalConfiguration localConfiguration = (LocalConfiguration) obj;
                    if (this.a.equals(localConfiguration.a) && Objects.equals(this.b, localConfiguration.b) && this.c.equals(localConfiguration.c) && this.d.equals(localConfiguration.d) && this.e == localConfiguration.e) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = this.a.hashCode() * 31;
            String str = this.b;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return (int) (((this.d.hashCode() + ((this.c.hashCode() + ((hashCode2 + hashCode) * 29791)) * 961)) * 31 * 31) + this.e);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RequestMetadata {
        public static final RequestMetadata a = new Object();

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.media3.common.MediaItem$RequestMetadata] */
        static {
            Util.z(0);
            Util.z(1);
            Util.z(2);
        }

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof RequestMetadata)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 0;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @Deprecated
    /* loaded from: classes.dex */
    public static final class Subtitle extends SubtitleConfiguration {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SubtitleConfiguration {
        static {
            q.q(0, 1, 2, 3, 4);
            Util.z(5);
            Util.z(6);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SubtitleConfiguration)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }
    }

    static {
        new Builder().a();
        Util.z(0);
        Util.z(1);
        Util.z(2);
        Util.z(3);
        Util.z(4);
        Util.z(5);
    }

    public MediaItem(String str, ClippingProperties clippingProperties, LocalConfiguration localConfiguration, LiveConfiguration liveConfiguration, MediaMetadata mediaMetadata, RequestMetadata requestMetadata) {
        this.a = str;
        this.b = localConfiguration;
        this.c = liveConfiguration;
        this.d = mediaMetadata;
        this.e = clippingProperties;
        this.f = requestMetadata;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MediaItem) {
                MediaItem mediaItem = (MediaItem) obj;
                if (Objects.equals(this.a, mediaItem.a) && this.e.equals(mediaItem.e) && Objects.equals(this.b, mediaItem.b) && this.c.equals(mediaItem.c) && Objects.equals(this.d, mediaItem.d) && Objects.equals(this.f, mediaItem.f)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.a.hashCode() * 31;
        LocalConfiguration localConfiguration = this.b;
        if (localConfiguration != null) {
            i = localConfiguration.hashCode();
        } else {
            i = 0;
        }
        int hashCode2 = (this.d.hashCode() + ((this.e.hashCode() + ((this.c.hashCode() + ((hashCode + i) * 31)) * 31)) * 31)) * 31;
        this.f.getClass();
        return hashCode2;
    }
}
