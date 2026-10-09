.class public final synthetic Lli;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:J

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lli;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lli;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Lli;->m:I

    .line 10
    .line 11
    iput-wide p3, p0, Lli;->l:J

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JII)V
    .locals 0

    .line 14
    iput p5, p0, Lli;->j:I

    iput-object p1, p0, Lli;->k:Ljava/lang/Object;

    iput-wide p2, p0, Lli;->l:J

    iput p4, p0, Lli;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lli;->j:I

    .line 2
    .line 3
    iget v1, p0, Lli;->m:I

    .line 4
    .line 5
    iget-wide v2, p0, Lli;->l:J

    .line 6
    .line 7
    iget-object p0, p0, Lli;->k:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

    .line 13
    .line 14
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->k:Lio/sentry/ScopesAdapter;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lio/sentry/Breadcrumb;

    .line 19
    .line 20
    invoke-direct {v0, v2, v3}, Lio/sentry/Breadcrumb;-><init>(J)V

    .line 21
    .line 22
    .line 23
    const-string v2, "system"

    .line 24
    .line 25
    iput-object v2, v0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "device.event"

    .line 28
    .line 29
    iput-object v2, v0, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "Low memory"

    .line 32
    .line 33
    iput-object v2, v0, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "action"

    .line 36
    .line 37
    const-string v3, "LOW_MEMORY"

    .line 38
    .line 39
    invoke-virtual {v0, v3, v2}, Lio/sentry/Breadcrumb;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "level"

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1, v2}, Lio/sentry/Breadcrumb;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 52
    .line 53
    iput-object v1, v0, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 54
    .line 55
    iget-object p0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->k:Lio/sentry/ScopesAdapter;

    .line 56
    .line 57
    sget-object v1, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->n:Lio/sentry/Hint;

    .line 58
    .line 59
    invoke-virtual {p0, v0, v1}, Lio/sentry/ScopesAdapter;->a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void

    .line 63
    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 64
    .line 65
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 66
    .line 67
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->j(IJ)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 74
    .line 75
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 76
    .line 77
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {p0, v1, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->n(IJ)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
