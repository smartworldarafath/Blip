.class public final synthetic Le3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Le3;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Le3;->k:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1

    .line 1
    new-instance v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Le3;->k:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p0, v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iput-object p0, v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    iput-boolean p0, v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->d:Z

    .line 21
    .line 22
    iput-boolean p0, v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->e:Z

    .line 23
    .line 24
    new-instance p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->a()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;->a(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Le3;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Le3;->k:Landroid/content/Context;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->C:I

    .line 9
    .line 10
    sget-object v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->p:Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    const-class v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->v:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 25
    .line 26
    iget-object v3, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->a:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v4, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->b:Ljava/util/HashMap;

    .line 29
    .line 30
    iget v5, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->c:I

    .line 31
    .line 32
    iget-object v6, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->d:Landroidx/media3/common/util/SystemClock;

    .line 33
    .line 34
    iget-boolean v7, v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->e:Z

    .line 35
    .line 36
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;ILandroidx/media3/common/util/Clock;Z)V

    .line 37
    .line 38
    .line 39
    sput-object v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->v:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    move-object p0, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    sget-object p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->v:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    monitor-exit v1

    .line 48
    return-object p0

    .line 49
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0

    .line 51
    :pswitch_0
    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->C:I

    .line 52
    .line 53
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :pswitch_1
    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->C:I

    .line 60
    .line 61
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    .line 62
    .line 63
    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    .line 64
    .line 65
    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :pswitch_2
    sget v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->C:I

    .line 73
    .line 74
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :pswitch_3
    invoke-static {p0}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
