package androidx.media3.common;

import android.net.Uri;
import android.util.Pair;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.q;
import io.sentry.d;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Timeline {
    public static final Timeline a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.media3.common.Timeline$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends Timeline {
        @Override // androidx.media3.common.Timeline
        public final int b(Object obj) {
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public final Period f(int i, Period period, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public final int h() {
            return 0;
        }

        @Override // androidx.media3.common.Timeline
        public final Object l(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public final Window m(int i, Window window, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public final int o() {
            return 0;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Period {
        public Object a;
        public Object b;
        public int c;
        public long d;
        public long e;
        public boolean f;
        public AdPlaybackState g = AdPlaybackState.c;

        static {
            q.q(0, 1, 2, 3, 4);
            Util.z(5);
            Util.z(6);
        }

        public final long a(int i, int i2) {
            AdPlaybackState.AdGroup a = this.g.a(i);
            if (a.a != -1) {
                return a.f[i2];
            }
            return -9223372036854775807L;
        }

        public final int b(long j) {
            AdPlaybackState.AdGroup a;
            int i;
            AdPlaybackState adPlaybackState = this.g;
            long j2 = this.d;
            int i2 = adPlaybackState.a;
            if (j != Long.MIN_VALUE && (j2 == -9223372036854775807L || j < j2)) {
                int i3 = 0;
                while (i3 < i2) {
                    adPlaybackState.a(i3).getClass();
                    adPlaybackState.a(i3).getClass();
                    if (0 > j && ((i = (a = adPlaybackState.a(i3)).a) == -1 || a.a(-1) < i)) {
                        break;
                    }
                    i3++;
                }
                if (i3 < i2) {
                    if (j2 != -9223372036854775807L) {
                        adPlaybackState.a(i3).getClass();
                        if (0 <= j2) {
                        }
                    }
                    return i3;
                }
            }
            return -1;
        }

        public final int c(long j) {
            AdPlaybackState adPlaybackState = this.g;
            int i = adPlaybackState.a;
            int i2 = i - 1;
            if (i2 == i - 1) {
                adPlaybackState.a(i2).getClass();
            }
            while (i2 >= 0 && j != Long.MIN_VALUE) {
                adPlaybackState.a(i2).getClass();
                if (j >= 0) {
                    break;
                }
                i2--;
            }
            if (i2 >= 0) {
                AdPlaybackState.AdGroup a = adPlaybackState.a(i2);
                int i3 = a.a;
                if (i3 != -1) {
                    for (int i4 = 0; i4 < i3; i4++) {
                        int i5 = a.e[i4];
                        if (i5 != 0 && i5 != 1) {
                        }
                    }
                }
                return i2;
            }
            return -1;
        }

        public final long d(int i) {
            this.g.a(i).getClass();
            return 0L;
        }

        public final int e(int i) {
            return this.g.a(i).a(-1);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj != null && Period.class.equals(obj.getClass())) {
                    Period period = (Period) obj;
                    if (Objects.equals(this.a, period.a) && Objects.equals(this.b, period.b) && this.c == period.c && this.d == period.d && this.e == period.e && this.f == period.f && Objects.equals(this.g, period.g)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        public final boolean f(int i) {
            AdPlaybackState adPlaybackState = this.g;
            int i2 = adPlaybackState.a;
            if (i == i2 - 1 && i == i2 - 1) {
                adPlaybackState.a(i).getClass();
                return false;
            }
            return false;
        }

        public final boolean g(int i) {
            this.g.a(i).getClass();
            return false;
        }

        public final int hashCode() {
            int hashCode;
            Object obj = this.a;
            int i = 0;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            int i2 = (217 + hashCode) * 31;
            Object obj2 = this.b;
            if (obj2 != null) {
                i = obj2.hashCode();
            }
            int i3 = (((i2 + i) * 31) + this.c) * 31;
            long j = this.d;
            int i4 = (i3 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.e;
            return this.g.hashCode() + ((((i4 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.f ? 1 : 0)) * 31);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Window {
        public static final Object n = new Object();
        public static final MediaItem o;
        public Object a = n;
        public MediaItem b = o;
        public long c;
        public long d;
        public long e;
        public boolean f;
        public boolean g;
        public MediaItem.LiveConfiguration h;
        public boolean i;
        public long j;
        public long k;
        public int l;
        public int m;

        static {
            MediaItem.Builder builder = new MediaItem.Builder();
            builder.a = "androidx.media3.common.Timeline";
            builder.b = Uri.EMPTY;
            o = builder.a();
            q.q(1, 2, 3, 4, 5);
            q.q(6, 7, 8, 9, 10);
            Util.z(11);
            Util.z(12);
            Util.z(13);
            Util.z(14);
        }

        public final boolean a() {
            if (this.h != null) {
                return true;
            }
            return false;
        }

        public final void b(MediaItem mediaItem, boolean z, boolean z2, MediaItem.LiveConfiguration liveConfiguration, long j, long j2) {
            MediaItem mediaItem2;
            this.a = n;
            if (mediaItem != null) {
                mediaItem2 = mediaItem;
            } else {
                mediaItem2 = o;
            }
            this.b = mediaItem2;
            if (mediaItem != null) {
                MediaItem.LocalConfiguration localConfiguration = mediaItem.b;
            }
            this.c = -9223372036854775807L;
            this.d = -9223372036854775807L;
            this.e = -9223372036854775807L;
            this.f = z;
            this.g = z2;
            this.h = liveConfiguration;
            this.j = j;
            this.k = j2;
            this.l = 0;
            this.m = 0;
            this.i = false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Window.class.equals(obj.getClass())) {
                Window window = (Window) obj;
                if (Objects.equals(this.a, window.a) && Objects.equals(this.b, window.b) && Objects.equals(this.h, window.h) && this.c == window.c && this.d == window.d && this.e == window.e && this.f == window.f && this.g == window.g && this.i == window.i && this.j == window.j && this.k == window.k && this.l == window.l && this.m == window.m) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = (this.b.hashCode() + ((this.a.hashCode() + 217) * 31)) * 961;
            MediaItem.LiveConfiguration liveConfiguration = this.h;
            if (liveConfiguration == null) {
                hashCode = 0;
            } else {
                hashCode = liveConfiguration.hashCode();
            }
            long j = this.c;
            int i = (((hashCode2 + hashCode) * 31) + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.d;
            int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.e;
            int i3 = (((((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.i ? 1 : 0)) * 31;
            long j4 = this.j;
            int i4 = (i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
            long j5 = this.k;
            return (((((i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31) + this.l) * 31) + this.m) * 31;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.common.Timeline, java.lang.Object] */
    static {
        Util.z(0);
        Util.z(1);
        Util.z(2);
    }

    public int a(boolean z) {
        if (p()) {
            return -1;
        }
        return 0;
    }

    public abstract int b(Object obj);

    public int c(boolean z) {
        if (p()) {
            return -1;
        }
        return o() - 1;
    }

    public final int d(int i, Period period, Window window, int i2, boolean z) {
        int i3 = f(i, period, false).c;
        if (m(i3, window, 0L).m == i) {
            int e = e(i3, i2, z);
            if (e == -1) {
                return -1;
            }
            return m(e, window, 0L).l;
        }
        return i + 1;
    }

    public int e(int i, int i2, boolean z) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    if (i == c(z)) {
                        return a(z);
                    }
                    return i + 1;
                }
                d.d();
                return 0;
            }
            return i;
        }
        if (i == c(z)) {
            return -1;
        }
        return i + 1;
    }

    public boolean equals(Object obj) {
        int c;
        if (this != obj) {
            if (obj instanceof Timeline) {
                Timeline timeline = (Timeline) obj;
                if (timeline.o() == o() && timeline.h() == h()) {
                    Window window = new Window();
                    Period period = new Period();
                    Window window2 = new Window();
                    Period period2 = new Period();
                    int i = 0;
                    while (true) {
                        if (i < o()) {
                            if (!m(i, window, 0L).equals(timeline.m(i, window2, 0L))) {
                                break;
                            }
                            i++;
                        } else {
                            int i2 = 0;
                            while (true) {
                                if (i2 < h()) {
                                    if (!f(i2, period, true).equals(timeline.f(i2, period2, true))) {
                                        break;
                                    }
                                    i2++;
                                } else {
                                    int a2 = a(true);
                                    if (a2 == timeline.a(true) && (c = c(true)) == timeline.c(true)) {
                                        while (a2 != c) {
                                            int e = e(a2, 0, true);
                                            if (e == timeline.e(a2, 0, true)) {
                                                a2 = e;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public abstract Period f(int i, Period period, boolean z);

    public Period g(Object obj, Period period) {
        return f(b(obj), period, true);
    }

    public abstract int h();

    public int hashCode() {
        Window window = new Window();
        Period period = new Period();
        int o = o() + 217;
        for (int i = 0; i < o(); i++) {
            o = (o * 31) + m(i, window, 0L).hashCode();
        }
        int h = h() + (o * 31);
        for (int i2 = 0; i2 < h(); i2++) {
            h = (h * 31) + f(i2, period, true).hashCode();
        }
        int a2 = a(true);
        while (a2 != -1) {
            h = (h * 31) + a2;
            a2 = e(a2, 0, true);
        }
        return h;
    }

    public final Pair i(Window window, Period period, int i, long j) {
        Pair j2 = j(window, period, i, j, 0L);
        j2.getClass();
        return j2;
    }

    public final Pair j(Window window, Period period, int i, long j, long j2) {
        Preconditions.h(i, o());
        m(i, window, j2);
        if (j == -9223372036854775807L) {
            j = window.j;
            if (j == -9223372036854775807L) {
                return null;
            }
        }
        int i2 = window.l;
        f(i2, period, false);
        while (i2 < window.m && period.e != j) {
            int i3 = i2 + 1;
            if (f(i3, period, false).e > j) {
                break;
            }
            i2 = i3;
        }
        f(i2, period, true);
        long j3 = j - period.e;
        long j4 = period.d;
        if (j4 != -9223372036854775807L) {
            j3 = Math.min(j3, j4 - 1);
        }
        long max = Math.max(0L, j3);
        Object obj = period.b;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(max));
    }

    public int k(int i, int i2, boolean z) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    if (i == a(z)) {
                        return c(z);
                    }
                    return i - 1;
                }
                d.d();
                return 0;
            }
            return i;
        }
        if (i == a(z)) {
            return -1;
        }
        return i - 1;
    }

    public abstract Object l(int i);

    public abstract Window m(int i, Window window, long j);

    public final void n(int i, Window window) {
        m(i, window, 0L);
    }

    public abstract int o();

    public final boolean p() {
        if (o() == 0) {
            return true;
        }
        return false;
    }
}
