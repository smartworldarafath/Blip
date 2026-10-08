.class public final Lio/sentry/android/replay/ReplayLifecycle;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/ReplayLifecycle$WhenMappings;
    }
.end annotation


# instance fields
.field public volatile a:Lio/sentry/android/replay/ReplayState;


# virtual methods
.method public final a(Lio/sentry/android/replay/ReplayState;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lio/sentry/android/replay/ReplayLifecycle;->a:Lio/sentry/android/replay/ReplayState;

    .line 5
    .line 6
    sget-object v0, Lio/sentry/android/replay/ReplayLifecycle$WhenMappings;->a:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v0, p0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    packed-switch p0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lk8;->e()V

    .line 20
    .line 21
    .line 22
    :pswitch_0
    return v1

    .line 23
    :pswitch_1
    sget-object p0, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    .line 24
    .line 25
    if-eq p1, p0, :cond_1

    .line 26
    .line 27
    sget-object p0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    .line 28
    .line 29
    if-ne p1, p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return v1

    .line 33
    :cond_1
    :goto_0
    return v0

    .line 34
    :pswitch_2
    sget-object p0, Lio/sentry/android/replay/ReplayState;->RESUMED:Lio/sentry/android/replay/ReplayState;

    .line 35
    .line 36
    if-eq p1, p0, :cond_3

    .line 37
    .line 38
    sget-object p0, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    .line 39
    .line 40
    if-eq p1, p0, :cond_3

    .line 41
    .line 42
    sget-object p0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    .line 43
    .line 44
    if-ne p1, p0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    return v1

    .line 48
    :cond_3
    :goto_1
    return v0

    .line 49
    :pswitch_3
    sget-object p0, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    .line 50
    .line 51
    if-eq p1, p0, :cond_5

    .line 52
    .line 53
    sget-object p0, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    .line 54
    .line 55
    if-eq p1, p0, :cond_5

    .line 56
    .line 57
    sget-object p0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    .line 58
    .line 59
    if-ne p1, p0, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    return v1

    .line 63
    :cond_5
    :goto_2
    return v0

    .line 64
    :pswitch_4
    sget-object p0, Lio/sentry/android/replay/ReplayState;->PAUSED:Lio/sentry/android/replay/ReplayState;

    .line 65
    .line 66
    if-eq p1, p0, :cond_7

    .line 67
    .line 68
    sget-object p0, Lio/sentry/android/replay/ReplayState;->STOPPED:Lio/sentry/android/replay/ReplayState;

    .line 69
    .line 70
    if-eq p1, p0, :cond_7

    .line 71
    .line 72
    sget-object p0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    .line 73
    .line 74
    if-ne p1, p0, :cond_6

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_6
    return v1

    .line 78
    :cond_7
    :goto_3
    return v0

    .line 79
    :pswitch_5
    sget-object p0, Lio/sentry/android/replay/ReplayState;->STARTED:Lio/sentry/android/replay/ReplayState;

    .line 80
    .line 81
    if-eq p1, p0, :cond_9

    .line 82
    .line 83
    sget-object p0, Lio/sentry/android/replay/ReplayState;->CLOSED:Lio/sentry/android/replay/ReplayState;

    .line 84
    .line 85
    if-ne p1, p0, :cond_8

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_8
    return v1

    .line 89
    :cond_9
    :goto_4
    return v0

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
