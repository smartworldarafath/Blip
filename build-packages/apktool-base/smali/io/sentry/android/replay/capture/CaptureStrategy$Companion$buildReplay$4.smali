.class final Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/rrweb/RRWebEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Ljava/util/Date;

.field public final synthetic l:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;->k:Ljava/util/Date;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;->l:Ljava/util/ArrayList;

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
    .locals 4

    .line 1
    check-cast p1, Lio/sentry/rrweb/RRWebEvent;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-wide v0, p1, Lio/sentry/rrweb/RRWebEvent;->k:J

    .line 7
    .line 8
    iget-object v2, p0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;->k:Ljava/util/Date;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lio/sentry/android/replay/capture/CaptureStrategy$Companion$buildReplay$4;->l:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method
