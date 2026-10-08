package androidx.media3.exoplayer;

import android.text.TextUtils;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.u2;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultLoadControl implements LoadControl {
    public static final ImmutableList r;
    public final Timeline.Window a;
    public final Timeline.Period b;
    public final DefaultAllocator c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;
    public final long k;
    public final int l;
    public final boolean m;
    public final long n;
    public final ImmutableMap o;
    public final ConcurrentHashMap p;
    public long q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class PlayerIdFilteringAllocatorImpl implements Allocator {
        public final HashMap a = new HashMap();
        public final PlayerId b;

        public PlayerIdFilteringAllocatorImpl(PlayerId playerId) {
            this.b = playerId;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public final synchronized void a(Allocator.AllocationNode allocationNode) {
            DefaultLoadControl.this.c.a(allocationNode);
            while (allocationNode != null) {
                f(allocationNode.a());
                allocationNode = allocationNode.next();
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public final synchronized Allocation b() {
            Allocation b;
            b = DefaultLoadControl.this.c.b();
            this.a.put(b, this.b);
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.p.get(this.b);
            if (playerLoadingState != null) {
                synchronized (playerLoadingState) {
                    playerLoadingState.d++;
                }
            }
            return b;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public final synchronized void c(Allocation allocation) {
            DefaultLoadControl.this.c.c(allocation);
            f(allocation);
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public final synchronized void d() {
            DefaultLoadControl.this.c.d();
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator
        public final synchronized int e() {
            return DefaultLoadControl.this.c.b;
        }

        public final void f(Allocation allocation) {
            PlayerId playerId = (PlayerId) this.a.remove(allocation);
            playerId.getClass();
            PlayerLoadingState playerLoadingState = (PlayerLoadingState) DefaultLoadControl.this.p.get(playerId);
            if (playerLoadingState != null) {
                synchronized (playerLoadingState) {
                    playerLoadingState.d--;
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class PlayerLoadingState {
        public int a;
        public boolean b;
        public int c;
        public int d;
    }

    static {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.k;
        Object[] objArr = {"file", "content", "data", "android.resource", "rawresource", "asset"};
        ObjectArrays.a(6, objArr);
        r = ImmutableList.j(6, objArr);
    }

    public DefaultLoadControl() {
        DefaultAllocator defaultAllocator = new DefaultAllocator();
        ImmutableMap d = ImmutableMap.d();
        a(1000, 0, "bufferForPlaybackMs", "0");
        a(1000, 0, "bufferForPlaybackForLocalPlaybackMs", "0");
        a(2000, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(1000, 0, "bufferForPlaybackAfterRebufferForLocalPlaybackMs", "0");
        a(50000, 1000, "minBufferMs", "bufferForPlaybackMs");
        a(1000, 1000, "minBufferForLocalPlaybackMs", "bufferForPlaybackForLocalPlaybackMs");
        a(50000, 2000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        a(1000, 1000, "minBufferForLocalPlaybackMs", "bufferForPlaybackAfterRebufferForLocalPlaybackMs");
        a(50000, 50000, "maxBufferMs", "minBufferMs");
        a(50000, 1000, "maxBufferForLocalPlaybackMs", "minBufferForLocalPlaybackMs");
        a(0, 0, "backBufferDurationMs", "0");
        this.a = new Timeline.Window();
        this.b = new Timeline.Period();
        this.c = defaultAllocator;
        long D = Util.D(50000L);
        this.d = D;
        long D2 = Util.D(1000L);
        this.e = D2;
        this.f = D;
        this.g = D;
        this.h = D2;
        this.i = D2;
        this.j = Util.D(2000L);
        this.k = D2;
        this.l = -1;
        this.m = true;
        this.n = Util.D(0L);
        this.p = new ConcurrentHashMap();
        this.o = ImmutableMap.a(d);
        this.q = -1L;
    }

    public static void a(int i, int i2, String str, String str2) {
        boolean z;
        if (i >= i2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        u2.g(Strings.a("%s cannot be less than %s", str, str2));
    }

    public final boolean b(LoadControl.Parameters parameters) {
        Timeline timeline = parameters.b;
        MediaItem.LocalConfiguration localConfiguration = timeline.m(timeline.g(parameters.c.a, this.b).c, this.a, 0L).b.b;
        if (localConfiguration != null) {
            String scheme = localConfiguration.a.getScheme();
            if (!TextUtils.isEmpty(scheme) && !r.contains(scheme)) {
                return false;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00ad A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(LoadControl.Parameters parameters) {
        int i;
        boolean z;
        long j;
        long j2;
        boolean z2;
        boolean z3;
        int i2;
        PlayerId playerId = parameters.a;
        PlayerLoadingState playerLoadingState = (PlayerLoadingState) this.p.get(playerId);
        playerLoadingState.getClass();
        PlayerLoadingState playerLoadingState2 = (PlayerLoadingState) this.p.get(playerId);
        playerLoadingState2.getClass();
        synchronized (playerLoadingState2) {
            i = playerLoadingState2.d;
        }
        int i3 = i * this.c.b;
        PlayerLoadingState playerLoadingState3 = (PlayerLoadingState) this.p.get(playerId);
        playerLoadingState3.getClass();
        boolean z4 = false;
        if (i3 >= playerLoadingState3.c) {
            z = true;
        } else {
            z = false;
        }
        if (playerId.equals(PlayerId.c)) {
            return !z;
        }
        boolean b = b(parameters);
        if (b) {
            j = this.e;
        } else {
            j = this.d;
        }
        if (b) {
            j2 = this.g;
        } else {
            j2 = this.f;
        }
        float f = parameters.e;
        if (f > 1.0f) {
            j = Math.min(Util.s(j, f), j2);
        }
        long max = Math.max(j, 500000L);
        long j3 = parameters.d;
        if (j3 < max) {
            if (b) {
                z2 = this.m;
            } else {
                z2 = false;
            }
            Runtime runtime = Runtime.getRuntime();
            long maxMemory = runtime.maxMemory();
            if (runtime.totalMemory() >= maxMemory) {
                long freeMemory = runtime.freeMemory();
                DefaultAllocator defaultAllocator = this.c;
                synchronized (defaultAllocator) {
                    i2 = defaultAllocator.e * defaultAllocator.b;
                }
                if (freeMemory + i2 < maxMemory / 25) {
                    z3 = false;
                    if ((z2 && z3) || !z) {
                        z4 = true;
                    }
                    playerLoadingState.b = z4;
                    if (!z4 && z2 && !z3) {
                        Log.e("DefaultLoadControl", "Stopped loading before minBufferUs reached due to memory pressure, despite prioritizeTimeOverSizeThresholds=true.");
                    }
                    if (!playerLoadingState.b && parameters.d < 500000) {
                        Log.f("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
                    }
                }
            }
            z3 = true;
            if (z2) {
                z4 = true;
                playerLoadingState.b = z4;
                if (!z4) {
                    Log.e("DefaultLoadControl", "Stopped loading before minBufferUs reached due to memory pressure, despite prioritizeTimeOverSizeThresholds=true.");
                }
                if (!playerLoadingState.b) {
                    Log.f("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
                }
            }
            z4 = true;
            playerLoadingState.b = z4;
            if (!z4) {
            }
            if (!playerLoadingState.b) {
            }
        } else if (j3 >= j2 || z) {
            playerLoadingState.b = false;
        }
        return playerLoadingState.b;
    }

    public final void d() {
        boolean isEmpty = this.p.isEmpty();
        DefaultAllocator defaultAllocator = this.c;
        int i = 0;
        if (isEmpty) {
            synchronized (defaultAllocator) {
                if (defaultAllocator.a) {
                    defaultAllocator.f(0);
                }
            }
        } else {
            Iterator it = this.p.values().iterator();
            while (it.hasNext()) {
                i += ((PlayerLoadingState) it.next()).c;
            }
            defaultAllocator.f(i);
        }
    }
}
