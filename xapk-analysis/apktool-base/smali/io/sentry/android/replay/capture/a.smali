.class public final synthetic Lio/sentry/android/replay/capture/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:J

.field public final synthetic l:Ljava/util/Date;

.field public final synthetic m:Lio/sentry/protocol/SentryId;

.field public final synthetic n:Lio/sentry/android/replay/ScreenshotRecorderConfig;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lio/sentry/android/replay/capture/BaseCaptureStrategy;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p8, p0, Lio/sentry/android/replay/capture/a;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/android/replay/capture/a;->p:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 4
    .line 5
    iput-wide p2, p0, Lio/sentry/android/replay/capture/a;->k:J

    .line 6
    .line 7
    iput-object p4, p0, Lio/sentry/android/replay/capture/a;->l:Ljava/util/Date;

    .line 8
    .line 9
    iput-object p5, p0, Lio/sentry/android/replay/capture/a;->m:Lio/sentry/protocol/SentryId;

    .line 10
    .line 11
    iput-object p6, p0, Lio/sentry/android/replay/capture/a;->n:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 12
    .line 13
    iput-object p7, p0, Lio/sentry/android/replay/capture/a;->o:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lio/sentry/android/replay/capture/a;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/replay/capture/a;->o:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/android/replay/capture/a;->n:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 6
    .line 7
    iget-object v3, p0, Lio/sentry/android/replay/capture/a;->p:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v4, v3

    .line 13
    check-cast v4, Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 14
    .line 15
    sget v0, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->u:I

    .line 16
    .line 17
    invoke-virtual {v4}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->j()I

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    iget v10, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->b:I

    .line 22
    .line 23
    iget v11, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->a:I

    .line 24
    .line 25
    iget v12, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->e:I

    .line 26
    .line 27
    iget v13, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->f:I

    .line 28
    .line 29
    iget-wide v5, p0, Lio/sentry/android/replay/capture/a;->k:J

    .line 30
    .line 31
    iget-object v7, p0, Lio/sentry/android/replay/capture/a;->l:Ljava/util/Date;

    .line 32
    .line 33
    iget-object v8, p0, Lio/sentry/android/replay/capture/a;->m:Lio/sentry/protocol/SentryId;

    .line 34
    .line 35
    invoke-static/range {v4 .. v13}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIIII)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    check-cast v3, Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 44
    .line 45
    sget v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->w:I

    .line 46
    .line 47
    invoke-virtual {v3}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->j()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    iget v8, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->b:I

    .line 52
    .line 53
    iget v9, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->a:I

    .line 54
    .line 55
    iget v10, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->e:I

    .line 56
    .line 57
    iget v11, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->f:I

    .line 58
    .line 59
    move-object v2, v3

    .line 60
    iget-wide v3, p0, Lio/sentry/android/replay/capture/a;->k:J

    .line 61
    .line 62
    iget-object v5, p0, Lio/sentry/android/replay/capture/a;->l:Ljava/util/Date;

    .line 63
    .line 64
    iget-object v6, p0, Lio/sentry/android/replay/capture/a;->m:Lio/sentry/protocol/SentryId;

    .line 65
    .line 66
    invoke-static/range {v2 .. v11}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h(Lio/sentry/android/replay/capture/BaseCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIIII)Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
