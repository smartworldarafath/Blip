.class public abstract Lio/sentry/android/replay/capture/BaseCaptureStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/replay/capture/CaptureStrategy;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseRequiresApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/capture/BaseCaptureStrategy$ReplayPersistingExecutorServiceThreadFactory;
    }
.end annotation


# static fields
.field public static final synthetic q:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lio/sentry/SentryOptions;

.field public final b:Lio/sentry/IScopes;

.field public final c:Lio/sentry/transport/ICurrentDateProvider;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lkotlin/Lazy;

.field public final f:Lio/sentry/android/replay/gestures/ReplayGestureConverter;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Lio/sentry/android/replay/ReplayCache;

.field public final i:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;

.field public final j:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public final l:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;

.field public final m:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;

.field public final n:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;

.field public final o:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;

.field public final p:Ljava/util/concurrent/ConcurrentLinkedDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 2
    .line 3
    const-class v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 4
    .line 5
    const-string v2, "recorderConfig"

    .line 6
    .line 7
    const-string v3, "getRecorderConfig$sentry_android_replay_release()Lio/sentry/android/replay/ScreenshotRecorderConfig;"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 19
    .line 20
    const-string v3, "segmentTimestamp"

    .line 21
    .line 22
    const-string v5, "getSegmentTimestamp()Ljava/util/Date;"

    .line 23
    .line 24
    invoke-direct {v2, v1, v3, v5, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 28
    .line 29
    const-string v5, "screenAtStart"

    .line 30
    .line 31
    const-string v6, "getScreenAtStart()Ljava/lang/String;"

    .line 32
    .line 33
    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 37
    .line 38
    const-string v6, "currentReplayId"

    .line 39
    .line 40
    const-string v7, "getCurrentReplayId()Lio/sentry/protocol/SentryId;"

    .line 41
    .line 42
    invoke-direct {v5, v1, v6, v7, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    new-instance v6, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 46
    .line 47
    const-string v7, "currentSegment"

    .line 48
    .line 49
    const-string v8, "getCurrentSegment()I"

    .line 50
    .line 51
    invoke-direct {v6, v1, v7, v8, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    new-instance v7, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 55
    .line 56
    const-string v8, "replayType"

    .line 57
    .line 58
    const-string v9, "getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;"

    .line 59
    .line 60
    invoke-direct {v7, v1, v8, v9, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x6

    .line 64
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 65
    .line 66
    aput-object v0, v1, v4

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    aput-object v2, v1, v0

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    aput-object v3, v1, v0

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    aput-object v5, v1, v0

    .line 76
    .line 77
    const/4 v0, 0x4

    .line 78
    aput-object v6, v1, v0

    .line 79
    .line 80
    const/4 v0, 0x5

    .line 81
    aput-object v7, v1, v0

    .line 82
    .line 83
    sput-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 84
    .line 85
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IScopes;Lio/sentry/transport/ICurrentDateProvider;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 14
    .line 15
    iput-object p2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->b:Lio/sentry/IScopes;

    .line 16
    .line 17
    iput-object p3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->c:Lio/sentry/transport/ICurrentDateProvider;

    .line 18
    .line 19
    iput-object p4, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    new-instance p1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistingExecutor$2;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistingExecutor$2;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->e:Lkotlin/Lazy;

    .line 31
    .line 32
    new-instance p1, Lio/sentry/android/replay/gestures/ReplayGestureConverter;

    .line 33
    .line 34
    invoke-direct {p1, p3}, Lio/sentry/android/replay/gestures/ReplayGestureConverter;-><init>(Lio/sentry/transport/ICurrentDateProvider;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->f:Lio/sentry/android/replay/gestures/ReplayGestureConverter;

    .line 38
    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    new-instance p1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;

    .line 48
    .line 49
    invoke-direct {p1, p0, p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->i:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;

    .line 53
    .line 54
    new-instance p1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;

    .line 55
    .line 56
    invoke-direct {p1, p0, p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->j:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;

    .line 60
    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 67
    .line 68
    new-instance p1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;

    .line 69
    .line 70
    invoke-direct {p1, p0, p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->l:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;

    .line 74
    .line 75
    sget-object p1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 76
    .line 77
    new-instance p2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;

    .line 78
    .line 79
    invoke-direct {p2, p1, p0, p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;-><init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 80
    .line 81
    .line 82
    iput-object p2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->m:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;

    .line 83
    .line 84
    new-instance p1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;

    .line 85
    .line 86
    invoke-direct {p1, p0, p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->n:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;

    .line 90
    .line 91
    new-instance p1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;

    .line 92
    .line 93
    invoke-direct {p1, p0, p0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->o:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;

    .line 97
    .line 98
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->p:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 104
    .line 105
    return-void
.end method

.method public static h(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIIII)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->o:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    sget-object v3, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 7
    .line 8
    aget-object v2, v3, v2

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v13, v1

    .line 23
    check-cast v13, Lio/sentry/SentryReplayEvent$ReplayType;

    .line 24
    .line 25
    iget-object v14, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 26
    .line 27
    iget-object v1, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->l:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    aget-object v2, v3, v2

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object/from16 v17, v1

    .line 45
    .line 46
    check-cast v17, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v1, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->p:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 49
    .line 50
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v4, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->b:Lio/sentry/IScopes;

    .line 60
    .line 61
    iget-object v5, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 62
    .line 63
    const/16 v18, 0x0

    .line 64
    .line 65
    move-wide/from16 v6, p1

    .line 66
    .line 67
    move-object/from16 v8, p3

    .line 68
    .line 69
    move-object/from16 v9, p4

    .line 70
    .line 71
    move/from16 v10, p5

    .line 72
    .line 73
    move/from16 v11, p6

    .line 74
    .line 75
    move/from16 v12, p7

    .line 76
    .line 77
    move/from16 v15, p8

    .line 78
    .line 79
    move/from16 v16, p9

    .line 80
    .line 81
    move-object/from16 v19, v1

    .line 82
    .line 83
    invoke-static/range {v4 .. v19}, Lio/sentry/android/replay/capture/CaptureStrategy$Companion;->a(Lio/sentry/IScopes;Lio/sentry/SentryOptions;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/ReplayCache;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->k()Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_e

    .line 10
    .line 11
    iget-object v3, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->f:Lio/sentry/android/replay/gestures/ReplayGestureConverter;

    .line 12
    .line 13
    iget-object v4, v3, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->a:Lio/sentry/transport/ICurrentDateProvider;

    .line 14
    .line 15
    iget-object v5, v3, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->b:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    iget v6, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->d:F

    .line 18
    .line 19
    iget v2, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->c:F

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    const/16 v8, 0xa

    .line 26
    .line 27
    const/4 v9, -0x1

    .line 28
    const/4 v10, 0x0

    .line 29
    if-eqz v7, :cond_c

    .line 30
    .line 31
    const/4 v12, 0x1

    .line 32
    if-eq v7, v12, :cond_a

    .line 33
    .line 34
    const/4 v12, 0x2

    .line 35
    if-eq v7, v12, :cond_2

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    if-eq v7, v3, :cond_1

    .line 39
    .line 40
    const/4 v3, 0x5

    .line 41
    if-eq v7, v3, :cond_c

    .line 42
    .line 43
    const/4 v3, 0x6

    .line 44
    if-eq v7, v3, :cond_a

    .line 45
    .line 46
    :cond_0
    :goto_0
    const/4 v11, 0x0

    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lio/sentry/rrweb/RRWebInteractionEvent;

    .line 53
    .line 54
    invoke-direct {v3}, Lio/sentry/rrweb/RRWebInteractionEvent;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v4}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    iput-wide v4, v3, Lio/sentry/rrweb/RRWebEvent;->k:J

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    mul-float/2addr v4, v2

    .line 68
    iput v4, v3, Lio/sentry/rrweb/RRWebInteractionEvent;->o:F

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    mul-float/2addr v1, v6

    .line 75
    iput v1, v3, Lio/sentry/rrweb/RRWebInteractionEvent;->p:F

    .line 76
    .line 77
    iput v10, v3, Lio/sentry/rrweb/RRWebInteractionEvent;->n:I

    .line 78
    .line 79
    iput v10, v3, Lio/sentry/rrweb/RRWebInteractionEvent;->r:I

    .line 80
    .line 81
    sget-object v1, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchCancel:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 82
    .line 83
    iput-object v1, v3, Lio/sentry/rrweb/RRWebInteractionEvent;->m:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 84
    .line 85
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_2
    invoke-interface {v4}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 92
    .line 93
    .line 94
    move-result-wide v12

    .line 95
    iget-wide v14, v3, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->d:J

    .line 96
    .line 97
    const-wide/16 v10, 0x0

    .line 98
    .line 99
    cmp-long v4, v14, v10

    .line 100
    .line 101
    if-eqz v4, :cond_3

    .line 102
    .line 103
    const-wide/16 v16, 0x32

    .line 104
    .line 105
    add-long v14, v14, v16

    .line 106
    .line 107
    cmp-long v4, v14, v12

    .line 108
    .line 109
    if-lez v4, :cond_3

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    iput-wide v12, v3, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->d:J

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    check-cast v4, Ljava/lang/Iterable;

    .line 122
    .line 123
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-eqz v14, :cond_6

    .line 132
    .line 133
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    check-cast v14, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    if-ne v15, v9, :cond_4

    .line 151
    .line 152
    move-wide/from16 v17, v10

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    move-wide/from16 v17, v10

    .line 156
    .line 157
    iget-wide v9, v3, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->c:J

    .line 158
    .line 159
    cmp-long v9, v9, v17

    .line 160
    .line 161
    if-nez v9, :cond_5

    .line 162
    .line 163
    iput-wide v12, v3, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->c:J

    .line 164
    .line 165
    :cond_5
    invoke-virtual {v5, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    check-cast v9, Ljava/util/Collection;

    .line 173
    .line 174
    new-instance v10, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;

    .line 175
    .line 176
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getX(I)F

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    mul-float/2addr v11, v2

    .line 184
    iput v11, v10, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->k:F

    .line 185
    .line 186
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getY(I)F

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    mul-float/2addr v11, v6

    .line 191
    iput v11, v10, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->l:F

    .line 192
    .line 193
    const/4 v11, 0x0

    .line 194
    iput v11, v10, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->j:I

    .line 195
    .line 196
    iget-wide v14, v3, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->c:J

    .line 197
    .line 198
    sub-long v14, v12, v14

    .line 199
    .line 200
    iput-wide v14, v10, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->m:J

    .line 201
    .line 202
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :goto_2
    move-wide/from16 v10, v17

    .line 206
    .line 207
    const/4 v9, -0x1

    .line 208
    goto :goto_1

    .line 209
    :cond_6
    move-wide/from16 v17, v10

    .line 210
    .line 211
    iget-wide v1, v3, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->c:J

    .line 212
    .line 213
    sub-long v1, v12, v1

    .line 214
    .line 215
    const-wide/16 v9, 0x1f4

    .line 216
    .line 217
    cmp-long v4, v1, v9

    .line 218
    .line 219
    if-lez v4, :cond_0

    .line 220
    .line 221
    new-instance v11, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/util/AbstractMap;->size()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_9

    .line 243
    .line 244
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    check-cast v6, Ljava/util/Map$Entry;

    .line 249
    .line 250
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    check-cast v7, Ljava/lang/Number;

    .line 255
    .line 256
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    check-cast v6, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    if-nez v9, :cond_7

    .line 271
    .line 272
    new-instance v9, Lio/sentry/rrweb/RRWebInteractionMoveEvent;

    .line 273
    .line 274
    invoke-direct {v9}, Lio/sentry/rrweb/RRWebInteractionMoveEvent;-><init>()V

    .line 275
    .line 276
    .line 277
    iput-wide v12, v9, Lio/sentry/rrweb/RRWebEvent;->k:J

    .line 278
    .line 279
    new-instance v10, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 282
    .line 283
    .line 284
    move-result v14

    .line 285
    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v14

    .line 296
    if-eqz v14, :cond_8

    .line 297
    .line 298
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v14

    .line 302
    check-cast v14, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;

    .line 303
    .line 304
    move-object/from16 p1, v9

    .line 305
    .line 306
    iget-wide v8, v14, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->m:J

    .line 307
    .line 308
    sub-long/2addr v8, v1

    .line 309
    iput-wide v8, v14, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Position;->m:J

    .line 310
    .line 311
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-object/from16 v9, p1

    .line 315
    .line 316
    const/16 v8, 0xa

    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_8
    move-object v8, v9

    .line 320
    iput-object v10, v8, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->n:Ljava/util/List;

    .line 321
    .line 322
    iput v7, v8, Lio/sentry/rrweb/RRWebInteractionMoveEvent;->m:I

    .line 323
    .line 324
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    check-cast v6, Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 341
    .line 342
    .line 343
    const/16 v8, 0xa

    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_9
    move-wide/from16 v6, v17

    .line 347
    .line 348
    iput-wide v6, v3, Lio/sentry/android/replay/gestures/ReplayGestureConverter;->c:J

    .line 349
    .line 350
    goto/16 :goto_5

    .line 351
    .line 352
    :cond_a
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    const/4 v9, -0x1

    .line 365
    if-ne v8, v9, :cond_b

    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    invoke-virtual {v5, v7}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    new-instance v5, Lio/sentry/rrweb/RRWebInteractionEvent;

    .line 377
    .line 378
    invoke-direct {v5}, Lio/sentry/rrweb/RRWebInteractionEvent;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-interface {v4}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 382
    .line 383
    .line 384
    move-result-wide v9

    .line 385
    iput-wide v9, v5, Lio/sentry/rrweb/RRWebEvent;->k:J

    .line 386
    .line 387
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    mul-float/2addr v4, v2

    .line 392
    iput v4, v5, Lio/sentry/rrweb/RRWebInteractionEvent;->o:F

    .line 393
    .line 394
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    mul-float/2addr v1, v6

    .line 399
    iput v1, v5, Lio/sentry/rrweb/RRWebInteractionEvent;->p:F

    .line 400
    .line 401
    const/4 v11, 0x0

    .line 402
    iput v11, v5, Lio/sentry/rrweb/RRWebInteractionEvent;->n:I

    .line 403
    .line 404
    iput v3, v5, Lio/sentry/rrweb/RRWebInteractionEvent;->r:I

    .line 405
    .line 406
    sget-object v1, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchEnd:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 407
    .line 408
    iput-object v1, v5, Lio/sentry/rrweb/RRWebInteractionEvent;->m:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 409
    .line 410
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 411
    .line 412
    .line 413
    move-result-object v11

    .line 414
    goto :goto_5

    .line 415
    :cond_c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    const/4 v9, -0x1

    .line 428
    if-ne v8, v9, :cond_d

    .line 429
    .line 430
    goto/16 :goto_0

    .line 431
    .line 432
    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    new-instance v9, Ljava/util/ArrayList;

    .line 437
    .line 438
    const/16 v15, 0xa

    .line 439
    .line 440
    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    .line 442
    .line 443
    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    new-instance v5, Lio/sentry/rrweb/RRWebInteractionEvent;

    .line 447
    .line 448
    invoke-direct {v5}, Lio/sentry/rrweb/RRWebInteractionEvent;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-interface {v4}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 452
    .line 453
    .line 454
    move-result-wide v9

    .line 455
    iput-wide v9, v5, Lio/sentry/rrweb/RRWebEvent;->k:J

    .line 456
    .line 457
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    mul-float/2addr v4, v2

    .line 462
    iput v4, v5, Lio/sentry/rrweb/RRWebInteractionEvent;->o:F

    .line 463
    .line 464
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    mul-float/2addr v1, v6

    .line 469
    iput v1, v5, Lio/sentry/rrweb/RRWebInteractionEvent;->p:F

    .line 470
    .line 471
    const/4 v11, 0x0

    .line 472
    iput v11, v5, Lio/sentry/rrweb/RRWebInteractionEvent;->n:I

    .line 473
    .line 474
    iput v3, v5, Lio/sentry/rrweb/RRWebInteractionEvent;->r:I

    .line 475
    .line 476
    sget-object v1, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchStart:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 477
    .line 478
    iput-object v1, v5, Lio/sentry/rrweb/RRWebInteractionEvent;->m:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 479
    .line 480
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 481
    .line 482
    .line 483
    move-result-object v11

    .line 484
    :goto_5
    if-eqz v11, :cond_e

    .line 485
    .line 486
    iget-object v0, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->p:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 487
    .line 488
    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt;->g(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 489
    .line 490
    .line 491
    :cond_e
    return-void
.end method

.method public e(ILio/sentry/protocol/SentryId;Lio/sentry/SentryReplayEvent$ReplayType;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/android/replay/ReplayCache;

    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 7
    .line 8
    invoke-direct {v0, v1, p2}, Lio/sentry/android/replay/ReplayCache;-><init>(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    sget-object v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 15
    .line 16
    aget-object v0, v1, v0

    .line 17
    .line 18
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->m:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "Failed to execute task CaptureStrategy.runInBackground"

    .line 37
    .line 38
    const-string v5, "CaptureStrategy.runInBackground"

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;

    .line 43
    .line 44
    iget-object v6, v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;->c:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 45
    .line 46
    invoke-direct {v3, v0, p2, v6}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;->b:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 50
    .line 51
    iget-object v0, p2, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 52
    .line 53
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2}, Lio/sentry/util/thread/IThreadChecker;->c()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    iget-object p2, p2, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->e:Lkotlin/Lazy;

    .line 64
    .line 65
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    .line 71
    new-instance v0, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 72
    .line 73
    new-instance v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$1;

    .line 74
    .line 75
    invoke-direct {v2, v3}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v2, v5}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p2

    .line 90
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 95
    .line 96
    invoke-interface {v0, v2, v4, p2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->l(I)V

    .line 100
    .line 101
    .line 102
    if-nez p3, :cond_3

    .line 103
    .line 104
    instance-of p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 105
    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    sget-object p3, Lio/sentry/SentryReplayEvent$ReplayType;->SESSION:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    sget-object p3, Lio/sentry/SentryReplayEvent$ReplayType;->BUFFER:Lio/sentry/SentryReplayEvent$ReplayType;

    .line 112
    .line 113
    :cond_3
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x5

    .line 117
    aget-object p1, v1, p1

    .line 118
    .line 119
    iget-object p2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->o:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;

    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-object p1, p2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    .line 129
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    new-instance v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3$2;

    .line 140
    .line 141
    iget-object v1, p2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;->c:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 142
    .line 143
    invoke-direct {v0, p1, p3, v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3$2;-><init>(Ljava/lang/Object;Lio/sentry/SentryReplayEvent$ReplayType;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3;->b:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 147
    .line 148
    iget-object p2, p1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 149
    .line 150
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-interface {p3}, Lio/sentry/util/thread/IThreadChecker;->c()Z

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    if-eqz p3, :cond_4

    .line 159
    .line 160
    iget-object p1, p1, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->e:Lkotlin/Lazy;

    .line 161
    .line 162
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 167
    .line 168
    new-instance p2, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 169
    .line 170
    new-instance p3, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3$1;

    .line 171
    .line 172
    invoke-direct {p3, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3$2;)V

    .line 173
    .line 174
    .line 175
    invoke-direct {p2, p3, v5}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$3$2;->a()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :catchall_1
    move-exception p1

    .line 187
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 192
    .line 193
    invoke-interface {p2, p3, v4, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    :cond_5
    :goto_2
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->n(Ljava/util/Date;)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->c:Lio/sentry/transport/ICurrentDateProvider;

    .line 204
    .line 205
    invoke-interface {p1}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 206
    .line 207
    .line 208
    move-result-wide p1

    .line 209
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 210
    .line 211
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final i()Lio/sentry/protocol/SentryId;
    .locals 2

    .line 1
    sget-object v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->m:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lio/sentry/protocol/SentryId;

    .line 21
    .line 22
    return-object p0
.end method

.method public final j()I
    .locals 2

    .line 1
    sget-object v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->n:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final k()Lio/sentry/android/replay/ScreenshotRecorderConfig;
    .locals 2

    .line 1
    sget-object v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->i:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 21
    .line 22
    return-object p0
.end method

.method public final l(I)V
    .locals 3

    .line 1
    sget-object v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->n:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$2;

    .line 31
    .line 32
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;->c:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 33
    .line 34
    invoke-direct {v1, v0, p1, v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$2;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2;->b:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 38
    .line 39
    iget-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 40
    .line 41
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->c()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->e:Lkotlin/Lazy;

    .line 52
    .line 53
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    .line 59
    new-instance p1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 60
    .line 61
    new-instance v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$1;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$2;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "CaptureStrategy.runInBackground"

    .line 67
    .line 68
    invoke-direct {p1, v0, v1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$2$2;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 85
    .line 86
    const-string v1, "Failed to execute task CaptureStrategy.runInBackground"

    .line 87
    .line 88
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method

.method public final m(Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 3

    .line 1
    sget-object v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->i:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;

    .line 27
    .line 28
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;->c:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 29
    .line 30
    invoke-direct {v1, v0, p1, v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1;->b:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 34
    .line 35
    iget-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->c()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->e:Lkotlin/Lazy;

    .line 48
    .line 49
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    .line 55
    new-instance p1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 56
    .line 57
    new-instance v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$1;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "CaptureStrategy.runInBackground"

    .line 63
    .line 64
    invoke-direct {p1, v0, v1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$1$2;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 81
    .line 82
    const-string v1, "Failed to execute task CaptureStrategy.runInBackground"

    .line 83
    .line 84
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method public final n(Ljava/util/Date;)V
    .locals 3

    .line 1
    sget-object v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->j:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2$2;

    .line 27
    .line 28
    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;->c:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 29
    .line 30
    invoke-direct {v1, v0, p1, v2}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2;->b:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 34
    .line 35
    iget-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->c()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->e:Lkotlin/Lazy;

    .line 48
    .line 49
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    .line 55
    new-instance p1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 56
    .line 57
    new-instance v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2$1;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2$2;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "CaptureStrategy.runInBackground"

    .line 63
    .line 64
    invoke-direct {p1, v0, v1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$2$2;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 81
    .line 82
    const-string v1, "Failed to execute task CaptureStrategy.runInBackground"

    .line 83
    .line 84
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method
