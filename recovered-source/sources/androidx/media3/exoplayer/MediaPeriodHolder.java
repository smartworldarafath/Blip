package androidx.media3.exoplayer;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.Pair;
import android.view.accessibility.CaptioningManager;
import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.MaskingMediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelection;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.Ordering;
import defpackage.o7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MediaPeriodHolder {
    public final MaskingMediaPeriod a;
    public final Object b;
    public final SampleStream[] c;
    public boolean d;
    public boolean e;
    public boolean f;
    public MediaPeriodInfo g;
    public final boolean[] h;
    public final boolean[] i;
    public final RendererCapabilities[] j;
    public final TrackSelector k;
    public final MediaSourceList l;
    public MediaPeriodHolder m;
    public TrackGroupArray n;
    public TrackSelectorResult o;
    public long p;

    public MediaPeriodHolder(RendererCapabilities[] rendererCapabilitiesArr, long j, TrackSelector trackSelector, Allocator allocator, MediaSourceList mediaSourceList, MediaPeriodInfo mediaPeriodInfo, TrackSelectorResult trackSelectorResult) {
        this.j = rendererCapabilitiesArr;
        this.p = j;
        this.k = trackSelector;
        this.l = mediaSourceList;
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.a;
        this.b = mediaPeriodId.a;
        this.g = mediaPeriodInfo;
        this.n = TrackGroupArray.d;
        this.o = trackSelectorResult;
        this.c = new SampleStream[rendererCapabilitiesArr.length];
        this.h = new boolean[rendererCapabilitiesArr.length];
        this.i = new boolean[rendererCapabilitiesArr.length];
        long j2 = mediaPeriodInfo.b;
        mediaSourceList.getClass();
        Object obj = mediaPeriodId.a;
        int i = AbstractConcatenatedTimeline.d;
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        MediaSource.MediaPeriodId a = mediaPeriodId.a(pair.second);
        MediaSourceList.MediaSourceHolder mediaSourceHolder = (MediaSourceList.MediaSourceHolder) mediaSourceList.e.get(obj2);
        mediaSourceHolder.getClass();
        mediaSourceList.h.add(mediaSourceHolder);
        MediaSourceList.MediaSourceAndListener mediaSourceAndListener = (MediaSourceList.MediaSourceAndListener) mediaSourceList.g.get(mediaSourceHolder);
        if (mediaSourceAndListener != null) {
            ((BaseMediaSource) mediaSourceAndListener.a).k(mediaSourceAndListener.b);
        }
        mediaSourceHolder.c.add(a);
        MaskingMediaPeriod b = mediaSourceHolder.a.b(a, allocator, j2);
        mediaSourceList.d.put(b, mediaSourceHolder);
        mediaSourceList.c();
        this.a = b;
    }

    public final long a(TrackSelectorResult trackSelectorResult, long j, boolean z, boolean[] zArr) {
        RendererCapabilities[] rendererCapabilitiesArr;
        Object[] objArr;
        boolean z2;
        int i = 0;
        while (true) {
            boolean z3 = true;
            if (i >= trackSelectorResult.a) {
                break;
            }
            if (z || !trackSelectorResult.a(this.o, i)) {
                z3 = false;
            }
            this.i[i] = z3;
            i++;
        }
        int i2 = 0;
        while (true) {
            rendererCapabilitiesArr = this.j;
            int length = rendererCapabilitiesArr.length;
            objArr = this.c;
            if (i2 >= length) {
                break;
            }
            if (((BaseRenderer) rendererCapabilitiesArr[i2]).k == -2) {
                objArr[i2] = null;
            }
            i2++;
        }
        b();
        this.o = trackSelectorResult;
        c();
        long k = this.a.k(trackSelectorResult.c, this.i, this.c, zArr, j);
        for (int i3 = 0; i3 < rendererCapabilitiesArr.length; i3++) {
            if (((BaseRenderer) rendererCapabilitiesArr[i3]).k == -2 && this.o.b(i3)) {
                objArr[i3] = new Object();
            }
        }
        this.f = false;
        for (int i4 = 0; i4 < objArr.length; i4++) {
            if (objArr[i4] != null) {
                Preconditions.n(trackSelectorResult.b(i4));
                if (((BaseRenderer) rendererCapabilitiesArr[i4]).k != -2) {
                    this.f = true;
                }
            } else {
                if (trackSelectorResult.c[i4] == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Preconditions.n(z2);
            }
        }
        return k;
    }

    public final void b() {
        if (this.m == null) {
            int i = 0;
            while (true) {
                TrackSelectorResult trackSelectorResult = this.o;
                if (i < trackSelectorResult.a) {
                    trackSelectorResult.b(i);
                    ExoTrackSelection exoTrackSelection = this.o.c[i];
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void c() {
        if (this.m == null) {
            int i = 0;
            while (true) {
                TrackSelectorResult trackSelectorResult = this.o;
                if (i < trackSelectorResult.a) {
                    trackSelectorResult.b(i);
                    ExoTrackSelection exoTrackSelection = this.o.c[i];
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final long d() {
        long j;
        if (!this.e) {
            return this.g.b;
        }
        if (this.f) {
            j = this.a.t();
        } else {
            j = Long.MIN_VALUE;
        }
        if (j == Long.MIN_VALUE) {
            return this.g.e;
        }
        return j;
    }

    public final long e() {
        return this.g.b + this.p;
    }

    public final void f(float f, Timeline timeline) {
        this.e = true;
        this.n = this.a.q();
        TrackSelectorResult j = j(f, timeline);
        MediaPeriodInfo mediaPeriodInfo = this.g;
        long j2 = mediaPeriodInfo.b;
        long j3 = mediaPeriodInfo.e;
        if (j3 != -9223372036854775807L && j2 >= j3) {
            j2 = Math.max(0L, j3 - 1);
        }
        long a = a(j, j2, false, new boolean[this.j.length]);
        long j4 = this.p;
        MediaPeriodInfo mediaPeriodInfo2 = this.g;
        this.p = (mediaPeriodInfo2.b - a) + j4;
        this.g = mediaPeriodInfo2.b(a, mediaPeriodInfo2.c);
    }

    public final boolean g() {
        if (this.e) {
            if (!this.f || this.a.t() == Long.MIN_VALUE) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean h() {
        if (this.e) {
            if (g() || d() - this.g.b >= -9223372036854775807L) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void i() {
        b();
        MediaSourceList mediaSourceList = this.l;
        MaskingMediaPeriod maskingMediaPeriod = this.a;
        try {
            IdentityHashMap identityHashMap = mediaSourceList.d;
            MediaSourceList.MediaSourceHolder mediaSourceHolder = (MediaSourceList.MediaSourceHolder) identityHashMap.remove(maskingMediaPeriod);
            mediaSourceHolder.getClass();
            mediaSourceHolder.a.g(maskingMediaPeriod);
            mediaSourceHolder.c.remove(maskingMediaPeriod.j);
            if (!identityHashMap.isEmpty()) {
                mediaSourceList.c();
            }
            mediaSourceList.d(mediaSourceHolder);
        } catch (RuntimeException e) {
            Log.d("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TrackSelectorResult j(float f, Timeline timeline) {
        final String str;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        TrackGroupArray[] trackGroupArrayArr;
        ImmutableList r;
        RendererConfiguration rendererConfiguration;
        BaseTrackSelection baseTrackSelection;
        ImmutableList i;
        int i2;
        int[] iArr;
        double d;
        long j;
        int i3;
        int i4;
        int i5;
        int[] iArr2;
        final String str2;
        CaptioningManager captioningManager;
        Locale locale;
        final Point point;
        Pair pair;
        final boolean z6;
        Context context;
        int i6;
        int[] iArr3;
        int i7;
        TrackSelector trackSelector = this.k;
        RendererCapabilities[] rendererCapabilitiesArr = this.j;
        TrackGroupArray trackGroupArray = this.n;
        MappingTrackSelector mappingTrackSelector = (MappingTrackSelector) trackSelector;
        mappingTrackSelector.getClass();
        int i8 = 1;
        int[] iArr4 = new int[rendererCapabilitiesArr.length + 1];
        int length = rendererCapabilitiesArr.length + 1;
        TrackGroup[][] trackGroupArr = new TrackGroup[length];
        int[][][] iArr5 = new int[rendererCapabilitiesArr.length + 1][];
        for (int i9 = 0; i9 < length; i9++) {
            int i10 = trackGroupArray.a;
            trackGroupArr[i9] = new TrackGroup[i10];
            iArr5[i9] = new int[i10];
        }
        int length2 = rendererCapabilitiesArr.length;
        final int[] iArr6 = new int[length2];
        for (int i11 = 0; i11 < length2; i11++) {
            iArr6[i11] = rendererCapabilitiesArr[i11].n();
        }
        int i12 = 0;
        while (i12 < trackGroupArray.a) {
            TrackGroup a = trackGroupArray.a(i12);
            if (a.c == 5) {
                i6 = i8;
            } else {
                i6 = 0;
            }
            int length3 = rendererCapabilitiesArr.length;
            int i13 = i8;
            int i14 = 0;
            int i15 = 0;
            while (i14 < rendererCapabilitiesArr.length) {
                RendererCapabilities rendererCapabilities = rendererCapabilitiesArr[i14];
                MappingTrackSelector mappingTrackSelector2 = mappingTrackSelector;
                TrackGroupArray trackGroupArray2 = trackGroupArray;
                int i16 = i8;
                int i17 = 0;
                for (int i18 = 0; i18 < a.a; i18++) {
                    i17 = Math.max(i17, rendererCapabilities.f(a.d[i18]) & 7);
                }
                if (iArr4[i14] == 0) {
                    i7 = i16;
                } else {
                    i7 = 0;
                }
                if (i17 > i15 || (i17 == i15 && i6 != 0 && i13 == 0 && i7 != 0)) {
                    i15 = i17;
                    i13 = i7;
                    length3 = i14;
                }
                i14++;
                i8 = i16;
                mappingTrackSelector = mappingTrackSelector2;
                trackGroupArray = trackGroupArray2;
            }
            MappingTrackSelector mappingTrackSelector3 = mappingTrackSelector;
            TrackGroupArray trackGroupArray3 = trackGroupArray;
            int i19 = i8;
            if (length3 == rendererCapabilitiesArr.length) {
                iArr3 = new int[a.a];
            } else {
                RendererCapabilities rendererCapabilities2 = rendererCapabilitiesArr[length3];
                int[] iArr7 = new int[a.a];
                for (int i20 = 0; i20 < a.a; i20++) {
                    iArr7[i20] = rendererCapabilities2.f(a.d[i20]);
                }
                iArr3 = iArr7;
            }
            int i21 = iArr4[length3];
            trackGroupArr[length3][i21] = a;
            iArr5[length3][i21] = iArr3;
            iArr4[length3] = i21 + 1;
            i12++;
            i8 = i19;
            mappingTrackSelector = mappingTrackSelector3;
            trackGroupArray = trackGroupArray3;
        }
        MappingTrackSelector mappingTrackSelector4 = mappingTrackSelector;
        int i22 = i8;
        TrackGroupArray[] trackGroupArrayArr2 = new TrackGroupArray[rendererCapabilitiesArr.length];
        String[] strArr = new String[rendererCapabilitiesArr.length];
        int[] iArr8 = new int[rendererCapabilitiesArr.length];
        for (int i23 = 0; i23 < rendererCapabilitiesArr.length; i23++) {
            int i24 = iArr4[i23];
            trackGroupArrayArr2[i23] = new TrackGroupArray((TrackGroup[]) Util.F(i24, trackGroupArr[i23]));
            iArr5[i23] = (int[][]) Util.F(i24, iArr5[i23]);
            strArr[i23] = rendererCapabilitiesArr[i23].getName();
            iArr8[i23] = ((BaseRenderer) rendererCapabilitiesArr[i23]).k;
        }
        MappingTrackSelector.MappedTrackInfo mappedTrackInfo = new MappingTrackSelector.MappedTrackInfo(iArr8, trackGroupArrayArr2, iArr6, iArr5, new TrackGroupArray((TrackGroup[]) Util.F(iArr4[rendererCapabilitiesArr.length], trackGroupArr[rendererCapabilitiesArr.length])));
        final DefaultTrackSelector defaultTrackSelector = (DefaultTrackSelector) mappingTrackSelector4;
        defaultTrackSelector.g = Thread.currentThread();
        if (defaultTrackSelector.j == null && (context = defaultTrackSelector.c) != null) {
            defaultTrackSelector.j = Boolean.valueOf(Util.C(context));
        }
        if (defaultTrackSelector.f.B && Build.VERSION.SDK_INT >= 32 && defaultTrackSelector.h == null) {
            defaultTrackSelector.h = new SpatializerWrapper(defaultTrackSelector.c, new defpackage.e(9, defaultTrackSelector), defaultTrackSelector.j);
        }
        int i25 = mappedTrackInfo.a;
        ExoTrackSelection.Definition[] definitionArr = new ExoTrackSelection.Definition[i25];
        DefaultTrackSelector.e(mappedTrackInfo, defaultTrackSelector.f, definitionArr);
        DefaultTrackSelector.c(mappedTrackInfo, defaultTrackSelector.f, definitionArr);
        DefaultTrackSelector.d(mappedTrackInfo, defaultTrackSelector.f, definitionArr);
        final DefaultTrackSelector.Parameters parameters = defaultTrackSelector.f;
        Context context2 = defaultTrackSelector.c;
        int i26 = mappedTrackInfo.a;
        Pair g = DefaultTrackSelector.g(definitionArr, i22);
        if (g == null) {
            int i27 = 0;
            while (true) {
                if (i27 < i26) {
                    if (2 == iArr8[i27] && trackGroupArrayArr2[i27].a > 0) {
                        z6 = true;
                        break;
                    }
                    i27++;
                } else {
                    z6 = false;
                    break;
                }
            }
            g = DefaultTrackSelector.k(1, mappedTrackInfo, iArr5, new DefaultTrackSelector.TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.d
                @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
                public final List a(int i28, TrackGroup trackGroup, int[] iArr9) {
                    Ordering ordering = DefaultTrackSelector.k;
                    DefaultTrackSelector defaultTrackSelector2 = DefaultTrackSelector.this;
                    defaultTrackSelector2.getClass();
                    DefaultTrackSelector.Parameters parameters2 = parameters;
                    o7 o7Var = new o7(defaultTrackSelector2, parameters2);
                    int i29 = iArr6[i28];
                    ImmutableList.Builder k = ImmutableList.k();
                    for (int i30 = 0; i30 < trackGroup.a; i30++) {
                        k.d(new DefaultTrackSelector.AudioTrackInfo(i28, trackGroup, i30, parameters2, iArr9[i30], z6, o7Var, i29));
                    }
                    return k.i();
                }
            }, new androidx.media3.exoplayer.trackselection.b(2));
            if (g != null) {
                definitionArr[((Integer) g.second).intValue()] = (ExoTrackSelection.Definition) g.first;
            }
        }
        if (g == null) {
            str = null;
        } else {
            ExoTrackSelection.Definition definition = (ExoTrackSelection.Definition) g.first;
            str = definition.a.d[definition.b[0]].d;
        }
        Pair g2 = DefaultTrackSelector.g(definitionArr, 2);
        Pair g3 = DefaultTrackSelector.g(definitionArr, 4);
        if (g2 == null && g3 == null) {
            parameters.q.getClass();
            if (parameters.g && context2 != null) {
                point = Util.o(context2);
            } else {
                point = null;
            }
            Pair k = DefaultTrackSelector.k(2, mappedTrackInfo, iArr5, new DefaultTrackSelector.TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.c
                /* JADX WARN: Removed duplicated region for block: B:24:0x0052  */
                /* JADX WARN: Removed duplicated region for block: B:36:0x005c  */
                @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final List a(int i28, TrackGroup trackGroup, int[] iArr9) {
                    int i29;
                    int i30;
                    int i31;
                    int i32;
                    boolean z7;
                    int i33;
                    int i34;
                    int i35;
                    int i36;
                    int i37;
                    Point point2;
                    int i38;
                    int i39;
                    boolean z8;
                    boolean z9;
                    TrackGroup trackGroup2 = trackGroup;
                    Ordering ordering = DefaultTrackSelector.k;
                    int i40 = iArr6[i28];
                    DefaultTrackSelector.Parameters parameters2 = DefaultTrackSelector.Parameters.this;
                    Point point3 = point;
                    if (point3 != null) {
                        i29 = point3.x;
                    } else {
                        i29 = parameters2.e;
                    }
                    if (point3 != null) {
                        i30 = point3.y;
                    } else {
                        i30 = parameters2.f;
                    }
                    boolean z10 = parameters2.h;
                    if (i29 != Integer.MAX_VALUE && i30 != Integer.MAX_VALUE) {
                        int i41 = Integer.MAX_VALUE;
                        for (int i42 = 0; i42 < trackGroup2.a; i42++) {
                            Format format = trackGroup2.d[i42];
                            int i43 = format.w;
                            int i44 = format.x;
                            if (i43 > 0 && i44 > 0) {
                                if (z10) {
                                    if (i43 > i44) {
                                        z8 = true;
                                    } else {
                                        z8 = false;
                                    }
                                    if (i29 > i30) {
                                        z9 = true;
                                    } else {
                                        z9 = false;
                                    }
                                    if (z8 != z9) {
                                        i35 = i30;
                                        i34 = i29;
                                        i36 = i43 * i34;
                                        i37 = i44 * i35;
                                        if (i36 < i37) {
                                            point2 = new Point(i35, Util.e(i37, i43));
                                        } else {
                                            point2 = new Point(Util.e(i36, i44), i34);
                                        }
                                        i38 = format.w;
                                        i39 = i38 * i44;
                                        if (i38 >= ((int) (point2.x * 0.98f)) && i44 >= ((int) (point2.y * 0.98f)) && i39 < i41) {
                                            i41 = i39;
                                        }
                                    }
                                }
                                i34 = i30;
                                i35 = i29;
                                i36 = i43 * i34;
                                i37 = i44 * i35;
                                if (i36 < i37) {
                                }
                                i38 = format.w;
                                i39 = i38 * i44;
                                if (i38 >= ((int) (point2.x * 0.98f))) {
                                    i41 = i39;
                                }
                            }
                        }
                        i31 = i41;
                    } else {
                        i31 = Integer.MAX_VALUE;
                    }
                    ImmutableList.Builder k2 = ImmutableList.k();
                    int i45 = 0;
                    while (i45 < trackGroup2.a) {
                        Format format2 = trackGroup2.d[i45];
                        int i46 = format2.w;
                        if (i46 != -1 && (i33 = format2.x) != -1) {
                            i32 = i46 * i33;
                        } else {
                            i32 = -1;
                        }
                        if (i31 != Integer.MAX_VALUE && (i32 == -1 || i32 > i31)) {
                            z7 = false;
                        } else {
                            z7 = true;
                        }
                        k2.d(new DefaultTrackSelector.VideoTrackInfo(i28, trackGroup2, i45, parameters2, iArr9[i45], str, i40, z7));
                        i45++;
                        trackGroup2 = trackGroup;
                    }
                    return k2.i();
                }
            }, new androidx.media3.exoplayer.trackselection.b(1));
            if (k == null) {
                parameters.q.getClass();
                pair = DefaultTrackSelector.k(4, mappedTrackInfo, iArr5, new DefaultTrackSelector.TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.a
                    @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
                    public final List a(int i28, TrackGroup trackGroup, int[] iArr9) {
                        Ordering ordering = DefaultTrackSelector.k;
                        ImmutableList.Builder k2 = ImmutableList.k();
                        for (int i29 = 0; i29 < trackGroup.a; i29++) {
                            k2.d(new DefaultTrackSelector.ImageTrackInfo(i28, trackGroup, i29, DefaultTrackSelector.Parameters.this, iArr9[i29]));
                        }
                        return k2.i();
                    }
                }, new androidx.media3.exoplayer.trackselection.b(0));
            } else {
                pair = null;
            }
            if (pair != null) {
                definitionArr[((Integer) pair.second).intValue()] = (ExoTrackSelection.Definition) pair.first;
            } else if (k != null) {
                definitionArr[((Integer) k.second).intValue()] = (ExoTrackSelection.Definition) k.first;
            }
        }
        if (DefaultTrackSelector.g(definitionArr, 3) == null) {
            parameters.q.getClass();
            if (parameters.t && context2 != null && (captioningManager = (CaptioningManager) context2.getSystemService("captioning")) != null && captioningManager.isEnabled() && (locale = captioningManager.getLocale()) != null) {
                String str3 = Util.a;
                str2 = locale.toLanguageTag();
            } else {
                str2 = null;
            }
            Pair k2 = DefaultTrackSelector.k(3, mappedTrackInfo, iArr5, new DefaultTrackSelector.TrackInfo.Factory() { // from class: androidx.media3.exoplayer.trackselection.e
                @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo.Factory
                public final List a(int i28, TrackGroup trackGroup, int[] iArr9) {
                    Ordering ordering = DefaultTrackSelector.k;
                    ImmutableList.Builder k3 = ImmutableList.k();
                    for (int i29 = 0; i29 < trackGroup.a; i29++) {
                        k3.d(new DefaultTrackSelector.TextTrackInfo(i28, trackGroup, i29, DefaultTrackSelector.Parameters.this, iArr9[i29], str, str2));
                    }
                    return k3.i();
                }
            }, new androidx.media3.exoplayer.trackselection.b(3));
            if (k2 != null) {
                definitionArr[((Integer) k2.second).intValue()] = (ExoTrackSelection.Definition) k2.first;
            }
        }
        parameters.q.getClass();
        ImmutableSet.Builder j2 = ImmutableSet.j();
        int j3 = RendererCapabilities.j(0, 0, 0, 0);
        int i28 = 0;
        while (i28 < i25) {
            ExoTrackSelection.Definition definition2 = definitionArr[i28];
            if (definition2 != null) {
                TrackGroup trackGroup = definition2.a;
                if (!parameters.F.get(i28)) {
                    i5 = i28;
                    if (!parameters.w.contains(Integer.valueOf(trackGroup.c))) {
                        j2.h(trackGroup.b);
                        int i29 = 0;
                        while (true) {
                            int[] iArr9 = definition2.b;
                            iArr2 = iArr8;
                            if (i29 < iArr9.length) {
                                String str4 = trackGroup.d[iArr9[i29]].n;
                                if (str4 != null) {
                                    j2.h(str4);
                                }
                                i29++;
                                iArr8 = iArr2;
                            }
                        }
                        i28 = i5 + 1;
                        iArr8 = iArr2;
                    }
                    iArr2 = iArr8;
                    i28 = i5 + 1;
                    iArr8 = iArr2;
                }
            }
            i5 = i28;
            iArr2 = iArr8;
            i28 = i5 + 1;
            iArr8 = iArr2;
        }
        int[] iArr10 = iArr8;
        ImmutableSet j4 = j2.j();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i30 = 0;
        while (i30 < i26) {
            if (iArr10[i30] != 5) {
                i4 = i30;
            } else {
                TrackGroupArray trackGroupArray4 = trackGroupArrayArr2[i30];
                i4 = i30;
                int i31 = 0;
                while (i31 < trackGroupArray4.a) {
                    TrackGroup a2 = trackGroupArray4.a(i31);
                    arrayList.add(a2);
                    TrackGroupArray[] trackGroupArrayArr3 = trackGroupArrayArr2;
                    int[] iArr11 = (int[]) iArr5[i4][i31].clone();
                    int[][][] iArr12 = iArr5;
                    TrackGroupArray trackGroupArray5 = trackGroupArray4;
                    for (int i32 = 0; i32 < iArr11.length; i32++) {
                        String str5 = a2.d[i32].n;
                        if (str5 != null && !j4.contains(str5)) {
                            iArr11[i32] = j3;
                        }
                    }
                    arrayList2.add(iArr11);
                    i31++;
                    iArr5 = iArr12;
                    trackGroupArrayArr2 = trackGroupArrayArr3;
                    trackGroupArray4 = trackGroupArray5;
                }
            }
            i30 = i4 + 1;
            iArr5 = iArr5;
            trackGroupArrayArr2 = trackGroupArrayArr2;
        }
        TrackGroupArray[] trackGroupArrayArr4 = trackGroupArrayArr2;
        int[][][] iArr13 = iArr5;
        int size = arrayList.size();
        TrackGroup[] trackGroupArr2 = new TrackGroup[size];
        if (arrayList.size() == size) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        arrayList.toArray(trackGroupArr2);
        TrackGroupArray trackGroupArray6 = new TrackGroupArray(trackGroupArr2);
        int size2 = arrayList2.size();
        int[][] iArr14 = new int[size2];
        if (arrayList2.size() == size2) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.n(z2);
        arrayList2.toArray(iArr14);
        for (int i33 = 0; i33 < i26; i33++) {
            if (iArr10[i33] == 5) {
                ExoTrackSelection.Definition j5 = DefaultTrackSelector.j(trackGroupArray6, iArr14, parameters);
                definitionArr[i33] = j5;
                if (j5 == null) {
                    break;
                }
                int indexOf = trackGroupArray6.b.indexOf(j5.a);
                if (indexOf >= 0) {
                    i3 = indexOf;
                } else {
                    i3 = -1;
                }
                Arrays.fill(iArr14[i3], j3);
            }
        }
        for (int i34 = 0; i34 < i26; i34++) {
            int i35 = iArr10[i34];
            if (i35 != 2 && i35 != 1) {
                if (i35 != 3 && i35 != 4) {
                    if (i35 != 5 && definitionArr[i34] == null) {
                        definitionArr[i34] = DefaultTrackSelector.j(trackGroupArrayArr4[i34], iArr13[i34], parameters);
                    }
                }
            }
        }
        DefaultTrackSelector.e(mappedTrackInfo, defaultTrackSelector.f, definitionArr);
        DefaultTrackSelector.c(mappedTrackInfo, defaultTrackSelector.f, definitionArr);
        DefaultTrackSelector.d(mappedTrackInfo, defaultTrackSelector.f, definitionArr);
        AdaptiveTrackSelection.Factory factory = defaultTrackSelector.d;
        defaultTrackSelector.b.getClass();
        factory.getClass();
        ArrayList arrayList3 = new ArrayList();
        for (ExoTrackSelection.Definition definition3 : definitionArr) {
            if (definition3 != null && definition3.b.length > 1) {
                ImmutableList.Builder k3 = ImmutableList.k();
                k3.d(new AdaptiveTrackSelection.AdaptationCheckpoint(0L, 0L));
                arrayList3.add(k3);
            } else {
                arrayList3.add(null);
            }
        }
        int length4 = definitionArr.length;
        long[][] jArr = new long[length4];
        for (int i36 = 0; i36 < definitionArr.length; i36++) {
            ExoTrackSelection.Definition definition4 = definitionArr[i36];
            if (definition4 == null) {
                jArr[i36] = new long[0];
            } else {
                int[] iArr15 = definition4.b;
                jArr[i36] = new long[iArr15.length];
                for (int i37 = 0; i37 < iArr15.length; i37++) {
                    long j6 = definition4.a.d[iArr15[i37]].k;
                    long[] jArr2 = jArr[i36];
                    if (j6 == -1) {
                        j6 = 0;
                    }
                    jArr2[i37] = j6;
                }
                Arrays.sort(jArr[i36]);
            }
        }
        int[] iArr16 = new int[length4];
        long[] jArr3 = new long[length4];
        for (int i38 = 0; i38 < length4; i38++) {
            long[] jArr4 = jArr[i38];
            if (jArr4.length == 0) {
                j = 0;
            } else {
                j = jArr4[0];
            }
            jArr3[i38] = j;
        }
        AdaptiveTrackSelection.a(arrayList3, jArr3);
        ListMultimap b = MultimapBuilder.a().a().b();
        int i39 = 0;
        while (i39 < length4) {
            long[] jArr5 = jArr[i39];
            if (jArr5.length <= 1) {
                i2 = length4;
                iArr = iArr16;
            } else {
                int length5 = jArr5.length;
                double[] dArr = new double[length5];
                int i40 = 0;
                while (true) {
                    long[] jArr6 = jArr[i39];
                    i2 = length4;
                    double d2 = 0.0d;
                    if (i40 >= jArr6.length) {
                        break;
                    }
                    int[] iArr17 = iArr16;
                    long j7 = jArr6[i40];
                    if (j7 != -1) {
                        d2 = Math.log(j7);
                    }
                    dArr[i40] = d2;
                    i40++;
                    length4 = i2;
                    iArr16 = iArr17;
                }
                iArr = iArr16;
                int i41 = length5 - 1;
                double d3 = dArr[i41] - dArr[0];
                int i42 = 0;
                while (i42 < i41) {
                    double d4 = dArr[i42];
                    i42++;
                    double d5 = (d4 + dArr[i42]) * 0.5d;
                    if (d3 == 0.0d) {
                        d = 1.0d;
                    } else {
                        d = (d5 - dArr[0]) / d3;
                    }
                    b.a(Double.valueOf(d), Integer.valueOf(i39));
                    d3 = d3;
                }
            }
            i39++;
            length4 = i2;
            iArr16 = iArr;
        }
        int[] iArr18 = iArr16;
        ImmutableList m = ImmutableList.m(b.values());
        for (int i43 = 0; i43 < m.size(); i43++) {
            int intValue = ((Integer) m.get(i43)).intValue();
            int i44 = iArr18[intValue] + 1;
            iArr18[intValue] = i44;
            jArr3[intValue] = jArr[intValue][i44];
            AdaptiveTrackSelection.a(arrayList3, jArr3);
        }
        for (int i45 = 0; i45 < definitionArr.length; i45++) {
            if (arrayList3.get(i45) != null) {
                jArr3[i45] = jArr3[i45] * 2;
            }
        }
        AdaptiveTrackSelection.a(arrayList3, jArr3);
        ImmutableList.Builder k4 = ImmutableList.k();
        for (int i46 = 0; i46 < arrayList3.size(); i46++) {
            ImmutableList.Builder builder = (ImmutableList.Builder) arrayList3.get(i46);
            if (builder == null) {
                i = ImmutableList.r();
            } else {
                i = builder.i();
            }
            k4.d(i);
        }
        ImmutableList i47 = k4.i();
        ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
        for (int i48 = 0; i48 < definitionArr.length; i48++) {
            ExoTrackSelection.Definition definition5 = definitionArr[i48];
            if (definition5 != null) {
                int[] iArr19 = definition5.b;
                if (iArr19.length != 0) {
                    int length6 = iArr19.length;
                    TrackGroup trackGroup2 = definition5.a;
                    if (length6 == 1) {
                        baseTrackSelection = new BaseTrackSelection(trackGroup2, new int[]{iArr19[0]});
                    } else {
                        ImmutableList immutableList = (ImmutableList) i47.get(i48);
                        BaseTrackSelection baseTrackSelection2 = new BaseTrackSelection(trackGroup2, iArr19);
                        ImmutableList.m(immutableList);
                        baseTrackSelection = baseTrackSelection2;
                    }
                    exoTrackSelectionArr[i48] = baseTrackSelection;
                }
            }
        }
        RendererConfiguration[] rendererConfigurationArr = new RendererConfiguration[i25];
        for (int i49 = 0; i49 < i25; i49++) {
            int i50 = mappedTrackInfo.b[i49];
            if (!defaultTrackSelector.f.F.get(i49) && !defaultTrackSelector.f.w.contains(Integer.valueOf(i50)) && (mappedTrackInfo.b[i49] == -2 || exoTrackSelectionArr[i49] != null)) {
                rendererConfiguration = RendererConfiguration.c;
            } else {
                rendererConfiguration = null;
            }
            rendererConfigurationArr[i49] = rendererConfiguration;
        }
        defaultTrackSelector.f.getClass();
        defaultTrackSelector.f.q.getClass();
        Pair create = Pair.create(rendererConfigurationArr, exoTrackSelectionArr);
        TrackSelection[] trackSelectionArr = (TrackSelection[]) create.second;
        int length7 = trackSelectionArr.length;
        List[] listArr = new List[length7];
        for (int i51 = 0; i51 < trackSelectionArr.length; i51++) {
            TrackSelection trackSelection = trackSelectionArr[i51];
            if (trackSelection != null) {
                r = ImmutableList.t(trackSelection);
            } else {
                r = ImmutableList.r();
            }
            listArr[i51] = r;
        }
        ImmutableList.Builder builder2 = new ImmutableList.Builder();
        int i52 = 0;
        while (true) {
            int i53 = mappedTrackInfo.a;
            TrackGroupArray[] trackGroupArrayArr5 = mappedTrackInfo.c;
            if (i52 >= i53) {
                break;
            }
            TrackGroupArray trackGroupArray7 = trackGroupArrayArr5[i52];
            int i54 = 0;
            while (i54 < trackGroupArray7.a) {
                TrackGroup a3 = trackGroupArray7.a(i54);
                int i55 = trackGroupArrayArr5[i52].a(i54).a;
                int[] iArr20 = new int[i55];
                int i56 = 0;
                int i57 = 0;
                while (i56 < i55) {
                    List[] listArr2 = listArr;
                    if ((mappedTrackInfo.e[i52][i54][i56] & 7) == 4) {
                        iArr20[i57] = i56;
                        i57++;
                    }
                    i56++;
                    listArr = listArr2;
                }
                List[] listArr3 = listArr;
                int[] copyOf = Arrays.copyOf(iArr20, i57);
                TrackGroupArray trackGroupArray8 = trackGroupArray7;
                int i58 = 16;
                String str6 = null;
                int i59 = 0;
                boolean z7 = false;
                int i60 = 0;
                while (i59 < copyOf.length) {
                    int[] iArr21 = copyOf;
                    String str7 = trackGroupArrayArr5[i52].a(i54).d[copyOf[i59]].p;
                    int i61 = i60 + 1;
                    if (i60 == 0) {
                        str6 = str7;
                    } else {
                        z7 = (!Objects.equals(str6, str7)) | z7;
                    }
                    i58 = Math.min(i58, mappedTrackInfo.e[i52][i54][i59] & 24);
                    i59++;
                    i60 = i61;
                    copyOf = iArr21;
                }
                if (z7) {
                    i58 = Math.min(i58, mappedTrackInfo.d[i52]);
                }
                if (i58 != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                int i62 = a3.a;
                int[] iArr22 = new int[i62];
                boolean[] zArr = new boolean[i62];
                int i63 = 0;
                while (i63 < a3.a) {
                    iArr22[i63] = mappedTrackInfo.e[i52][i54][i63] & 7;
                    int i64 = 0;
                    boolean z8 = false;
                    while (i64 < length7) {
                        List list = listArr3[i64];
                        int i65 = length7;
                        int i66 = i52;
                        int i67 = 0;
                        while (true) {
                            if (i67 < list.size()) {
                                TrackSelection trackSelection2 = (TrackSelection) list.get(i67);
                                int i68 = i67;
                                if (((BaseTrackSelection) trackSelection2).a.equals(a3)) {
                                    BaseTrackSelection baseTrackSelection3 = (BaseTrackSelection) trackSelection2;
                                    trackGroupArrayArr = trackGroupArrayArr5;
                                    int i69 = 0;
                                    while (true) {
                                        if (i69 < baseTrackSelection3.b) {
                                            if (baseTrackSelection3.c[i69] == i63) {
                                                break;
                                            }
                                            i69++;
                                        } else {
                                            i69 = -1;
                                            break;
                                        }
                                    }
                                    if (i69 != -1) {
                                        z8 = true;
                                        break;
                                    }
                                } else {
                                    trackGroupArrayArr = trackGroupArrayArr5;
                                }
                                i67 = i68 + 1;
                                trackGroupArrayArr5 = trackGroupArrayArr;
                            } else {
                                trackGroupArrayArr = trackGroupArrayArr5;
                                break;
                            }
                        }
                        i64++;
                        length7 = i65;
                        i52 = i66;
                        trackGroupArrayArr5 = trackGroupArrayArr;
                    }
                    zArr[i63] = z8;
                    i63++;
                    i52 = i52;
                }
                builder2.d(new Tracks.Group(a3, z5, iArr22, zArr));
                i54++;
                listArr = listArr3;
                trackGroupArray7 = trackGroupArray8;
                length7 = length7;
                i52 = i52;
            }
            i52++;
            length7 = length7;
        }
        TrackGroupArray trackGroupArray9 = mappedTrackInfo.f;
        for (int i70 = 0; i70 < trackGroupArray9.a; i70++) {
            TrackGroup a4 = trackGroupArray9.a(i70);
            int[] iArr23 = new int[a4.a];
            Arrays.fill(iArr23, 0);
            builder2.d(new Tracks.Group(a4, false, iArr23, new boolean[a4.a]));
        }
        TrackSelectorResult trackSelectorResult = new TrackSelectorResult((RendererConfiguration[]) create.first, (ExoTrackSelection[]) create.second, new Tracks(builder2.i()), mappedTrackInfo);
        for (int i71 = 0; i71 < trackSelectorResult.a; i71++) {
            boolean b2 = trackSelectorResult.b(i71);
            ExoTrackSelection[] exoTrackSelectionArr2 = trackSelectorResult.c;
            if (b2) {
                if (exoTrackSelectionArr2[i71] == null && ((BaseRenderer) this.j[i71]).k != -2) {
                    z4 = false;
                    Preconditions.n(z4);
                }
                z4 = true;
                Preconditions.n(z4);
            } else {
                if (exoTrackSelectionArr2[i71] == null) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                Preconditions.n(z3);
            }
        }
        for (ExoTrackSelection exoTrackSelection : trackSelectorResult.c) {
        }
        return trackSelectorResult;
    }
}
