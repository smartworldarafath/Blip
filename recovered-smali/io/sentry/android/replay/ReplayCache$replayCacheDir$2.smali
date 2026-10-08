.class final Lio/sentry/android/replay/ReplayCache$replayCacheDir$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lio/sentry/android/replay/ReplayCache;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/ReplayCache;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/ReplayCache$replayCacheDir$2;->k:Lio/sentry/android/replay/ReplayCache;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/ReplayCache$replayCacheDir$2;->k:Lio/sentry/android/replay/ReplayCache;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/android/replay/ReplayCache;->j:Lio/sentry/SentryOptions;

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/android/replay/ReplayCache;->k:Lio/sentry/protocol/SentryId;

    .line 6
    .line 7
    invoke-static {v0, p0}, Lio/sentry/android/replay/ReplayCache$Companion;->a(Lio/sentry/SentryOptions;Lio/sentry/protocol/SentryId;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
