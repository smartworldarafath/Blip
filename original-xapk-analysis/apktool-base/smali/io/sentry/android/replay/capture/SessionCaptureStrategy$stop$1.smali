.class final Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

.field public final synthetic l:Ljava/io/File;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/capture/SessionCaptureStrategy;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;->k:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;->l:Ljava/io/File;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;->k:Lio/sentry/android/replay/capture/SessionCaptureStrategy;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 13
    .line 14
    iget-object v0, v1, Lio/sentry/android/replay/capture/SessionCaptureStrategy;->s:Lio/sentry/IScopes;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->a(Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;Lio/sentry/IScopes;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, -0x1

    .line 20
    invoke-virtual {v1, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->l(I)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lio/sentry/android/replay/capture/SessionCaptureStrategy$stop$1;->l:Ljava/io/File;

    .line 24
    .line 25
    invoke-static {p0}, Lio/sentry/util/FileUtils;->a(Ljava/io/File;)Z

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
