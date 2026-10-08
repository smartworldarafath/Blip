.class public final Landroidx/media3/exoplayer/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final C:I

.field public static final D:Z


# instance fields
.field public final A:Z

.field public final B:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/common/util/SystemClock;

.field public final c:Le3;

.field public final d:Le3;

.field public final e:Le3;

.field public final f:Le3;

.field public final g:Landroid/os/Looper;

.field public final h:I

.field public final i:Landroidx/media3/common/AudioAttributes;

.field public final j:I

.field public final k:Z

.field public final l:Landroidx/media3/exoplayer/SeekParameters;

.field public final m:Landroidx/media3/exoplayer/ScrubbingModeParameters;

.field public final n:J

.field public final o:J

.field public final p:J

.field public final q:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

.field public final r:J

.field public final s:J

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:Z

.field public y:Z

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "emulator"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "emu64a"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "emu64x"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-string v1, "generic"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const-string v1, "vsoc"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/16 v0, 0x2710

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    const/16 v0, 0x7530

    .line 54
    .line 55
    :goto_1
    sput v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->C:I

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    sput-boolean v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->D:Z

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    new-instance v0, Le3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Le3;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Le3;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-direct {v2, p1, v3}, Le3;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Le3;

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    invoke-direct {v3, p1, v4}, Le3;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Le3;

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    invoke-direct {v4, p1, v5}, Le3;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->a:Landroid/content/Context;

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->c:Le3;

    .line 34
    .line 35
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->d:Le3;

    .line 36
    .line 37
    iput-object v3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->e:Le3;

    .line 38
    .line 39
    iput-object v4, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->f:Le3;

    .line 40
    .line 41
    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->g:Landroid/os/Looper;

    .line 55
    .line 56
    sget-object p1, Landroidx/media3/common/AudioAttributes;->b:Landroidx/media3/common/AudioAttributes;

    .line 57
    .line 58
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->i:Landroidx/media3/common/AudioAttributes;

    .line 59
    .line 60
    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->j:I

    .line 61
    .line 62
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->k:Z

    .line 63
    .line 64
    sget-object p1, Landroidx/media3/exoplayer/SeekParameters;->e:Landroidx/media3/exoplayer/SeekParameters;

    .line 65
    .line 66
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->l:Landroidx/media3/exoplayer/SeekParameters;

    .line 67
    .line 68
    const-wide/16 v2, 0x1388

    .line 69
    .line 70
    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->n:J

    .line 71
    .line 72
    const-wide/16 v2, 0x3a98

    .line 73
    .line 74
    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->o:J

    .line 75
    .line 76
    const-wide/16 v2, 0xbb8

    .line 77
    .line 78
    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->p:J

    .line 79
    .line 80
    sget-object p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->g:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 81
    .line 82
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->m:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 83
    .line 84
    const-wide/16 v2, 0x14

    .line 85
    .line 86
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->D(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    const-wide/16 v2, 0x1f4

    .line 91
    .line 92
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->D(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    new-instance v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    .line 97
    .line 98
    const v9, 0x3f7fbe77    # 0.999f

    .line 99
    .line 100
    .line 101
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;-><init>(JJF)V

    .line 102
    .line 103
    .line 104
    iput-object v4, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->q:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    .line 105
    .line 106
    sget-object p1, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    .line 107
    .line 108
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->b:Landroidx/media3/common/util/SystemClock;

    .line 109
    .line 110
    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->r:J

    .line 111
    .line 112
    const-wide/16 v2, 0x7d0

    .line 113
    .line 114
    iput-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->s:J

    .line 115
    .line 116
    const p1, 0x927c0

    .line 117
    .line 118
    .line 119
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->t:I

    .line 120
    .line 121
    const v0, 0x7fffffff

    .line 122
    .line 123
    .line 124
    sget-boolean v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;->D:Z

    .line 125
    .line 126
    if-eqz v2, :cond_1

    .line 127
    .line 128
    sget v3, Landroidx/media3/exoplayer/ExoPlayer$Builder;->C:I

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    move v3, v0

    .line 132
    :goto_1
    iput v3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->u:I

    .line 133
    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    const v0, 0xea60

    .line 137
    .line 138
    .line 139
    :cond_2
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->v:I

    .line 140
    .line 141
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->w:I

    .line 142
    .line 143
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->x:Z

    .line 144
    .line 145
    const-string p1, ""

    .line 146
    .line 147
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->z:Ljava/lang/String;

    .line 148
    .line 149
    const/16 p1, -0x3e8

    .line 150
    .line 151
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->h:I

    .line 152
    .line 153
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .line 155
    const/16 v0, 0x23

    .line 156
    .line 157
    if-lt p1, v0, :cond_3

    .line 158
    .line 159
    new-instance p1, Landroidx/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    .line 160
    .line 161
    :cond_3
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->A:Z

    .line 162
    .line 163
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->B:Z

    .line 164
    .line 165
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->y:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->y:Z

    .line 9
    .line 10
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
