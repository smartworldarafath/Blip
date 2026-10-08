.class final Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Landroid/app/Notification;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$7"
    f = "NotificationFactory.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic p:Lnet/blip/android/notifications/NotificationFactory;

.field public final synthetic q:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lnet/blip/android/notifications/NotificationFactory;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->o:Lkotlin/jvm/internal/Ref$LongRef;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->p:Lnet/blip/android/notifications/NotificationFactory;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->q:Lkotlin/jvm/internal/Ref$LongRef;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Pair;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->p:Lnet/blip/android/notifications/NotificationFactory;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->q:Lkotlin/jvm/internal/Ref$LongRef;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->o:Lkotlin/jvm/internal/Ref$LongRef;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lnet/blip/android/notifications/NotificationFactory;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->n:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/Pair;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, v0, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroid/app/Notification;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const p1, 0x7f08011a

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->p:Lnet/blip/android/notifications/NotificationFactory;

    .line 29
    .line 30
    iget-object v0, v0, Lnet/blip/android/notifications/NotificationFactory;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    instance-of v2, p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object p1, v3

    .line 49
    :goto_1
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/4 v3, 0x0

    .line 57
    move-wide v4, v0

    .line 58
    :goto_2
    if-ge v3, v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    int-to-long v6, v6

    .line 65
    add-long/2addr v4, v6

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :goto_3
    if-eqz v3, :cond_4

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    :cond_4
    iget-object p1, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->o:Lkotlin/jvm/internal/Ref$LongRef;

    .line 80
    .line 81
    iput-wide v0, p1, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 82
    .line 83
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    iget-object p0, p0, Lnet/blip/android/notifications/NotificationFactory$transferWorkerNotificationFlow$1$7;->q:Lkotlin/jvm/internal/Ref$LongRef;

    .line 92
    .line 93
    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 94
    .line 95
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p0
.end method
