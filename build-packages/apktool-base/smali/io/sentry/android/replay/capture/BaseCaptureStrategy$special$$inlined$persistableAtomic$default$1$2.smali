.class public final Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lio/sentry/android/replay/capture/BaseCaptureStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;->k:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;->m:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;->m:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 2
    .line 3
    iget-object v0, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "replay.id"

    .line 8
    .line 9
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomic$default$1$2;->l:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, v1, p0}, Lio/sentry/android/replay/ReplayCache;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method
