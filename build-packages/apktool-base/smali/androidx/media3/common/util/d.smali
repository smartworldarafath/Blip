.class public final synthetic Landroidx/media3/common/util/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/d;->j:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/media3/common/util/d;->j:Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/media3/common/util/NetworkTypeObserver$Listener;

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->c:Landroidx/media3/common/util/NetworkTypeObserver;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/util/NetworkTypeObserver;->b()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    check-cast v0, Li7;

    .line 20
    .line 21
    iget-object v1, v0, Li7;->a:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 22
    .line 23
    sget-object v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->p:Lcom/google/common/collect/ImmutableList;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget v0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->n:I

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-boolean v2, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    if-ne v0, p0, :cond_1

    .line 41
    .line 42
    :try_start_1
    iget-object v0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->o:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_2
    iput p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->n:I

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    if-eq p0, v0, :cond_6

    .line 52
    .line 53
    if-eqz p0, :cond_6

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    if-ne p0, v0, :cond_2

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_2
    iget-object v0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->o:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    iget-object v0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->a:Landroid/content/Context;

    .line 66
    .line 67
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    const-string v2, "phone"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    invoke-static {v0}, Lcom/google/common/base/Ascii;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/google/common/base/Ascii;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_0
    iput-object v0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->o:Ljava/lang/String;

    .line 109
    .line 110
    :cond_4
    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->d(I)J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    iput-wide v2, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->l:J

    .line 115
    .line 116
    iget-object p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->d:Landroidx/media3/common/util/Clock;

    .line 117
    .line 118
    check-cast p0, Landroidx/media3/common/util/SystemClock;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    iget p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->g:I

    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    if-lez p0, :cond_5

    .line 131
    .line 132
    iget-wide v2, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->h:J

    .line 133
    .line 134
    sub-long v2, v7, v2

    .line 135
    .line 136
    long-to-int p0, v2

    .line 137
    move v2, p0

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    move v2, v0

    .line 140
    :goto_1
    iget-wide v3, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->i:J

    .line 141
    .line 142
    iget-wide v5, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->l:J

    .line 143
    .line 144
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->e(IJJ)V

    .line 145
    .line 146
    .line 147
    iput-wide v7, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->h:J

    .line 148
    .line 149
    const-wide/16 v2, 0x0

    .line 150
    .line 151
    iput-wide v2, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->i:J

    .line 152
    .line 153
    iput-wide v2, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->k:J

    .line 154
    .line 155
    iput-wide v2, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->j:J

    .line 156
    .line 157
    iget-object p0, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->f:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    .line 158
    .line 159
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->b:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 162
    .line 163
    .line 164
    const/4 v2, -0x1

    .line 165
    iput v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->d:I

    .line 166
    .line 167
    iput v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->e:I

    .line 168
    .line 169
    iput v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 173
    :cond_6
    :goto_2
    monitor-exit v1

    .line 174
    return-void

    .line 175
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    throw p0

    .line 177
    :cond_7
    return-void
.end method
