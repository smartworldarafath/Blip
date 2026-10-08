.class public final synthetic Lmi;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:J

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmi;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lmi;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lmi;->m:Ljava/lang/Object;

    .line 10
    .line 11
    iput-wide p3, p0, Lmi;->k:J

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;JLandroid/content/res/Configuration;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lmi;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi;->l:Ljava/lang/Object;

    iput-wide p2, p0, Lmi;->k:J

    iput-object p4, p0, Lmi;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lmi;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lmi;->m:Ljava/lang/Object;

    .line 4
    .line 5
    iget-wide v2, p0, Lmi;->k:J

    .line 6
    .line 7
    iget-object p0, p0, Lmi;->l:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

    .line 13
    .line 14
    check-cast v1, Landroid/content/res/Configuration;

    .line 15
    .line 16
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->k:Lio/sentry/ScopesAdapter;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->j:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v0, v4, :cond_1

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    if-eq v0, v4, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->LANDSCAPE:Lio/sentry/protocol/Device$DeviceOrientation;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->PORTRAIT:Lio/sentry/protocol/Device$DeviceOrientation;

    .line 44
    .line 45
    :goto_0
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const-string v0, "undefined"

    .line 59
    .line 60
    :goto_1
    new-instance v4, Lio/sentry/Breadcrumb;

    .line 61
    .line 62
    invoke-direct {v4, v2, v3}, Lio/sentry/Breadcrumb;-><init>(J)V

    .line 63
    .line 64
    .line 65
    const-string v2, "navigation"

    .line 66
    .line 67
    iput-object v2, v4, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, "device.orientation"

    .line 70
    .line 71
    iput-object v2, v4, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 72
    .line 73
    const-string v2, "position"

    .line 74
    .line 75
    invoke-virtual {v4, v0, v2}, Lio/sentry/Breadcrumb;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 79
    .line 80
    iput-object v0, v4, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 81
    .line 82
    new-instance v0, Lio/sentry/Hint;

    .line 83
    .line 84
    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "android:configuration"

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lio/sentry/Hint;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->k:Lio/sentry/ScopesAdapter;

    .line 93
    .line 94
    invoke-virtual {p0, v4, v0}, Lio/sentry/ScopesAdapter;->a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void

    .line 98
    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 99
    .line 100
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 101
    .line 102
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 103
    .line 104
    invoke-interface {p0, v2, v3, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->B(JLjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
