.class public final synthetic Lf7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;
.implements Lcom/google/common/base/Supplier;
.implements Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
.implements Landroidx/compose/animation/core/Easing;
.implements Lcoil3/EventListener$Factory;
.implements Lcom/google/firebase/components/ComponentFactory;
.implements Lcom/google/common/base/Function;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf7;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic h()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public static synthetic i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public static synthetic j(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/common/util/Clock;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;-><init>(Landroidx/media3/common/util/Clock;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lf7;->j:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/media3/common/Player$Listener;->v()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_5
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_6
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_7
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_8
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Ljava/lang/reflect/Constructor;
    .locals 4

    .line 1
    iget p0, p0, Lf7;->j:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-class v1, Landroidx/media3/extractor/Extractor;

    .line 5
    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:[I

    .line 10
    .line 11
    const-string p0, "androidx.media3.decoder.midi.MidiExtractor"

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    sget-object p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:[I

    .line 27
    .line 28
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    const-string v2, "androidx.media3.decoder.flac.FlacLibrary"

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "isAvailable"

    .line 37
    .line 38
    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    const-string p0, "androidx.media3.decoder.flac.FlacExtractor"

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_0
    return-object v0

    .line 73
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lf7;->j:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lcom/google/firebase/components/Lazy;

    .line 7
    .line 8
    sget-object p0, Lcom/google/firebase/concurrent/UiExecutor;->j:Lcom/google/firebase/concurrent/UiExecutor;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->b:Lcom/google/firebase/components/Lazy;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->c:Lcom/google/firebase/components/Lazy;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_2
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->a:Lcom/google/firebase/components/Lazy;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(F)F
    .locals 1

    .line 1
    iget p0, p0, Lf7;->j:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p0, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 7
    .line 8
    return p1

    .line 9
    :pswitch_0
    sget-object p0, Landroidx/compose/animation/core/EasingFunctionsKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 10
    .line 11
    const p0, 0x3eba2e8c

    .line 12
    .line 13
    .line 14
    cmpg-float p0, p1, p0

    .line 15
    .line 16
    const/high16 v0, 0x40f20000    # 7.5625f

    .line 17
    .line 18
    if-gez p0, :cond_0

    .line 19
    .line 20
    mul-float/2addr v0, p1

    .line 21
    mul-float/2addr v0, p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const p0, 0x3f3a2e8c

    .line 24
    .line 25
    .line 26
    cmpg-float p0, p1, p0

    .line 27
    .line 28
    if-gez p0, :cond_1

    .line 29
    .line 30
    const p0, 0x3f0ba2e9

    .line 31
    .line 32
    .line 33
    sub-float/2addr p1, p0

    .line 34
    mul-float/2addr v0, p1

    .line 35
    mul-float/2addr v0, p1

    .line 36
    const/high16 p0, 0x3f400000    # 0.75f

    .line 37
    .line 38
    :goto_0
    add-float/2addr v0, p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const p0, 0x3f68ba2f

    .line 41
    .line 42
    .line 43
    cmpg-float p0, p1, p0

    .line 44
    .line 45
    if-gez p0, :cond_2

    .line 46
    .line 47
    const p0, 0x3f51745d

    .line 48
    .line 49
    .line 50
    sub-float/2addr p1, p0

    .line 51
    mul-float/2addr v0, p1

    .line 52
    mul-float/2addr v0, p1

    .line 53
    const/high16 p0, 0x3f700000    # 0.9375f

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const p0, 0x3f745d17

    .line 57
    .line 58
    .line 59
    sub-float/2addr p1, p0

    .line 60
    mul-float/2addr v0, p1

    .line 61
    mul-float/2addr v0, p1

    .line 62
    const/high16 p0, 0x3f7c0000    # 0.984375f

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_1
    return v0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p0, ""

    .line 15
    .line 16
    return-object p0
.end method

.method public g(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lf7;->j:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, -0x1

    .line 7
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :pswitch_0
    const/16 p0, 0x193

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lf7;->j:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_0
    const/16 p0, 0xc

    .line 13
    .line 14
    new-array p0, p0, [B

    .line 15
    .line 16
    sget-object v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->i:Ljava/util/Random;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/util/Random;->nextBytes([B)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0xa

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
