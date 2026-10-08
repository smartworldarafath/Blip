.class public abstract Lnet/blip/android/ui/util/LaunchersKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/lang/String;Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/SuspendingPermissionState;
    .locals 6

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 9
    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x7

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v3, v0, v1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    check-cast v0, Lkotlinx/coroutines/channels/Channel;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    if-ne v4, v2, :cond_2

    .line 34
    .line 35
    :cond_1
    new-instance v4, Lnet/blip/android/ui/util/a;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v4, v3, v0}, Lnet/blip/android/ui/util/a;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    invoke-static {p0, v4, p1}, Lcom/google/accompanist/permissions/PermissionStateKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Lcom/google/accompanist/permissions/PermissionState;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Lcom/google/accompanist/permissions/PermissionState;->a()Lcom/google/accompanist/permissions/PermissionStatus;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    or-int/2addr v4, v5

    .line 63
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    if-ne v5, v2, :cond_4

    .line 70
    .line 71
    :cond_3
    new-instance v5, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;

    .line 72
    .line 73
    invoke-direct {v5, p0, v0, v1}, Lnet/blip/android/ui/util/LaunchersKt$rememberSuspendingPermissionState$1$1;-><init>(Lcom/google/accompanist/permissions/PermissionState;Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 80
    .line 81
    new-instance p0, Lnet/blip/android/ui/util/SuspendingPermissionState;

    .line 82
    .line 83
    invoke-direct {p0, v3, v5}, Lnet/blip/android/ui/util/SuspendingPermissionState;-><init>(Lcom/google/accompanist/permissions/PermissionStatus;Lkotlin/jvm/functions/Function1;)V

    .line 84
    .line 85
    .line 86
    return-object p0
.end method
