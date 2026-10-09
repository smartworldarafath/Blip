package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource$CleartextNotPermittedException;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.source.IcyDataSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ForwardingSeekMap;
import androidx.media3.extractor.ForwardingTrackOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import androidx.media3.extractor.mp3.Mp3Extractor;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import defpackage.eb;
import defpackage.fb;
import defpackage.gb;
import defpackage.k8;
import defpackage.l6;
import defpackage.n5;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProgressiveMediaPeriod implements MediaPeriod, ExtractorOutput, Loader.Callback<ExtractingLoadable>, Loader.ReleaseCallback, SampleQueue.UpstreamFormatChangedListener {
    public static final Map b0;
    public static final Format c0;
    public MaskingMediaPeriod A;
    public IcyHeaders B;
    public ControlledTrackOutput[] C;
    public SampleQueue[] D;
    public TrackId[] E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public TrackState J;
    public SeekMap K;
    public long L;
    public boolean M;
    public int N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public int S;
    public final ArrayList T;
    public boolean U;
    public long V;
    public long W;
    public boolean X;
    public int Y;
    public boolean Z;
    public boolean a0;
    public final Uri j;
    public final DataSource k;
    public final DrmSessionManager l;
    public final LoadErrorHandlingPolicy m;
    public final MediaSourceEventListener.EventDispatcher n;
    public final DrmSessionEventListener.EventDispatcher o;
    public final ProgressiveMediaSource p;
    public final Allocator q;
    public final long r;
    public final boolean s;
    public final long t;
    public final Loader u;
    public final BundledExtractorsAdapter v;
    public final ConditionVariable w;
    public final b x;
    public final b y;
    public final Handler z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ControlledTrackOutput extends ForwardingTrackOutput {
        public final SampleQueue b;
        public final DiscardingTrackOutput c;
        public final AtomicReference d;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class OutputMode {
            public static final OutputMode j;
            public static final OutputMode k;
            public static final OutputMode l;
            public static final /* synthetic */ OutputMode[] m;

            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.media3.exoplayer.source.ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.media3.exoplayer.source.ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode] */
            /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.media3.exoplayer.source.ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode] */
            static {
                ?? r0 = new Enum("PASS_THROUGH", 0);
                j = r0;
                ?? r1 = new Enum("DISCARD_AFTER_NEXT_SAMPLE_METADATA", 1);
                k = r1;
                ?? r2 = new Enum("DISCARDING", 2);
                l = r2;
                m = new OutputMode[]{r0, r1, r2};
            }

            public static OutputMode valueOf(String str) {
                return (OutputMode) Enum.valueOf(OutputMode.class, str);
            }

            public static OutputMode[] values() {
                return (OutputMode[]) m.clone();
            }
        }

        public ControlledTrackOutput(SampleQueue sampleQueue) {
            super(sampleQueue);
            this.b = sampleQueue;
            this.c = new DiscardingTrackOutput();
            this.d = new AtomicReference(OutputMode.j);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public final int a(DataReader dataReader, int i, boolean z) {
            return h().a(dataReader, i, z);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public final void b(ParsableByteArray parsableByteArray, int i, int i2) {
            h().b(parsableByteArray, i, i2);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public final int c(DataReader dataReader, int i, boolean z) {
            return h().c(dataReader, i, z);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public final void f(int i, ParsableByteArray parsableByteArray) {
            h().f(i, parsableByteArray);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public final void g(long j, int i, int i2, int i3, TrackOutput.CryptoData cryptoData) {
            h().g(j, i, i2, i3, cryptoData);
            AtomicReference atomicReference = this.d;
            if (atomicReference.get() == OutputMode.k) {
                this.b.p(false);
                atomicReference.set(OutputMode.l);
            }
        }

        public final TrackOutput h() {
            if (this.d.get() == OutputMode.l) {
                return this.c;
            }
            return this.b;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ExtractingLoadable implements Loader.Loadable, IcyDataSource.Listener {
        public final Uri b;
        public final StatsDataSource c;
        public final ProgressiveMediaExtractor d;
        public final ExtractorOutput e;
        public final ConditionVariable f;
        public volatile boolean h;
        public long j;
        public TrackOutput l;
        public boolean m;
        public final PositionHolder g = new Object();
        public boolean i = true;
        public final long a = LoadEventInfo.a.getAndIncrement();
        public DataSpec k = c(0, null);

        /* JADX WARN: Type inference failed for: r1v2, types: [androidx.media3.extractor.PositionHolder, java.lang.Object] */
        public ExtractingLoadable(Uri uri, DataSource dataSource, BundledExtractorsAdapter bundledExtractorsAdapter, ExtractorOutput extractorOutput, ConditionVariable conditionVariable) {
            this.b = uri;
            this.c = new StatsDataSource(dataSource);
            this.d = bundledExtractorsAdapter;
            this.e = extractorOutput;
            this.f = conditionVariable;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public final void a() {
            DataSource dataSource;
            Extractor extractor;
            int i;
            int i2 = 0;
            String str = null;
            while (i2 == 0 && !this.h) {
                try {
                    long j = this.g.a;
                    DataSpec c = c(j, str);
                    this.k = c;
                    long l = this.c.l(c);
                    if (this.h) {
                        if (i2 != 1 && ((BundledExtractorsAdapter) this.d).a() != -1) {
                            this.g.a = ((BundledExtractorsAdapter) this.d).a();
                        }
                        StatsDataSource statsDataSource = this.c;
                        if (statsDataSource != null) {
                            try {
                                statsDataSource.close();
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                        return;
                    }
                    List list = (List) this.c.a.i().get("ETag");
                    if (list != null && !list.isEmpty()) {
                        str = (String) list.get(0);
                    } else {
                        str = null;
                    }
                    if (l != -1) {
                        l += j;
                        ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
                        progressiveMediaPeriod.z.post(new b(progressiveMediaPeriod, 2));
                    }
                    long j2 = l;
                    ProgressiveMediaPeriod.this.B = IcyHeaders.d(this.c.a.i());
                    StatsDataSource statsDataSource2 = this.c;
                    IcyHeaders icyHeaders = ProgressiveMediaPeriod.this.B;
                    if (icyHeaders != null && (i = icyHeaders.f) != -1) {
                        dataSource = new IcyDataSource(statsDataSource2, i, this);
                        TrackOutput D = ProgressiveMediaPeriod.this.D(new TrackId(0, true));
                        this.l = D;
                        D.e(ProgressiveMediaPeriod.c0);
                    } else {
                        dataSource = statsDataSource2;
                    }
                    ((BundledExtractorsAdapter) this.d).b(dataSource, this.b, this.c.a.i(), j, j2, this.e);
                    if (ProgressiveMediaPeriod.this.B != null && (extractor = ((BundledExtractorsAdapter) this.d).b) != null && (extractor instanceof Mp3Extractor)) {
                        ((Mp3Extractor) extractor).r = true;
                    }
                    if (this.i) {
                        ProgressiveMediaExtractor progressiveMediaExtractor = this.d;
                        long j3 = this.j;
                        Extractor extractor2 = ((BundledExtractorsAdapter) progressiveMediaExtractor).b;
                        extractor2.getClass();
                        extractor2.c(j, j3);
                        this.i = false;
                    }
                    while (i2 == 0 && !this.h) {
                        try {
                            ConditionVariable conditionVariable = this.f;
                            synchronized (conditionVariable) {
                                while (!conditionVariable.b) {
                                    conditionVariable.a.getClass();
                                    conditionVariable.wait();
                                }
                            }
                            ProgressiveMediaExtractor progressiveMediaExtractor2 = this.d;
                            PositionHolder positionHolder = this.g;
                            BundledExtractorsAdapter bundledExtractorsAdapter = (BundledExtractorsAdapter) progressiveMediaExtractor2;
                            Extractor extractor3 = bundledExtractorsAdapter.b;
                            extractor3.getClass();
                            DefaultExtractorInput defaultExtractorInput = bundledExtractorsAdapter.c;
                            defaultExtractorInput.getClass();
                            i2 = extractor3.f(defaultExtractorInput, positionHolder);
                            long a = ((BundledExtractorsAdapter) this.d).a();
                            if (a > ProgressiveMediaPeriod.this.r + j) {
                                ConditionVariable conditionVariable2 = this.f;
                                synchronized (conditionVariable2) {
                                    conditionVariable2.b = false;
                                }
                                ProgressiveMediaPeriod progressiveMediaPeriod2 = ProgressiveMediaPeriod.this;
                                progressiveMediaPeriod2.z.post(progressiveMediaPeriod2.y);
                                j = a;
                            }
                        } catch (InterruptedException unused2) {
                            throw new InterruptedIOException();
                        }
                    }
                    if (i2 == 1) {
                        i2 = 0;
                    } else if (((BundledExtractorsAdapter) this.d).a() != -1) {
                        this.g.a = ((BundledExtractorsAdapter) this.d).a();
                    }
                    StatsDataSource statsDataSource3 = this.c;
                    if (statsDataSource3 != null) {
                        try {
                            statsDataSource3.close();
                        } catch (IOException unused3) {
                        }
                    }
                } catch (Throwable th) {
                    if (i2 != 1 && ((BundledExtractorsAdapter) this.d).a() != -1) {
                        this.g.a = ((BundledExtractorsAdapter) this.d).a();
                    }
                    StatsDataSource statsDataSource4 = this.c;
                    if (statsDataSource4 != null) {
                        try {
                            statsDataSource4.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public final void b() {
            this.h = true;
        }

        public final DataSpec c(long j, String str) {
            Map map = ProgressiveMediaPeriod.b0;
            if (str != null && !str.startsWith("W/")) {
                ImmutableMap.Builder builder = new ImmutableMap.Builder(4);
                builder.c(map.entrySet());
                builder.b("If-Range", str);
                map = builder.a(false);
            }
            DataSpec.Builder builder2 = new DataSpec.Builder();
            builder2.a = this.b;
            builder2.d = j;
            builder2.f = 6;
            builder2.c = map;
            Preconditions.j(builder2.a, "The uri must be set.");
            return new DataSpec(builder2.a, builder2.b, null, builder2.c, builder2.d, builder2.e, builder2.f);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class SampleStreamImpl implements SampleStream {
        public final int a;
        public final boolean b;

        public SampleStreamImpl(int i, boolean z) {
            this.a = i;
            this.b = z;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final boolean a() {
            ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
            if (!progressiveMediaPeriod.F() && progressiveMediaPeriod.D[this.a].m(progressiveMediaPeriod.Z)) {
                return true;
            }
            return false;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final int b() {
            if (this.b) {
                return 4;
            }
            return 0;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final void c() {
            int i;
            int i2 = this.a;
            ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
            SampleQueue sampleQueue = progressiveMediaPeriod.D[i2];
            DrmSession drmSession = sampleQueue.h;
            if (drmSession != null && drmSession.getState() == 1) {
                DrmSession.DrmSessionException f = sampleQueue.h.f();
                f.getClass();
                throw f;
            }
            Loader loader = progressiveMediaPeriod.u;
            LoadErrorHandlingPolicy loadErrorHandlingPolicy = progressiveMediaPeriod.m;
            int i3 = progressiveMediaPeriod.N;
            ((DefaultLoadErrorHandlingPolicy) loadErrorHandlingPolicy).getClass();
            if (i3 == 7) {
                i = 6;
            } else {
                i = 3;
            }
            loader.b(i);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final int d(long j) {
            boolean z;
            int i;
            ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
            int i2 = this.a;
            boolean z2 = false;
            if (progressiveMediaPeriod.F()) {
                return 0;
            }
            progressiveMediaPeriod.B(i2);
            SampleQueue sampleQueue = progressiveMediaPeriod.D[i2];
            boolean z3 = progressiveMediaPeriod.Z;
            synchronized (sampleQueue) {
                int k = sampleQueue.k(sampleQueue.s);
                int i3 = sampleQueue.s;
                int i4 = sampleQueue.p;
                if (i3 != i4) {
                    z = true;
                } else {
                    z = false;
                }
                if (z && j >= sampleQueue.n[k]) {
                    if (j > sampleQueue.w && z3) {
                        i = i4 - i3;
                    } else {
                        i = sampleQueue.j(k, i4 - i3, j, true);
                        if (i == -1) {
                            i = 0;
                        }
                    }
                }
                i = 0;
            }
            synchronized (sampleQueue) {
                if (i >= 0) {
                    try {
                        if (sampleQueue.s + i <= sampleQueue.p) {
                            z2 = true;
                        }
                    } finally {
                    }
                }
                Preconditions.e(z2);
                sampleQueue.s += i;
            }
            if (i == 0) {
                progressiveMediaPeriod.C(i2);
            }
            return i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:73:0x00c2, code lost:
        
            if (r4.z != false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x00c4, code lost:
        
            if (r16 == false) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x00c7, code lost:
        
            r6 = r4.C;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x00c9, code lost:
        
            if (r6 == null) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x00cb, code lost:
        
            if (r7 != false) goto L66;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x00cf, code lost:
        
            if (r6 == r4.g) goto L69;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x00d1, code lost:
        
            r4.o(r6, r19);
         */
        @Override // androidx.media3.exoplayer.source.SampleStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int e(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            boolean z;
            boolean z2;
            boolean z3;
            int i2;
            boolean z4;
            boolean z5;
            int i3;
            ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
            int i4 = this.a;
            if (progressiveMediaPeriod.F()) {
                return -3;
            }
            progressiveMediaPeriod.B(i4);
            SampleQueue sampleQueue = progressiveMediaPeriod.D[i4];
            boolean z6 = progressiveMediaPeriod.Z;
            sampleQueue.getClass();
            if ((i & 2) != 0) {
                z = true;
            } else {
                z = false;
            }
            SampleQueue.SampleExtrasHolder sampleExtrasHolder = sampleQueue.b;
            synchronized (sampleQueue) {
                try {
                    decoderInputBuffer.getClass();
                    int i5 = sampleQueue.q;
                    int i6 = sampleQueue.s;
                    int i7 = i5 + i6;
                    int i8 = sampleQueue.x;
                    if (i8 != -1 && i7 >= i8) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (i6 != sampleQueue.p) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        if (i8 == -1 && (i3 = sampleQueue.y) != -1 && i5 + i6 >= i3) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (!z5 && !z2) {
                            Format format = ((SampleQueue.SharedSampleMetadata) sampleQueue.c.a(i7)).a;
                            if (!z && format == sampleQueue.g) {
                                int k = sampleQueue.k(sampleQueue.s);
                                if (!sampleQueue.n(k)) {
                                    i2 = -3;
                                } else {
                                    int i9 = sampleQueue.m[k];
                                    decoderInputBuffer.j = i9;
                                    if (sampleQueue.s == sampleQueue.p - 1 && (z6 || sampleQueue.z)) {
                                        decoderInputBuffer.j = 536870912 | i9;
                                    }
                                    decoderInputBuffer.n = sampleQueue.n[k];
                                    sampleExtrasHolder.a = sampleQueue.l[k];
                                    sampleExtrasHolder.b = sampleQueue.k[k];
                                    sampleExtrasHolder.c = sampleQueue.o[k];
                                    i2 = -4;
                                }
                            }
                            sampleQueue.o(format, formatHolder);
                            i2 = -5;
                        }
                    }
                    decoderInputBuffer.j = 4;
                    decoderInputBuffer.n = Long.MIN_VALUE;
                    i2 = -4;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (i2 == -4 && !decoderInputBuffer.e(4)) {
                if ((i & 1) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if ((i & 4) == 0) {
                    SampleDataQueue sampleDataQueue = sampleQueue.a;
                    SampleQueue.SampleExtrasHolder sampleExtrasHolder2 = sampleQueue.b;
                    if (z4) {
                        SampleDataQueue.e(sampleDataQueue.e, decoderInputBuffer, sampleExtrasHolder2, sampleDataQueue.c);
                    } else {
                        sampleDataQueue.e = SampleDataQueue.e(sampleDataQueue.e, decoderInputBuffer, sampleExtrasHolder2, sampleDataQueue.c);
                    }
                }
                if (!z4) {
                    sampleQueue.s++;
                }
            }
            if (i2 == -3) {
                progressiveMediaPeriod.C(i4);
            }
            return i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TrackId {
        public final int a;
        public final boolean b;

        public TrackId(int i, boolean z) {
            this.a = i;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj != null && TrackId.class == obj.getClass()) {
                    TrackId trackId = (TrackId) obj;
                    if (this.a == trackId.a && this.b == trackId.b) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return (this.a * 31) + (this.b ? 1 : 0);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TrackState {
        public final TrackGroupArray a;
        public final boolean[] b;
        public final boolean[] c;
        public final boolean[] d;

        public TrackState(TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.a = trackGroupArray;
            this.b = zArr;
            int i = trackGroupArray.a;
            this.c = new boolean[i];
            this.d = new boolean[i];
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        b0 = Collections.unmodifiableMap(hashMap);
        Format.Builder builder = new Format.Builder();
        builder.a = "icy";
        builder.o = MimeTypes.l("application/x-icy");
        c0 = new Format(builder);
    }

    public ProgressiveMediaPeriod(Uri uri, DataSource dataSource, BundledExtractorsAdapter bundledExtractorsAdapter, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, ProgressiveMediaSource progressiveMediaSource, Allocator allocator, int i, boolean z, long j, ReleasableExecutor releasableExecutor) {
        Loader loader;
        this.j = uri;
        this.k = dataSource;
        this.l = drmSessionManager;
        this.o = eventDispatcher;
        this.m = loadErrorHandlingPolicy;
        this.n = eventDispatcher2;
        this.p = progressiveMediaSource;
        this.q = allocator;
        this.r = i;
        this.s = z;
        if (releasableExecutor != null) {
            loader = new Loader(releasableExecutor);
        } else {
            loader = new Loader(ReleasableExecutor.E(Executors.newSingleThreadExecutor(new l6("ExoPlayer:Loader:ProgressiveMediaPeriod", 1)), new k8(17)));
        }
        this.u = loader;
        this.v = bundledExtractorsAdapter;
        this.t = j;
        this.w = new ConditionVariable();
        this.x = new b(this, 0);
        this.y = new b(this, 1);
        this.z = Util.k(null);
        this.E = new TrackId[0];
        this.D = new SampleQueue[0];
        this.C = new ControlledTrackOutput[0];
        this.T = new ArrayList();
        this.W = -9223372036854775807L;
        this.N = 1;
    }

    public final void A() {
        boolean z;
        boolean z2;
        Metadata a;
        char c;
        if (!this.a0 && !this.G && this.F && this.K != null) {
            for (SampleQueue sampleQueue : this.D) {
                if (sampleQueue.l() == null) {
                    return;
                }
            }
            ConditionVariable conditionVariable = this.w;
            synchronized (conditionVariable) {
                conditionVariable.b = false;
            }
            int length = this.D.length;
            int i = -1;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                char c2 = 1;
                if (i2 >= length) {
                    break;
                }
                Format l = this.D[i2].l();
                l.getClass();
                int g = MimeTypes.g(l.p);
                if (g != 1) {
                    if (g != 2) {
                        if (g != 3) {
                            if (g != 4) {
                                c = 0;
                            } else {
                                c = 2;
                            }
                        } else {
                            c = 1;
                        }
                    } else {
                        c = 4;
                    }
                } else {
                    c = 3;
                }
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                c2 = 0;
                            } else {
                                c2 = 2;
                            }
                        }
                    } else {
                        c2 = 4;
                    }
                } else {
                    c2 = 3;
                }
                if (c > c2) {
                    i3 = i2;
                    i = g;
                }
                i2++;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[length];
            boolean[] zArr = new boolean[length];
            for (int i4 = 0; i4 < length; i4++) {
                Format l2 = this.D[i4].l();
                l2.getClass();
                String str = l2.p;
                boolean h = MimeTypes.h(str);
                if (!h && !MimeTypes.k(str)) {
                    z = false;
                } else {
                    z = true;
                }
                zArr[i4] = z;
                this.H = z | this.H;
                boolean i5 = MimeTypes.i(str);
                if (this.t != -9223372036854775807L && length == 1 && i5) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.I = z2;
                IcyHeaders icyHeaders = this.B;
                if (icyHeaders != null) {
                    if (h || this.E[i4].b) {
                        Metadata metadata = l2.m;
                        if (metadata == null) {
                            a = new Metadata(icyHeaders);
                        } else {
                            a = metadata.a(icyHeaders);
                        }
                        Format.Builder a2 = l2.a();
                        a2.l = a;
                        l2 = new Format(a2);
                    }
                    if (h && l2.i == -1 && l2.j == -1 && icyHeaders.a != -1) {
                        Format.Builder a3 = l2.a();
                        a3.i = icyHeaders.a;
                        l2 = new Format(a3);
                    }
                }
                int b = this.l.b(l2);
                Format.Builder a4 = l2.a();
                a4.S = b;
                Format format = new Format(a4);
                if (i4 != i3) {
                    Format.Builder a5 = format.a();
                    a5.m = Integer.toString(i3);
                    format = new Format(a5);
                }
                trackGroupArr[i4] = new TrackGroup(Integer.toString(i4), format);
                SampleQueue sampleQueue2 = this.D[i4];
                synchronized (sampleQueue2) {
                    if (Long.MIN_VALUE != sampleQueue2.u) {
                        sampleQueue2.u = Long.MIN_VALUE;
                        sampleQueue2.x = -1;
                        sampleQueue2.y = -1;
                    }
                }
            }
            this.J = new TrackState(new TrackGroupArray(trackGroupArr), zArr);
            if (this.I && this.L == -9223372036854775807L) {
                this.L = this.t;
                this.K = new ForwardingSeekMap(this.K) { // from class: androidx.media3.exoplayer.source.ProgressiveMediaPeriod.1
                    @Override // androidx.media3.extractor.ForwardingSeekMap, androidx.media3.extractor.SeekMap
                    public final long g() {
                        return ProgressiveMediaPeriod.this.L;
                    }
                };
            }
            this.p.t(this.L, this.K, this.M);
            this.G = true;
            MaskingMediaPeriod maskingMediaPeriod = this.A;
            maskingMediaPeriod.getClass();
            maskingMediaPeriod.c(this);
        }
    }

    public final void B(int i) {
        w();
        TrackState trackState = this.J;
        boolean[] zArr = trackState.d;
        if (!zArr[i]) {
            Format format = trackState.a.a(i).d[0];
            MediaLoadData mediaLoadData = new MediaLoadData(1, MimeTypes.g(format.p), format, Util.N(this.V), -9223372036854775807L);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.n;
            eventDispatcher.a(new n5(6, eventDispatcher, mediaLoadData));
            zArr[i] = true;
        }
    }

    public final void C(int i) {
        w();
        if (this.X) {
            if ((!this.H || this.J.b[i]) && !this.D[i].m(false)) {
                this.W = 0L;
                this.X = false;
                this.P = true;
                this.V = 0L;
                this.Y = 0;
                for (SampleQueue sampleQueue : this.D) {
                    sampleQueue.p(false);
                }
                MaskingMediaPeriod maskingMediaPeriod = this.A;
                maskingMediaPeriod.getClass();
                maskingMediaPeriod.l(this);
            }
        }
    }

    public final TrackOutput D(TrackId trackId) {
        int length = this.D.length;
        for (int i = 0; i < length; i++) {
            if (trackId.equals(this.E[i])) {
                return this.D[i];
            }
        }
        if (this.F) {
            Log.f("ProgressiveMediaPeriod", "Extractor added new track (id=" + trackId.a + ") after finishing tracks.");
            return new DiscardingTrackOutput();
        }
        DrmSessionManager drmSessionManager = this.l;
        drmSessionManager.getClass();
        SampleQueue sampleQueue = new SampleQueue(this.q, drmSessionManager, this.o);
        ControlledTrackOutput controlledTrackOutput = new ControlledTrackOutput(sampleQueue);
        sampleQueue.f = this;
        int i2 = length + 1;
        TrackId[] trackIdArr = (TrackId[]) Arrays.copyOf(this.E, i2);
        trackIdArr[length] = trackId;
        this.E = trackIdArr;
        SampleQueue[] sampleQueueArr = (SampleQueue[]) Arrays.copyOf(this.D, i2);
        sampleQueueArr[length] = sampleQueue;
        this.D = sampleQueueArr;
        ControlledTrackOutput[] controlledTrackOutputArr = (ControlledTrackOutput[]) Arrays.copyOf(this.C, i2);
        controlledTrackOutputArr[length] = controlledTrackOutput;
        this.C = controlledTrackOutputArr;
        return controlledTrackOutput;
    }

    public final void E() {
        int i;
        ExtractingLoadable extractingLoadable = new ExtractingLoadable(this.j, this.k, this.v, this, this.w);
        if (this.G) {
            Preconditions.n(z());
            long j = this.L;
            if (j != -9223372036854775807L && this.W > j) {
                this.Z = true;
                this.W = -9223372036854775807L;
                return;
            }
            SeekMap seekMap = this.K;
            seekMap.getClass();
            long j2 = seekMap.e(this.W).a.b;
            long j3 = this.W;
            extractingLoadable.g.a = j2;
            extractingLoadable.j = j3;
            extractingLoadable.i = true;
            extractingLoadable.m = false;
            for (SampleQueue sampleQueue : this.D) {
                sampleQueue.t = this.W;
            }
            this.W = -9223372036854775807L;
        }
        this.Y = x();
        int i2 = this.N;
        ((DefaultLoadErrorHandlingPolicy) this.m).getClass();
        if (i2 == 7) {
            i = 6;
        } else {
            i = 3;
        }
        this.u.d(extractingLoadable, this, i);
    }

    public final boolean F() {
        if (!this.P && !z()) {
            return false;
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.ReleaseCallback
    public final void a() {
        for (SampleQueue sampleQueue : this.D) {
            sampleQueue.p(true);
            DrmSession drmSession = sampleQueue.h;
            if (drmSession != null) {
                drmSession.d(sampleQueue.e);
                sampleQueue.h = null;
                sampleQueue.g = null;
            }
        }
        BundledExtractorsAdapter bundledExtractorsAdapter = this.v;
        Extractor extractor = bundledExtractorsAdapter.b;
        if (extractor != null) {
            extractor.a();
            bundledExtractorsAdapter.b = null;
        }
        bundledExtractorsAdapter.c = null;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final boolean b(LoadingInfo loadingInfo) {
        if (!this.Z) {
            Loader loader = this.u;
            if (loader.c == null && !this.X) {
                if (!this.G || this.S != 0) {
                    boolean c = this.w.c();
                    if (loader.b != null) {
                        return c;
                    }
                    E();
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final Loader.LoadErrorAction c(Loader.Loadable loadable, long j, long j2, IOException iOException, int i) {
        boolean z;
        long min;
        int i2;
        Loader.LoadErrorAction loadErrorAction;
        SeekMap seekMap;
        ExtractingLoadable extractingLoadable = (ExtractingLoadable) loadable;
        StatsDataSource statsDataSource = extractingLoadable.c;
        LoadEventInfo.Builder builder = new LoadEventInfo.Builder(extractingLoadable.a, extractingLoadable.k, j);
        builder.d = statsDataSource.c;
        builder.e = statsDataSource.d;
        builder.f = j2;
        builder.g = statsDataSource.b;
        LoadEventInfo loadEventInfo = new LoadEventInfo(builder);
        Util.N(extractingLoadable.j);
        Util.N(this.L);
        LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(iOException, i);
        LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.m;
        ((DefaultLoadErrorHandlingPolicy) loadErrorHandlingPolicy).getClass();
        Throwable th = loadErrorInfo.a;
        while (true) {
            z = true;
            if (th != null) {
                if ((th instanceof ParserException) || (th instanceof FileNotFoundException) || (th instanceof HttpDataSource$CleartextNotPermittedException) || (th instanceof Loader.UnexpectedLoaderException) || ((th instanceof DataSourceException) && ((DataSourceException) th).j == 2008)) {
                    break;
                }
                th = th.getCause();
            } else {
                min = Math.min((loadErrorInfo.b - 1) * 1000, 5000);
                break;
            }
        }
        min = -9223372036854775807L;
        if (min == -9223372036854775807L) {
            loadErrorAction = Loader.e;
        } else {
            int x = x();
            if (x > this.Y) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (!this.U && ((seekMap = this.K) == null || seekMap.g() == -9223372036854775807L)) {
                if (this.G && !F()) {
                    this.X = true;
                    loadErrorAction = Loader.d;
                } else {
                    this.P = this.G;
                    this.V = 0L;
                    this.Y = 0;
                    for (SampleQueue sampleQueue : this.D) {
                        sampleQueue.p(false);
                    }
                    extractingLoadable.g.a = 0L;
                    extractingLoadable.j = 0L;
                    extractingLoadable.i = true;
                    extractingLoadable.m = false;
                }
            } else {
                this.Y = x;
            }
            loadErrorAction = new Loader.LoadErrorAction(i2, min);
        }
        int i3 = loadErrorAction.a;
        if (i3 != 0 && i3 != 1) {
            z = false;
        }
        MediaLoadData mediaLoadData = new MediaLoadData(1, -1, null, Util.N(extractingLoadable.j), Util.N(this.L));
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.n;
        eventDispatcher.a(new gb(eventDispatcher, loadEventInfo, mediaLoadData, iOException, !z));
        if (!z) {
            loadErrorHandlingPolicy.getClass();
        }
        return loadErrorAction;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void d() {
        this.R = true;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long e() {
        return t();
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void f(final SeekMap seekMap) {
        this.z.post(new Runnable() { // from class: androidx.media3.exoplayer.source.c
            @Override // java.lang.Runnable
            public final void run() {
                SeekMap unseekable;
                boolean z;
                Map map = ProgressiveMediaPeriod.b0;
                ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
                IcyHeaders icyHeaders = progressiveMediaPeriod.B;
                SeekMap seekMap2 = seekMap;
                if (icyHeaders == null) {
                    unseekable = seekMap2;
                } else {
                    unseekable = new SeekMap.Unseekable(-9223372036854775807L);
                }
                progressiveMediaPeriod.K = unseekable;
                progressiveMediaPeriod.L = seekMap2.g();
                int i = 1;
                if (!progressiveMediaPeriod.U && seekMap2.g() == -9223372036854775807L) {
                    z = true;
                } else {
                    z = false;
                }
                progressiveMediaPeriod.M = z;
                if (z) {
                    i = 7;
                }
                progressiveMediaPeriod.N = i;
                if (progressiveMediaPeriod.G) {
                    progressiveMediaPeriod.p.t(progressiveMediaPeriod.L, seekMap2, z);
                } else {
                    progressiveMediaPeriod.A();
                }
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void g() {
        int i;
        int i2 = this.N;
        ((DefaultLoadErrorHandlingPolicy) this.m).getClass();
        if (i2 == 7) {
            i = 6;
        } else {
            i = 3;
        }
        this.u.b(i);
        if (this.Z && !this.G) {
            throw ParserException.a(null, "Loading finished before preparation is complete.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00ce A[RETURN] */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long h(long j, SeekParameters seekParameters) {
        boolean z;
        boolean z2;
        long j2;
        boolean z3;
        boolean z4;
        long j3;
        boolean z5;
        w();
        if (!this.K.b()) {
            return 0L;
        }
        SeekMap.SeekPoints e = this.K.e(j);
        long j4 = e.a.a;
        long j5 = e.b.a;
        long j6 = seekParameters.b;
        long j7 = seekParameters.a;
        if (j7 == 0 && j6 == 0) {
            return j;
        }
        String str = Util.a;
        long j8 = j - j7;
        long j9 = j7 ^ j;
        boolean z6 = true;
        if (j9 >= 0) {
            z = true;
        } else {
            z = false;
        }
        if ((j ^ j8) >= 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        long j10 = Long.MAX_VALUE;
        if (z | z2) {
            j2 = j8;
        } else {
            j2 = ((j8 >>> 63) ^ 1) + Long.MAX_VALUE;
        }
        if ((j2 == Long.MIN_VALUE && j8 != Long.MIN_VALUE) || (j2 == Long.MAX_VALUE && j8 != Long.MAX_VALUE)) {
            j2 = Long.MIN_VALUE;
        }
        long j11 = j + j6;
        if ((j6 ^ j) < 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if ((j ^ j11) >= 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z3 | z4) {
            j3 = j11;
        } else {
            j3 = ((j11 >>> 63) ^ 1) + Long.MAX_VALUE;
        }
        if ((j3 != Long.MIN_VALUE || j11 == Long.MIN_VALUE) && (j3 != Long.MAX_VALUE || j11 == Long.MAX_VALUE)) {
            j10 = j3;
        }
        if (j2 <= j4 && j4 <= j10) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (j2 > j5 || j5 > j10) {
            z6 = false;
        }
        if (z5 && z6) {
            if (Math.abs(j4 - j) <= Math.abs(j5 - j)) {
                return j4;
            }
        } else {
            if (!z5) {
                if (z6) {
                    return j5;
                }
                return j2;
            }
            return j4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00da, code lost:
    
        if (r0 != false) goto L91;
     */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long i(long j) {
        int i;
        boolean z;
        boolean z2;
        boolean q;
        Iterator it = this.T.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            MergingMetadataSampleStream mergingMetadataSampleStream = (MergingMetadataSampleStream) it.next();
            mergingMetadataSampleStream.e.clear();
            mergingMetadataSampleStream.g = null;
            mergingMetadataSampleStream.h = -9223372036854775807L;
            mergingMetadataSampleStream.i = false;
            mergingMetadataSampleStream.j = false;
            mergingMetadataSampleStream.d.f();
        }
        w();
        boolean[] zArr = this.J.b;
        if (!this.K.b()) {
            j = 0;
        }
        this.P = false;
        boolean z3 = true;
        if (this.V == j) {
            z = true;
        } else {
            z = false;
        }
        this.V = j;
        if (z()) {
            this.W = j;
            return j;
        }
        if (this.N != 7 && (this.Z || this.u.b != null)) {
            int length = this.D.length;
            for (int i2 = 0; i2 < length; i2++) {
                SampleQueue sampleQueue = this.D[i2];
                if (this.C[i2].d.get() == ControlledTrackOutput.OutputMode.j) {
                    int i3 = sampleQueue.q;
                    if (sampleQueue.s + i3 != 0 || !z) {
                        if (this.I) {
                            synchronized (sampleQueue) {
                                synchronized (sampleQueue) {
                                    sampleQueue.s = 0;
                                    SampleDataQueue sampleDataQueue = sampleQueue.a;
                                    sampleDataQueue.e = sampleDataQueue.d;
                                }
                            }
                            int i4 = sampleQueue.q;
                            if (i3 >= i4 && i3 <= sampleQueue.p + i4) {
                                int i5 = sampleQueue.x;
                                if (i5 == -1 || i3 < i5) {
                                    int i6 = sampleQueue.y;
                                    if (i6 == -1 || i3 < i6) {
                                        sampleQueue.t = Long.MIN_VALUE;
                                        sampleQueue.s = i3 - i4;
                                        q = true;
                                    }
                                }
                                q = false;
                            }
                            q = false;
                        } else {
                            q = sampleQueue.q(j, this.Z);
                        }
                        if (!q && (zArr[i2] || !this.H)) {
                            z2 = false;
                            break;
                        }
                    }
                }
            }
            z2 = true;
        }
        this.X = false;
        this.W = j;
        this.Z = false;
        this.Q = false;
        Loader loader = this.u;
        if (loader.b == null) {
            z3 = false;
        }
        if (z3) {
            for (SampleQueue sampleQueue2 : this.D) {
                sampleQueue2.i();
            }
            this.u.a();
            return j;
        }
        loader.c = null;
        for (SampleQueue sampleQueue3 : this.D) {
            sampleQueue3.p(false);
        }
        return j;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void j(long j) {
        long j2;
        long j3;
        int i;
        int i2;
        if (!this.I) {
            w();
            if (!z()) {
                boolean[] zArr = this.J.c;
                int length = this.D.length;
                int i3 = 0;
                while (i3 < length) {
                    SampleQueue sampleQueue = this.D[i3];
                    boolean z = zArr[i3];
                    SampleDataQueue sampleDataQueue = sampleQueue.a;
                    synchronized (sampleQueue) {
                        try {
                            int i4 = sampleQueue.p;
                            j2 = -1;
                            if (i4 != 0) {
                                long[] jArr = sampleQueue.n;
                                int i5 = sampleQueue.r;
                                if (j >= jArr[i5]) {
                                    if (z && (i2 = sampleQueue.s) != i4) {
                                        i = i2 + 1;
                                    } else {
                                        i = i4;
                                    }
                                    j3 = j;
                                    int j4 = sampleQueue.j(i5, i, j3, false);
                                    if (j4 != -1) {
                                        j2 = sampleQueue.h(j4);
                                    }
                                }
                            }
                            j3 = j;
                        } finally {
                        }
                    }
                    sampleDataQueue.a(j2);
                    i3++;
                    j = j3;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r16v14 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long k(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        boolean z;
        ArrayList arrayList;
        boolean z2;
        boolean z3;
        byte[] bArr;
        boolean[] zArr3;
        TrackGroupArray trackGroupArray;
        ImmutableList immutableList;
        ExoTrackSelection exoTrackSelection;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        SampleStream sampleStream;
        ExoTrackSelection[] exoTrackSelectionArr2 = exoTrackSelectionArr;
        long j2 = j;
        w();
        TrackState trackState = this.J;
        TrackGroupArray trackGroupArray2 = trackState.a;
        ImmutableList immutableList2 = trackGroupArray2.b;
        boolean[] zArr4 = trackState.c;
        int i2 = this.S;
        boolean z7 = false;
        int i3 = 0;
        while (true) {
            if (i3 < exoTrackSelectionArr2.length) {
                ExoTrackSelection exoTrackSelection2 = exoTrackSelectionArr2[i3];
                if (exoTrackSelection2 != null) {
                    int indexOf = immutableList2.indexOf(((BaseTrackSelection) exoTrackSelection2).a);
                    if (indexOf < 0) {
                        indexOf = -1;
                    }
                    if (Objects.equals(trackGroupArray2.a(indexOf).d[0].p, "application/x-itut-t35")) {
                        z = true;
                        break;
                    }
                }
                i3++;
            } else {
                z = false;
                break;
            }
        }
        int i4 = 0;
        while (true) {
            int length = exoTrackSelectionArr2.length;
            arrayList = this.T;
            z2 = z7;
            if (i4 >= length) {
                break;
            }
            SampleStream sampleStream2 = sampleStreamArr[i4];
            if (sampleStream2 != null) {
                if (exoTrackSelectionArr2[i4] != null && zArr[i4]) {
                    if (z) {
                        sampleStream = null;
                        if (!(sampleStream2 instanceof MergingMetadataSampleStream)) {
                        }
                    }
                } else {
                    sampleStream = null;
                }
                if (sampleStream2 instanceof MergingMetadataSampleStream) {
                    MergingMetadataSampleStream mergingMetadataSampleStream = (MergingMetadataSampleStream) sampleStream2;
                    arrayList.remove(mergingMetadataSampleStream);
                    int i5 = ((SampleStreamImpl) mergingMetadataSampleStream.a).a;
                    Preconditions.n(zArr4[i5]);
                    this.S--;
                    zArr4[i5] = z2;
                    int i6 = ((SampleStreamImpl) mergingMetadataSampleStream.b).a;
                    Preconditions.n(zArr4[i6]);
                    this.S--;
                    zArr4[i6] = z2;
                } else {
                    int i7 = ((SampleStreamImpl) sampleStream2).a;
                    Preconditions.n(zArr4[i7]);
                    this.S--;
                    zArr4[i7] = z2;
                }
                sampleStreamArr[i4] = sampleStream;
            }
            i4++;
            z7 = z2 ? 1 : 0;
        }
        byte[] bArr2 = null;
        if (!this.O ? !(j2 == 0 || this.I) : i2 == 0) {
            z3 = true;
        } else {
            z3 = z2 ? 1 : 0;
        }
        int i8 = z2 ? 1 : 0;
        ?? r11 = i8;
        boolean z8 = z2;
        while (i8 < exoTrackSelectionArr2.length) {
            if (sampleStreamArr[i8] == null && (exoTrackSelection = exoTrackSelectionArr2[i8]) != null) {
                BaseTrackSelection baseTrackSelection = (BaseTrackSelection) exoTrackSelection;
                Format[] formatArr = baseTrackSelection.d;
                int[] iArr = baseTrackSelection.c;
                zArr3 = zArr4;
                if (iArr.length == 1) {
                    z4 = true;
                } else {
                    z4 = z8 ? 1 : 0;
                }
                Preconditions.n(z4);
                if (iArr[z8 ? 1 : 0] == 0) {
                    z5 = true;
                } else {
                    z5 = z8 ? 1 : 0;
                }
                Preconditions.n(z5);
                int indexOf2 = immutableList2.indexOf(baseTrackSelection.a);
                if (indexOf2 < 0) {
                    indexOf2 = -1;
                }
                Preconditions.n(!zArr3[indexOf2]);
                this.S++;
                zArr3[indexOf2] = true;
                Format format = formatArr[z8 ? 1 : 0];
                boolean z9 = format.v;
                r11 = (r11 == true ? 1 : 0) | (z9 ? 1 : 0);
                immutableList = immutableList2;
                SampleStream sampleStreamImpl = new SampleStreamImpl(indexOf2, z9);
                if (this.s) {
                    i = indexOf2;
                    if (Build.VERSION.SDK_INT >= 37 && !z && MimeTypes.k(format.p)) {
                        int i9 = z8 ? 1 : 0;
                        int i10 = z8;
                        while (i9 < trackGroupArray2.a) {
                            Format format2 = trackGroupArray2.a(i9).d[i10];
                            String str = format2.p;
                            List list = format2.s;
                            if (Objects.equals(str, "application/x-itut-t35") && !list.isEmpty()) {
                                byte[] bArr3 = (byte[]) list.get(i10);
                                if (bArr3.length >= 5 && bArr3[i10] == -75 && bArr3[1] == 0 && bArr3[2] == -112 && bArr3[3] == 0 && bArr3[4] == 1) {
                                    Preconditions.n(!zArr3[i9]);
                                    this.S++;
                                    zArr3[i9] = true;
                                    trackGroupArray = trackGroupArray2;
                                    MergingMetadataSampleStream mergingMetadataSampleStream2 = new MergingMetadataSampleStream(sampleStreamImpl, new SampleStreamImpl(i9, false), formatArr[0]);
                                    arrayList.add(mergingMetadataSampleStream2);
                                    sampleStreamImpl = mergingMetadataSampleStream2;
                                    break;
                                }
                            }
                            i9++;
                            trackGroupArray2 = trackGroupArray2;
                            i10 = 0;
                        }
                    }
                } else {
                    i = indexOf2;
                }
                trackGroupArray = trackGroupArray2;
                sampleStreamArr[i8] = sampleStreamImpl;
                zArr2[i8] = true;
                if (!z3) {
                    SampleQueue sampleQueue = this.D[i];
                    if (sampleQueue.q + sampleQueue.s != 0 && !sampleQueue.q(j2, true)) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z3 = z6;
                }
            } else {
                zArr3 = zArr4;
                trackGroupArray = trackGroupArray2;
                immutableList = immutableList2;
            }
            i8++;
            exoTrackSelectionArr2 = exoTrackSelectionArr;
            zArr4 = zArr3;
            immutableList2 = immutableList;
            trackGroupArray2 = trackGroupArray;
            z8 = false;
            r11 = r11;
        }
        if (this.Q || !this.O) {
            this.Q = r11;
        }
        if (this.S == 0) {
            this.X = false;
            this.P = false;
            this.Q = false;
            Loader loader = this.u;
            if (loader.b != null) {
                for (SampleQueue sampleQueue2 : this.D) {
                    sampleQueue2.i();
                }
                loader.a();
            } else {
                boolean z10 = false;
                this.Z = false;
                SampleQueue[] sampleQueueArr = this.D;
                int length2 = sampleQueueArr.length;
                int i11 = 0;
                while (i11 < length2) {
                    sampleQueueArr[i11].p(z10);
                    i11++;
                    z10 = false;
                }
            }
        } else if (z3) {
            j2 = i(j2);
            int i12 = 0;
            while (i12 < sampleStreamArr.length) {
                SampleStream sampleStream3 = sampleStreamArr[i12];
                if (sampleStream3 != null) {
                    zArr2[i12] = true;
                    if (sampleStream3 instanceof MergingMetadataSampleStream) {
                        MergingMetadataSampleStream mergingMetadataSampleStream3 = (MergingMetadataSampleStream) sampleStream3;
                        mergingMetadataSampleStream3.e.clear();
                        bArr = bArr2;
                        mergingMetadataSampleStream3.g = bArr;
                        mergingMetadataSampleStream3.h = -9223372036854775807L;
                        mergingMetadataSampleStream3.i = false;
                        mergingMetadataSampleStream3.j = false;
                        mergingMetadataSampleStream3.d.f();
                        i12++;
                        bArr2 = bArr;
                    }
                }
                bArr = bArr2;
                i12++;
                bArr2 = bArr;
            }
        }
        this.O = true;
        return j2;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void l(Loader.Loadable loadable, long j, long j2, int i) {
        ExtractingLoadable extractingLoadable = (ExtractingLoadable) loadable;
        StatsDataSource statsDataSource = extractingLoadable.c;
        LoadEventInfo.Builder builder = new LoadEventInfo.Builder(extractingLoadable.a, extractingLoadable.k, j);
        if (i != 0) {
            builder.d = statsDataSource.c;
            builder.e = statsDataSource.d;
            builder.f = j2;
            builder.g = statsDataSource.b;
        }
        LoadEventInfo loadEventInfo = new LoadEventInfo(builder);
        MediaLoadData mediaLoadData = new MediaLoadData(1, -1, null, Util.N(extractingLoadable.j), Util.N(this.L));
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.n;
        eventDispatcher.a(new eb(eventDispatcher, loadEventInfo, mediaLoadData, i));
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final boolean m() {
        boolean z;
        if (!this.Z && this.u.b != null) {
            ConditionVariable conditionVariable = this.w;
            synchronized (conditionVariable) {
                z = conditionVariable.b;
            }
            if (z) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void n() {
        this.F = true;
        this.z.post(this.x);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long o() {
        if (!this.R && this.Q) {
            this.Q = false;
            return this.V;
        }
        if (this.P) {
            if (this.Z || x() > this.Y) {
                this.P = false;
                return this.V;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void p(MediaPeriod.Callback callback, long j) {
        this.A = (MaskingMediaPeriod) callback;
        this.w.c();
        E();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final TrackGroupArray q() {
        w();
        return this.J.a;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void r(Loader.Loadable loadable, long j, long j2) {
        long j3;
        ExtractingLoadable extractingLoadable = (ExtractingLoadable) loadable;
        if (this.L == -9223372036854775807L && this.K != null) {
            long y = y(true);
            if (y == Long.MIN_VALUE) {
                j3 = 0;
            } else {
                j3 = y + 10000;
            }
            this.L = j3;
            this.p.t(j3, this.K, this.M);
        }
        StatsDataSource statsDataSource = extractingLoadable.c;
        LoadEventInfo.Builder builder = new LoadEventInfo.Builder(extractingLoadable.a, extractingLoadable.k, j);
        builder.d = statsDataSource.c;
        builder.e = statsDataSource.d;
        builder.f = j2;
        builder.g = statsDataSource.b;
        LoadEventInfo loadEventInfo = new LoadEventInfo(builder);
        this.m.getClass();
        MediaLoadData mediaLoadData = new MediaLoadData(1, -1, null, Util.N(extractingLoadable.j), Util.N(this.L));
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.n;
        eventDispatcher.a(new fb(eventDispatcher, loadEventInfo, mediaLoadData, 0));
        this.Z = true;
        MaskingMediaPeriod maskingMediaPeriod = this.A;
        maskingMediaPeriod.getClass();
        maskingMediaPeriod.l(this);
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final TrackOutput s(int i, int i2) {
        return D(new TrackId(i, false));
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long t() {
        long j;
        boolean z;
        long j2;
        w();
        if (this.Z || this.S == 0) {
            return Long.MIN_VALUE;
        }
        if (z()) {
            return this.W;
        }
        if (this.H) {
            int length = this.D.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                TrackState trackState = this.J;
                if (trackState.b[i] && trackState.c[i]) {
                    SampleQueue sampleQueue = this.D[i];
                    synchronized (sampleQueue) {
                        z = sampleQueue.z;
                    }
                    if (z) {
                        continue;
                    } else {
                        SampleQueue sampleQueue2 = this.D[i];
                        synchronized (sampleQueue2) {
                            j2 = sampleQueue2.w;
                        }
                        j = Math.min(j, j2);
                    }
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == Long.MAX_VALUE) {
            j = y(false);
        }
        if (j == Long.MIN_VALUE) {
            return this.V;
        }
        return j;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void v(Loader.Loadable loadable, long j, long j2, boolean z) {
        ExtractingLoadable extractingLoadable = (ExtractingLoadable) loadable;
        StatsDataSource statsDataSource = extractingLoadable.c;
        LoadEventInfo.Builder builder = new LoadEventInfo.Builder(extractingLoadable.a, extractingLoadable.k, j);
        builder.d = statsDataSource.c;
        builder.e = statsDataSource.d;
        builder.f = j2;
        builder.g = statsDataSource.b;
        LoadEventInfo loadEventInfo = new LoadEventInfo(builder);
        this.m.getClass();
        MediaLoadData mediaLoadData = new MediaLoadData(1, -1, null, Util.N(extractingLoadable.j), Util.N(this.L));
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.n;
        eventDispatcher.a(new fb(eventDispatcher, loadEventInfo, mediaLoadData, 1));
        if (!z) {
            for (SampleQueue sampleQueue : this.D) {
                sampleQueue.p(false);
            }
            if (this.S > 0) {
                MaskingMediaPeriod maskingMediaPeriod = this.A;
                maskingMediaPeriod.getClass();
                maskingMediaPeriod.l(this);
            }
        }
    }

    public final void w() {
        Preconditions.n(this.G);
        this.J.getClass();
        this.K.getClass();
    }

    public final int x() {
        int i = 0;
        for (SampleQueue sampleQueue : this.D) {
            i += sampleQueue.q + sampleQueue.p;
        }
        return i;
    }

    public final long y(boolean z) {
        long j;
        long j2 = Long.MIN_VALUE;
        for (int i = 0; i < this.D.length; i++) {
            if (!z) {
                TrackState trackState = this.J;
                trackState.getClass();
                if (!trackState.c[i]) {
                    continue;
                }
            }
            SampleQueue sampleQueue = this.D[i];
            synchronized (sampleQueue) {
                j = sampleQueue.w;
            }
            j2 = Math.max(j2, j);
        }
        return j2;
    }

    public final boolean z() {
        if (this.W != -9223372036854775807L) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void u(long j) {
    }
}
