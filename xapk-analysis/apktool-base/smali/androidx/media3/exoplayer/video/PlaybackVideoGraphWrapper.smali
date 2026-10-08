.class public final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/VideoGraph$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;,
        Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;
    }
.end annotation


# static fields
.field public static final q:Lz2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/common/VideoGraph$Factory;

.field public final c:Landroid/util/SparseArray;

.field public final d:Z

.field public final e:Landroidx/media3/exoplayer/video/VideoSink;

.field public final f:Landroidx/media3/common/util/Clock;

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final h:J

.field public final i:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

.field public j:Landroidx/media3/common/util/TimedValueQueue;

.field public k:Landroidx/media3/common/util/HandlerWrapper;

.field public l:Landroid/util/Pair;

.field public m:I

.field public n:I

.field public o:J

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lz2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->q:Lz2;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->a:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->c:Landroidx/media3/common/VideoGraph$Factory;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->b:Landroidx/media3/common/VideoGraph$Factory;

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->c:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->d:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->d:Z

    .line 35
    .line 36
    iget-object v0, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->e:Landroidx/media3/common/util/Clock;

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->f:Landroidx/media3/common/util/Clock;

    .line 39
    .line 40
    iget-wide v1, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->g:J

    .line 41
    .line 42
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmp-long v5, v1, v3

    .line 48
    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    neg-long v1, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-wide v1, v3

    .line 54
    :goto_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->h:J

    .line 55
    .line 56
    iget-object v1, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->h:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 57
    .line 58
    iput-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->i:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 59
    .line 60
    new-instance v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 61
    .line 62
    iget-object p1, p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 63
    .line 64
    invoke-direct {v2, p1, v1, v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;Landroidx/media3/common/util/Clock;)V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 68
    .line 69
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 75
    .line 76
    new-instance p1, Landroidx/media3/common/Format$Builder;

    .line 77
    .line 78
    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v0, Landroidx/media3/common/Format;

    .line 82
    .line 83
    invoke-direct {v0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 84
    .line 85
    .line 86
    iput-wide v3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->o:J

    .line 87
    .line 88
    const/4 p1, -0x1

    .line 89
    iput p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->p:I

    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    iput p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:I

    .line 93
    .line 94
    return-void
.end method
